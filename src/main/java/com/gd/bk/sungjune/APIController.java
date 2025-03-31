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
}
