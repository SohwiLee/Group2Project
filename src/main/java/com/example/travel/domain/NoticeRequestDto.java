package com.example.travel.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@NoArgsConstructor
@Getter
public class NoticeRequestDto {
    int code;
    String title,content;
    Timestamp regdate;

    private NoticeRequestDto(int code, String title, Timestamp regdate){
        this.code=code;this.title=title;
        this.regdate=regdate;
    }

    private NoticeRequestDto(int code, String title, String content, Timestamp regdate){
        this.code=code; this.title=title; this.content=content;
        this.regdate=regdate;
    }
}
