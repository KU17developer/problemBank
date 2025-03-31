package com.gd.bk.member.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Member {

    private String teaCode;
    private String teaId;
    private String teaPassword;
    private String teaName;
    private String teaNickName;
    private String teaEmail;
    private String teaPhone;
    private String teaSubject;
    private Date teaRegister;
    private Date teaLogin;
    private Date teaWithdraw;

}
