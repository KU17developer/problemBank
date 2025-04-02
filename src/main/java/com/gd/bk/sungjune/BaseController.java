package com.gd.bk.sungjune;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gd.bk.common.quiz.model.dto.Chapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.net.ssl.HttpsURLConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;
import java.util.stream.Collectors;

@Slf4j
@Controller
public class BaseController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/sub01")
    public String sub01(@RequestParam String subjectId, Model model) {
        Map<String,Map<String,Object>> examList = getExamList(subjectId);
        Map<String,Object> chapter = getChapterList(subjectId);
//        Map<String,List<Long>> itemIdList = getItemId((List<Chapter>)chapter.get("chapterList"));

        List<Chapter> chapterList = (List<Chapter>)chapter.get("chapterList");
        Map<String,Map<String,Map<String,List<String>>>> chapterMap = (Map<String,Map<String,Map<String,List<String>>>>)chapter.get("chapterMap");

        ObjectMapper objectMapper = new ObjectMapper();
        try{
            String jsonString = objectMapper.writeValueAsString(chapterList);
            model.addAttribute("jsonChapList",jsonString);
        }catch(Exception e){
            e.printStackTrace();
        }

        model.addAttribute("examList",examList);
        model.addAttribute("chapterList",chapterList);
        model.addAttribute("chapterMap",chapterMap);

        return "quizbank/sub01";
    }

    @RequestMapping("/sub02")
    public String sub02(@RequestParam String subjectId, Model model){
        Map<String,Object> chapter = getChapterList(subjectId);
        Object eTemp = evaluationlist(subjectId);

        String sb = chapter.get("sb").toString();
        List<Chapter> chapterList = (List<Chapter>)chapter.get("chapterList");
        Map<String,Map<String,Map<String,List<String>>>> chapterMap = (Map<String,Map<String,Map<String,List<String>>>>)chapter.get("chapterMap");

        List<Object> evaluation = null;
        if(eTemp instanceof List){
            evaluation = (List<Object>)eTemp;
        }

        model.addAttribute("sb",sb);
        model.addAttribute("chapterList",chapterList);
        model.addAttribute("chapterMap",chapterMap);
        model.addAttribute("evaluation",evaluation);

        return "quizbank/sub02";
    }

    @RequestMapping("/sub03_01")
    public String sub03_01(){
        return "quizbank/sub03_01";
    }

    // step3 이동용
    @RequestMapping("/sub04_01")
    public String sub04_01(Model model){

        return "quizbank/sub04_01";
    }

    @RequestMapping("/sub04_02")
    public String sub04_02(Model model){

        return "quizbank/sub04_02";
    }

    private Map<String,Object> getChapterList(String subjectId){
        try{
            URL url = new URL("https://tsherpa.item-factory.com/chapter/chapter-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            Map<String, String> params = Map.of("subjectId",subjectId);
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(params);
            byte[] input = json.getBytes();
            connect.getOutputStream().write(input);

            InputStream is = connect.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            int data = 0;
            StringBuilder sb = new StringBuilder();
            while((data=isr.read())!=-1) {
                sb.append((char) data);
            }
            String jsonString = sb.toString();

            ObjectMapper mapper2 = new ObjectMapper();
            Map<String,Object> map = mapper.readValue(jsonString, Map.class);

//            model.addAttribute("map",map);

            System.out.println(map.get("chapterList"));

            Object chapterObject = map.get("chapterList");

            List<Chapter> chapterList = null;

            if(chapterObject instanceof List){
                List<LinkedHashMap<String, Object>> list = (List<LinkedHashMap<String, Object>>)chapterObject;
                chapterList = list.stream().map(item ->
                        Chapter.builder()
                                .curriculumCode((String) item.get("curriculumCode"))
                                .curriculumName((String) item.get("curriculumName"))
                                .largeChapterId(toLong(item.get("largeChapterId")))
                                .largeChapterName((String) item.get("largeChapterName"))
                                .mediumChapterId(toLong(item.get("mediumChapterId")))
                                .mediumChapterName((String) item.get("mediumChapterName"))
                                .smallChapterId(toLong(item.get("smallChapterId")))
                                .smallChapterName((String) item.get("smallChapterName"))
                                .subjectId(toLong(item.get("subjectId")))
                                .subjectName((String) item.get("subjectName"))
                                .topicChapterId(toLong(item.get("topicChapterId")))
                                .topicChapterName((String) item.get("topicChapterName"))
                                .build()
                ).collect(Collectors.toList());

            }

            Map<String,Map<String,Map<String,List<String>>>> chapterMap = new LinkedHashMap<>();
            chapterList.forEach(c->{
                Map<String,Map<String,List<String>>> largeChap = chapterMap.get(c.getLargeChapterName());
                if(largeChap!=null){
                    Map<String,List<String>> mediumChap = largeChap.get(c.getMediumChapterName());
                    if(mediumChap!=null){
                        List<String> smallChap = mediumChap.get(c.getSmallChapterName());
                        if(smallChap!=null) {
                            smallChap.add(c.getTopicChapterName());
                        }else{
                            smallChap = new ArrayList<>();
                            smallChap.add(c.getTopicChapterName());
                            mediumChap.put(c.getSmallChapterName(), smallChap);
                        }
                    }else{
                        mediumChap = new LinkedHashMap<>();
                        List<String> smallChap = new ArrayList<>();
                        smallChap.add(c.getTopicChapterName());
                        mediumChap.put(c.getSmallChapterName(), smallChap);
                        largeChap.put(c.getMediumChapterName(), mediumChap);
                    }
                }else{
                    largeChap = new LinkedHashMap<>();
                    Map<String,List<String>> mediumChap = new LinkedHashMap<>();
                    List<String> smallChap = new ArrayList<>();
                    smallChap.add(c.getTopicChapterName());
                    mediumChap.put(c.getSmallChapterName(), smallChap);
                    largeChap.put(c.getMediumChapterName(), mediumChap);
                    chapterMap.put(c.getLargeChapterName(), largeChap);
                }
            });

            System.out.println(chapterMap);

            Map<String,Object> chapter = Map.of("sb",jsonString,"chapterList",chapterList,"chapterMap",chapterMap);
//            model.addAttribute("chapterMap",chapterMap);
            return chapter;
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }
        return null;
    }

    protected static Object evaluationlist(String subjectId){
        String response = "";
        try{
            URL url = new URL("https://tsherpa.item-factory.com/chapter/evaluation-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            Map<String, Object> params = Map.of("subjectId",subjectId);    // 이거 바꿔야됨
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(params);
            byte[] input = json.getBytes();
            connect.getOutputStream().write(input);

            InputStream is = connect.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            int data = 0;
            StringBuilder sb = new StringBuilder();
            while((data=isr.read())!=-1){
                sb.append((char)data);
            }
            String jsonString = sb.toString();

            ObjectMapper mapper2 = new ObjectMapper();
            Map<String,Object> map = mapper.readValue(jsonString, Map.class);

//            model.addAttribute("map",map);

            System.out.println(map.get("evaluationList"));

            Object evaluationObject = map.get("evaluationList");

            return evaluationObject;
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }

        return null;
    }

    public Map<String,List<Long>> getItemId(List<Chapter> chapterList){
        Object eTemp = evaluationlist(""+chapterList.get(0).getSubjectId());
        List<Map<String,Object>> evaluation = null;
        if(eTemp instanceof List){
            evaluation = (List<Map<String,Object>>)eTemp;
        }

        List<Long> categoryList = new ArrayList<>();
        evaluation.forEach(e->{
            categoryList.add(toLong(e.get("domainId")));
        });

        long smallChap = 0;
        List<Map<String,Object>> minorClassification = new ArrayList<>();
        Map<String,List<Long>> itemIdMap = new HashMap<>();
        String smallChapName = "";
        for(Chapter c : chapterList){
            System.out.println(c.toString());
            if(smallChap==1136080501) {
                System.out.println(c.getTopicChapterId());
                System.out.println(chapterList.get(chapterList.size() - 1).getTopicChapterId());
                System.out.println(c.getTopicChapterId() == chapterList.get(chapterList.size() - 1).getTopicChapterId());
            }
            if(c.getSmallChapterId()!=smallChap || c.getTopicChapterId()==chapterList.get(chapterList.size()-1).getTopicChapterId()){
                if(minorClassification.size()>0){
                    System.out.println(minorClassification);
                    System.out.println(smallChapName);
                    System.out.println(c.getSmallChapterId());
                    if(smallChap==1136080301) {}    // 지금 오류 해결 못해서 이렇게 해놓음
                    else{
                        try{
                            URL url = new URL("https://tsherpa.item-factory.com/item-img/chapters/item-list");
                            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

                            connect.setRequestMethod("POST");
                            connect.setDoOutput(true);
                            connect.setRequestProperty("Content-Type", "application/json");

                            Map<String, Object> params = Map.of("minorClassification",minorClassification,"levelCnt",List.of("30","30","30","30","30"),"questionForm","multiple,subjective","activityCategoryList",categoryList);    // 이거 바꿔야됨

                            System.out.println("어디서");

                            ObjectMapper mapper = new ObjectMapper();
                            String json = mapper.writeValueAsString(params);
                            byte[] input = json.getBytes();
                            connect.getOutputStream().write(input);

                            System.out.println("문제가");

                            InputStream is = connect.getInputStream();
                            System.out.println("여기 앞일듯");
                            InputStreamReader isr = new InputStreamReader(is);
                            int data = 0;
                            StringBuilder sb = new StringBuilder();
                            while((data=isr.read())!=-1){
                                sb.append((char)data);
                            }
                            String jsonString = sb.toString();

                            System.out.println("생기지?");

                            ObjectMapper mapper2 = new ObjectMapper();
                            Map<String,Object> map = mapper.readValue(jsonString, Map.class);

//            model.addAttribute("map",map);

//                        System.out.println(map.get("itemList"));

                            List<Map<String,Object>> itemList = (List<Map<String,Object>>)map.get("itemList");

                            List<Long> itemIdList = new ArrayList<>();
                            itemList.forEach(item->{
                                itemIdList.add(toLong(item.get("itemId")));
                            });
                            itemIdMap.put(smallChapName,itemIdList);

                            System.out.println(itemIdList);
//                        System.out.println(itemIdMap);
                        }catch(MalformedURLException e) {
                            log.error("URL이 잘못되었습니다 : " + e.getMessage());
                        }catch(IOException e){
                            log.error("Connection 에러 : " + e.getMessage());
                        }finally{
                            log.debug("해치웠나?");
                        }
                    }
                }
                smallChap = c.getSmallChapterId();
                minorClassification.clear();
                smallChapName = c.getSmallChapterName();
//                minorClassification.add(Map.of("subject",c.getSubjectId(),"small",c.getSmallChapterId()));
            }
            minorClassification.add(Map.of("subject",c.getSubjectId(),"topic",c.getTopicChapterId()));
        };

        return itemIdMap;
    }

    public Map<String,Map<String,Object>> getExamList(String subjectId){
        String response = "";
        try{
            URL url = new URL("https://tsherpa.item-factory.com/chapter/exam-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            Map<String, Object> params = Map.of("subjectId",subjectId);    // 이거 바꿔야됨
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(params);
            byte[] input = json.getBytes();
            connect.getOutputStream().write(input);

            InputStream is = connect.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            int data = 0;
            StringBuilder sb = new StringBuilder();
            while((data=isr.read())!=-1){
                sb.append((char)data);
            }
            String jsonString = sb.toString();

            ObjectMapper mapper2 = new ObjectMapper();
            Map<String,List<Map<String,Object>>> list = mapper.readValue(jsonString, Map.class);

            Map<String,Map<String,Object>> examList = new LinkedHashMap<>();

            list.get("examList").forEach(exam->{
                Map<String,Object> largeChap = examList.get(exam.get("largeChapterName"));
                if(largeChap!=null){
                    largeChap.put((String)exam.get("examName"),exam);
                }else{
                    largeChap = new LinkedHashMap<>();
                    largeChap.put((String)exam.get("examName"),exam);
                    examList.put((String)exam.get("largeChapterName"),largeChap);
                }
            });

            return examList;
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }

        return null;
    }

    // 😑
    private static Long toLong(Object value) {
        if (value instanceof Integer) {
            return ((Integer) value).longValue();
        } else if (value instanceof Long) {
            return (Long) value;
        } else {
            throw new IllegalArgumentException("값이 Integer나 Long 타입이 아닙니다: " + value);
        }
    }
}



