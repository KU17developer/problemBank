package com.gd.bk.edit.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;

import javax.net.ssl.HttpsURLConnection;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/edit")
public class EditController {

    @PostMapping("/questionList")
    public ResponseEntity<Object> getQuestionList(@RequestBody Map<String, Object> payload) {
        String response = "";
        try {
            URL url = new URL("https://tsherpa.item-factory.com/item-img/chapters/item-list");
            HttpsURLConnection connect = (HttpsURLConnection) url.openConnection();
            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(payload);
            connect.getOutputStream().write(json.getBytes());

            InputStream is = connect.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            int data;
            StringBuilder sb = new StringBuilder();
            while ((data = isr.read()) != -1) {
                sb.append((char) data);
            }
            response = sb.toString();

            ObjectMapper mapper2 = new ObjectMapper();
            Map<String,Object> map = mapper2.readValue(response, Map.class);

            return ResponseEntity.ok().body(map.get("itemList"));
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("문항 조회 실패: " + e.getMessage());
        }
    }


    @PostMapping("/submitQuiz")
    public String submitQuiz(@RequestParam("payload") String jsonPayload, Model model) {
        try {
            // 파라미터 역직렬화
            ObjectMapper mapper = new ObjectMapper();
            Map<String, Object> payload = mapper.readValue(jsonPayload, Map.class);

            // 외부 API 호출
            URL url = new URL("https://tsherpa.item-factory.com/item-img/chapters/item-list");
            HttpsURLConnection connect = (HttpsURLConnection) url.openConnection();
            connect.setRequestMethod("POST");
            connect.setDoOutput(true);
            connect.setRequestProperty("Content-Type", "application/json");

            String json = mapper.writeValueAsString(payload);
            connect.getOutputStream().write(json.getBytes());

            InputStream is = connect.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            StringBuilder sb = new StringBuilder();
            int data;
            while ((data = isr.read()) != -1) {
                sb.append((char) data);
            }
            String response = sb.toString();

            // 응답을 Model에 담아서 JSP로 포워딩
            model.addAttribute("questionList", response);
            return "quizbank/sub03_01"; // /WEB-INF/views/quizbank/sub03_01.jsp

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "문항 조회 실패: " + e.getMessage());
            return "error"; // error.jsp 등 에러 처리 페이지로 보내도 됨
        }

    }
}
