package com.gd.bk.member.model.service;

import com.gd.bk.member.model.dto.Member;
import org.apache.ibatis.session.SqlSession;

public interface MemberService {

    Member searchMemberById(String id);

    Member findMemberById(Member member);

    Member findMemberByPw(Member member);

    int insertMember(Member member);

    int deleteMember(String id);

}
