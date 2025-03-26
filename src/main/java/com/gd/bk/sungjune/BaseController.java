package com.gd.bk.sungjune;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gd.bk.common.quiz.model.dto.Chapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String sub01(Model model) {
        Map<String,Object> chapter = getChapterList();

        List<Chapter> chapterList = (List<Chapter>)chapter.get("chapterList");
        Map<String,Map<String,Map<String,List<String>>>> chapterMap = (Map<String,Map<String,Map<String,List<String>>>>)chapter.get("chapterMap");
        model.addAttribute("chapterList",chapterList);
        model.addAttribute("chapterMap",chapterMap);

        return "quizbank/sub01";
    }

    @RequestMapping("/sub02")
    public String sub02(Model model){
        Map<String,Object> chapter = getChapterList();

        List<Chapter> chapterList = (List<Chapter>)chapter.get("chapterList");
        Map<String,Map<String,Map<String,List<String>>>> chapterMap = (Map<String,Map<String,Map<String,List<String>>>>)chapter.get("chapterMap");
        model.addAttribute("chapterList",chapterList);
        model.addAttribute("chapterMap",chapterMap);

        return "quizbank/sub02";
    }

    private Map<String,Object> getChapterList(){
        try{
            URL url = new URL("https://tsherpa.item-factory.com/chapter/chapter-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            Map<String, String> params = Map.of("subjectId","1136");
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

            Map<String,Object> chapter = Map.of("chapterList",chapterList,"chapterMap",chapterMap);
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



