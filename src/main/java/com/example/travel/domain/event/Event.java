package com.example.travel.domain.event;

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
@Table(name="event")
@Entity
public class Event {
    @Id
    private int code;

    @NotNull
    @Column
    private String title, content;
    private Timestamp regdate;
    private int viewcount, likes;

    public Event(EventRequestDto dto) {
        this.title = dto.getTitle();
        this.content = dto.getContent();
        this.regdate = dto.getRegdate();
        this.viewcount = dto.getViewcount();
        this.likes = dto.getLikes();
    }

    public void update(EventRequestDto dto) {
        this.title = dto.getTitle();
        this.content = dto.getContent();
        this.viewcount = dto.getViewcount();
        this.likes = dto.getLikes();
    }

    public void add(EventRequestDto dto) {
        this.title = dto.getTitle();
        this.content = dto.getContent();
    }
}
