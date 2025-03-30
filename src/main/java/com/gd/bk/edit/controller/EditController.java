package com.gd.bk.edit.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

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
            return ResponseEntity.ok().body(response);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("문항 조회 실패: " + e.getMessage());
        }
    }
}
