package com.example.travel.domain.user;

import com.example.travel.util.Timestamped;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

// Domain : table
// ㄴ 모든 맴버가 -> 컬럼

@NoArgsConstructor // << 기본생성자를 자동으로 만들어 줌.
@Getter // << 게터를 만들어줌
@Table(name="users") // 엔티티가 맵핑될 테이블 이름을 특정함
@Entity // 이 클래스가 연동된 데이터베이스의 테이블에 해당함을 알려줌 ( 테이블 맵핑 대상으로 지정)
public class User extends Timestamped {
    @Id // PK를 알려줌
    private int code;

    @NonNull
    @Column
    private String id , pw ;

    @Column
    private String firstname;

    @NonNull
    @Column
    private  String residentfront , residentback , phonenumber , email , adress1 , adress2 , adress3;

    // UserRequestDto 를 활용한 생성자 만들기.
    public User(UserRequestDto dto) {
        this.id = dto.getId();
        this.pw = dto.getPw();
        this.firstname = dto.getFirstname();
        this.residentfront = dto.getResidentfront();
        this.residentback = dto.getResidentback();
        this.phonenumber = dto.getPhonenumber();
        this.email = dto.getEmail();
        this.adress1 = dto.getAdress1();
        this.adress2 = dto.getAdress2();
        this.adress3 = dto.getAdress3();
    }


    // setter 메소드 대신 -> update(UserRequestDto를 받는) 메소드를 통해 처리
    public void update(UserRequestDto userRequestDto) {
        this.pw = userRequestDto.getPw();
        this.phonenumber = userRequestDto.getPhonenumber();
        this.email = userRequestDto.getEmail();
        this.adress1 = userRequestDto.getAdress1();
        this.adress2 = userRequestDto.getAdress2();
        this.adress3 = userRequestDto.getAdress3();
    }
}