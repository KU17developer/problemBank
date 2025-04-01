package com.gd.bk.edit.model.dao;

import com.gd.bk.edit.model.dto.ExamPaper;
import com.gd.bk.edit.model.dto.ExamQuestion;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EditDaoImpl implements EditDao {
    @Override
    public int saveExamPaper(SqlSession session, ExamQuestion examQuestion){
        return session.insert("edit.saveExamPaper",examQuestion);
    }
}
