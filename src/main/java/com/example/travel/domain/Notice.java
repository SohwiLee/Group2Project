package com.example.travel.domain;

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
    private String title,content;
    private Timestamp regdate;

    public Notice(NoticeRequestDto dto){
        this.title=dto.getTitle();
        this.content = dto.getContent();
        this.regdate = dto.getRegdate();
    }

    public void update(NoticeRequestDto dto){
        this.title=dto.getTitle();
        this.content = dto.getContent();
    }
}
