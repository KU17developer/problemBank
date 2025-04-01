package com.gd.bk.edit.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ExamPaper {
    private String examCode;
    private String title;
//    private String problemType;
    private String difficulty;
    private String problemForm;
    private String questionImage;
    private String answerImage;
    private String explainImage;
    private Integer questionCount;
    private Date examRegistDay;
//    private String subject;
    private String teacode;
//    private String midhighcode;
    private String subCode;
}
