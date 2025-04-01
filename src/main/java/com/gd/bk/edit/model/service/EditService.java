package com.gd.bk.edit.model.service;

import com.gd.bk.edit.model.dto.ExamPaper;
import com.gd.bk.edit.model.dto.ExamQuestion;

public interface EditService {
    int saveExamPaper(ExamPaper examPaper);
    String getExamCode(ExamPaper examPaper);
    int saveExamQuestion(ExamQuestion examQuestion);
}
