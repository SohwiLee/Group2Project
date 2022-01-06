package com.example.travel.domain.notice;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.Calendar;

@NoArgsConstructor
@Getter
public class NoticeRequestDto {
    private int code, viewcount, likes;
    private String title, content;
    private Timestamp regdate;


    private NoticeRequestDto(int code, String title, Timestamp regdate, int viewcount, int likes) {
        this.code = code;
        this.title = title;
        this.regdate = regdate;
        this.viewcount=viewcount;
        this.likes=likes;
    }

    public NoticeRequestDto(int code, String title, String content, Timestamp regdate, int viewcount, int likes) {
        this.code = code;
        this.title = title;
        this.content = content;
        this.regdate = regdate;
        this.viewcount=viewcount;
        this.likes=likes;
    }

    public NoticeRequestDto(String title, String content) {
        this.title = title;
        this.content = content;
        this.regdate = new Timestamp(Calendar.getInstance().getTimeInMillis());
        this.viewcount=0;
        this.likes=0;
    }
//
//    public NoticeRequestDto(int viewcount){
//        this.viewcount = viewcount;
//    }
}
