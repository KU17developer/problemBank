package com.gd.bk.member.model.service;

import com.gd.bk.member.model.dao.MemberDao;
import com.gd.bk.member.model.dto.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

    private final MemberDao dao;
    private final SqlSession session;

    @Override
    public Member searchMemberById(String id) {
        return dao.searchMemberById(session, id);
    }

    @Override
    public Member findMemberById(Member member) {
        return dao.findMemberById(session, member);
    }

    @Override
    public Member findMemberByPw(Member member) {
        return dao.findMemberByPw(session, member);
    }

    @Override
    public int insertMember(Member member) {
        return dao.insertMember(session, member);
    }

    @Override
    public int deleteMember(String id) {
        return dao.deleteMember(session, id);
    }


}
