package com.gd.bk.sungjune;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gd.bk.common.quiz.model.dto.Chapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.net.ssl.HttpsURLConnection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/api")
public class APIController {
    @GetMapping("/chapterlist")
    public ResponseEntity<Object> chapterlist(){
        String response = "";
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
            while((data=isr.read())!=-1){
                sb.append((char)data);
            }
            response = sb.toString();
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }
        return ResponseEntity.ok().body(response);
    }

    // 개발중...
    @GetMapping("/evaluationlist")
    public ResponseEntity<Object> evaluationlist(){
        String response = "";
        try{
            URL url = new URL("https://tsherpa.item-factory.com/chapter/evaluation-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            Map<String, Object> params = Map.of("subjectId","1136");    // 이거 바꿔야됨
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
            response = sb.toString();
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }

        return ResponseEntity.ok().body(response);
    }

    // 개발중...
    @PostMapping("/itemlist")
    public ResponseEntity<Object> itemList(@RequestBody Map<String,Object> itemList){
        System.out.println(itemList.toString());

        String response = "";
        try{
            URL url = new URL("https://tsherpa.item-factory.com/item-img/chapters/item-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(itemList);
            byte[] input = json.getBytes();
            connect.getOutputStream().write(input);

            InputStream is = connect.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            int data = 0;
            StringBuilder sb = new StringBuilder();
            while((data=isr.read())!=-1){
                sb.append((char)data);
            }
            response = sb.toString();

            System.out.println("이거 나옴??????");
            System.out.println(response);
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }

        return ResponseEntity.ok().body(response);
    }

    @PostMapping("/download")
    public ResponseEntity<Object> download(@RequestBody Map<String,Object> downloads){
        try{
            URL url = new URL("https://tsherpa.item-factory.com/exam/tSherpa-download");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            String examId = (String)downloads.get("examId");
            String examName = (String)downloads.get("examName");
            List<Long> itemIdList = (List<Long>)downloads.get("itemIdList");

            System.out.println(examId + examName + itemIdList.toString());
            Map<String, Object> params = Map.of("examId",examId,"examName",examName,"itemIdList",itemIdList);    // 이거 바꿔야됨

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
            Map<String,Object> map = mapper2.readValue(jsonString, Map.class);

            return ResponseEntity.ok().body(map);
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }
        return ResponseEntity.notFound().build();
    }

    @PostMapping("/downloadHwp")
    public ResponseEntity<Object> download(@RequestBody String fileUrl){
        try{
            URL url = new URL(fileUrl);
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("GET");
            connect.setDoOutput(true);

            InputStream is = connect.getInputStream();
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int bytesRead;
            while((bytesRead = is.read(buffer))!=-1){
                bos.write(buffer,0,bytesRead);
            }
            byte[] fileData = bos.toByteArray();

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(org.springframework.http.MediaType.parseMediaType("application/x-hwp"));
            headers.setContentDisposition(org.springframework.http.ContentDisposition.builder("attachment")
                    .filename("downloadedFile.hwp").build());

            return ResponseEntity.ok().headers(headers).body(fileData);
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }
        return ResponseEntity.notFound().build();
    }

    @PostMapping("/preview")
    public ResponseEntity<Object> preview(@RequestBody List<Long> itemIdList){
        try{
            URL url = new URL("https://tsherpa.item-factory.com/item-img/item-list");
            HttpsURLConnection connect = (HttpsURLConnection)url.openConnection();

            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(Map.of("itemIdList",itemIdList));
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
            Map<String,Object> map = mapper2.readValue(jsonString, Map.class);

            return ResponseEntity.ok().body(map.get("itemList"));
        }catch(MalformedURLException e) {
            log.error("URL이 잘못되었습니다 : " + e.getMessage());
        }catch(IOException e){
            log.error("Connection 에러 : " + e.getMessage());
        }finally{
            log.debug("해치웠나?");
        }
        return ResponseEntity.notFound().build();
    }

    @RequestMapping("/getitemid")
    public ResponseEntity<Object> getItemId(@RequestBody List<Chapter> chapterList){
        System.out.println(chapterList);

        Object eTemp = BaseController.evaluationlist();
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

        return ResponseEntity.ok().body(itemIdMap);
    }

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
