package com.gd.bk.edit.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public class Question {
        private Long itemId;
        private String content;
        private String answer;
        private String explanation;
        private String type; // 객관식/주관식
        private String difficulty; // 최하~최상
        private String imageUrl;
    }

// ※ sub03.jsp에서는 sessionStorage에서 questionList 불러와서 출력 가능
// const questionList = JSON.parse(sessionStorage.getItem("questionList"));

