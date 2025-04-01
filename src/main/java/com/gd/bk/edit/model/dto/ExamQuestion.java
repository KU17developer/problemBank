package com.gd.bk.edit.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ExamQuestion {
    private String questionCode;
    private String passageUrl;
    private String questionUrl;
    private String answerUrl;
    private String explainUrl;
    private String examCode;
}