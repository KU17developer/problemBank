package com.gd.bk.edit.model.service;

import com.gd.bk.edit.model.dao.EditDao;
import com.gd.bk.edit.model.dto.ExamPaper;
import com.gd.bk.edit.model.dto.ExamQuestion;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class EditServiceImpl implements EditService {
    @Autowired
    private SqlSession session;
    @Autowired
    private EditDao dao;

    @Override
    public int saveExamPaper(ExamPaper examPaper) {
        return dao.saveExamPaper(session, examPaper);
    }

    @Override
    public String getExamCode(ExamPaper examPaper){
        return dao.getExamCode(session, examPaper);
    }

    @Override
    public int saveExamQuestion(ExamQuestion examQuestion){
        return dao.saveExamQuestion(session,examQuestion);
    }
}
