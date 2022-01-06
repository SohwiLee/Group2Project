package com.example.travel.domain.notice;

import com.sun.istack.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Timestamp;

@NoArgsConstructor
@Getter
@Table(name="notice")
@Entity
public class Notice {
    @Id
    private int code;

    @NotNull
    @Column
    private String title, content;
    private Timestamp regdate;
    private int viewcount, likes;

    public Notice(NoticeRequestDto dto) {
        this.title = dto.getTitle();
        this.content = dto.getContent();
        this.regdate = dto.getRegdate();
        this.viewcount = dto.getViewcount();
        this.likes = dto.getLikes();
    }

    public void update(NoticeRequestDto dto) {
        this.title = dto.getTitle();
        this.content = dto.getContent();
        this.viewcount = dto.getViewcount();
        this.likes = dto.getLikes();
    }

    public void updateViewCnt(NoticeRequestDto dto){
        this.viewcount = dto.getViewcount();
    }

    public void add(NoticeRequestDto dto) {
        this.title = dto.getTitle();
        this.content = dto.getContent();
    }

}
