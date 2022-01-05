package com.example.travel.domain.place;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class PlaceRequestDto {
    private int code;
    private String placename,pos,keywords,tel,imglink;

    private PlaceRequestDto(String placename,String pos,String keywords){
        this.placename=placename;this.pos=pos;this.keywords=keywords;
    }

    private PlaceRequestDto(String placename,String pos,String keywords,String tel,String imglink){
        this.placename=placename;this.pos=pos;this.keywords=keywords;this.tel=tel;this.imglink=imglink;
    }
}
