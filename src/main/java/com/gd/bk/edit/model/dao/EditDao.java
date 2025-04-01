package com.gd.bk.edit.model.dao;

import com.gd.bk.edit.model.dto.ExamPaper;
import org.apache.ibatis.session.SqlSession;

public interface EditDao {
    int saveExamPaper(SqlSession session, ExamPaper examPaper);
}
