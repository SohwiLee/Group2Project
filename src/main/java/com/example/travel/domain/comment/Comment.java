package com.example.travel.domain.comment;


import com.example.travel.util.Timestamped;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@NoArgsConstructor
@Getter
@Table(name="comment")
@Entity
public class Comment extends Timestamped {

    @Id
    private int code;

    @NonNull
    @Column
    private String id , postcode , kind , content ;



    public Comment(CommentRequestDto dto) {
        this.id = dto.getId();
        this.postcode = dto.getPostcode();
        this.kind = dto.getKind();;
        this.content = dto.getContent();
    }
}
