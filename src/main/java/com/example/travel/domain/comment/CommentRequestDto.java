package com.example.travel.domain.comment;

import lombok.Getter;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@Getter
public class CommentRequestDto {

    private int code;
    private String id , postcode , kind , content ;


    public CommentRequestDto(String id , String postcode , String kind , String content , String likes) {
        this.id = id;
        this.postcode = postcode;
        this.kind = kind;
        this.content = content;
    }
}
