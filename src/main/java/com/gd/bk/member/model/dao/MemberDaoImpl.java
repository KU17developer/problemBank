package com.gd.bk.member.model.dao;

import com.gd.bk.member.model.dto.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {

    @Override
    public Member searchMemberById(SqlSession session, String id) {
        return session.selectOne("member.searchMemberById", id);
    }

    @Override
    public Member findMemberById(SqlSession session, Member member) {
        return session.selectOne("member.findMemberById", member);
    }

    @Override
    public Member findMemberByPw(SqlSession session, Member member) {
        return session.selectOne("member.findMemberByPw", member);
    }

    @Override
    public int insertMember(SqlSession session, Member member) {
        return session.insert("member.insertMember", member);
    }

    @Override
    public int deleteMember(SqlSession session, String id) {
        return session.update("member.deleteMember", id);
    }
}
