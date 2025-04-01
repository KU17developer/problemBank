package com.gd.bk.edit.model.dao;

import com.gd.bk.edit.model.dto.ExamPaper;
import com.gd.bk.edit.model.dto.ExamQuestion;
import org.apache.ibatis.session.SqlSession;

public interface EditDao {
    int saveExamPaper(SqlSession session, ExamQuestion examQuestion);
}
