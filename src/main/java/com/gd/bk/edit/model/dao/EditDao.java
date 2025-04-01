package com.gd.bk.edit.model.dao;

import com.gd.bk.edit.model.dto.ExamPaper;
import com.gd.bk.edit.model.dto.ExamQuestion;
import org.apache.ibatis.session.SqlSession;

public interface EditDao {
    int saveExamPaper(SqlSession session, ExamPaper examPaper);
    String getExamCode(SqlSession session, ExamPaper examPaper);
    int saveExamQuestion(SqlSession session, ExamQuestion examQuestion);
}
