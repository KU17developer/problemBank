package com.gd.bk.member.controller;

import com.gd.bk.member.model.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/enroller")
    public String enroller() {
        return "member/enroller";
    }

    @GetMapping("/findId")
    public String findId() {
        return "member/findId";
    }

    @GetMapping("/findPw")
    public String findPw() {
        return "member/findPw";
    }

}
