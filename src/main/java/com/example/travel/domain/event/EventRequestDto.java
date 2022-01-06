package com.example.travel.domain.event;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.Calendar;

@NoArgsConstructor
@Getter
public class EventRequestDto {
    private int code, viewcount, likes;
    private String title, content;
    private Timestamp regdate;
    private EventRequestDto(int code, String title, Timestamp regdate, int viewcount, int likes) {
        this.code = code;
        this.title = title;
        this.regdate = regdate;
        this.viewcount=viewcount;
        this.likes=likes;
    }

    public EventRequestDto(int code, String title, String content, Timestamp regdate, int viewcount, int likes) {
        this.code = code;
        this.title = title;
        this.content = content;
        this.regdate = regdate;
        this.viewcount=viewcount;
        this.likes=likes;
    }

    public EventRequestDto(String title, String content) {
        this.title = title;
        this.content = content;
        this.regdate = new Timestamp(Calendar.getInstance().getTimeInMillis());
        this.viewcount=0;
        this.likes=0;
    }

    public EventRequestDto(int viewcount){
        this.viewcount = viewcount;
    }

    public EventRequestDto(int viewcount, int likes){
        this.viewcount=viewcount;this.likes=likes;
    }
}
