package com.example.travel.domain.place;

import com.example.travel.util.Timestamped;
import com.sun.istack.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@NoArgsConstructor
@Getter
@Table(name="places")
@Entity
public class Place extends Timestamped {
    @Id
    private int code;

    @Column
    private String tel;

    @NotNull
    @Column
    private String placename,pos,keywords,imglink;

    public Place(PlaceRequestDto dto){
        this.code=dto.getCode();
        this.placename=dto.getPlacename();
        this.pos = dto.getPos();
        this.keywords=dto.getKeywords();
        this.tel=dto.getTel();
        this.imglink=dto.getImglink();
    }

    public void update(PlaceRequestDto dto){
        this.code=dto.getCode();
        this.placename=dto.getPlacename();
        this.pos = dto.getPos();
        this.keywords=dto.getKeywords();
        this.tel=dto.getTel();
        this.imglink=dto.getImglink();
    }


}
