package com.example.travel.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class UserRequestDto {
    private int code;
    private String id,pw,firstname;

    private UserRequestDto(String id, String pw){
        this.id=id;this.pw=pw;
    }

    public UserRequestDto(String id, String pw, String firstname){
        this.id=id;this.pw=pw;this.firstname=firstname;
    }
}
