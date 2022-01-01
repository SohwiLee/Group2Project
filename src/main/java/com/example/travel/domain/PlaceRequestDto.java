package com.example.travel.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class PlaceRequestDto {
    private int code;
    private String placename,pos,keywords,tel;

    private PlaceRequestDto(String placename,String pos,String keywords){
        this.placename=placename;this.pos=pos;this.keywords=keywords;
    }

    private PlaceRequestDto(String placename,String pos,String keywords,String tel){
        this.placename=placename;this.pos=pos;this.keywords=keywords;this.tel=tel;
    }
}