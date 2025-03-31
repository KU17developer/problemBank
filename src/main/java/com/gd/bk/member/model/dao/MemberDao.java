package com.gd.bk.member.model.dao;

import com.gd.bk.member.model.dto.Member;
import org.apache.ibatis.session.SqlSession;

public interface MemberDao {

    Member searchMemberById(SqlSession session, String id);

    Member findMemberById(SqlSession session, Member member);

    Member findMemberByPw(SqlSession session, Member member);

    int insertMember(SqlSession session, Member member);

    int deleteMember(SqlSession session, String id);


}
