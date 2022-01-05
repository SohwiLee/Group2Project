package com.example.travel.domain.user;

import com.example.travel.util.Timestmped;
import com.sun.istack.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@NoArgsConstructor
@Getter
@Table(name="users")
@Entity

public class User extends Timestmped {
    @Id
    private int code;

    @NotNull
    @Column
    private String id,pw,firstname;

    public User(UserRequestDto dto){
        this.id=dto.getId(); this.pw = dto.getPw(); this.firstname=dto.getFirstname();
    }

    public void update(UserRequestDto dto){
        this.pw=dto.getPw(); this.firstname=dto.getFirstname();
    }

}
