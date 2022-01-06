package com.example.travel.domain.user;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor // for JPA Repo
@Getter
public class UserRequestDto {
    private int code;
    private String id , pw , firstname , residentfront , residentback , phonenumber , email , adress1 , adress2 , adress3;
    // 필요한 생성자 오버로딩
    public UserRequestDto(String id , String pw ) {
        this.id = id;
        this.pw = pw;
    }

    public UserRequestDto(String id , String pw , String firstname , String residentfront , String residentback , String phonenumber ,  String email , String adress1 , String adress2 , String adress3) {
        this.id = id;
        this.pw = pw;
        this.firstname = firstname;
        this.residentfront = residentfront;
        this.residentback = residentback;
        this.phonenumber = phonenumber;
        this.email = email;
        this.adress1 = adress1;
        this.adress2 = adress2;
        this.adress3 = adress3;
    }

    public UserRequestDto(String pw , String phonenumber , String email , String adress1 , String adress2 , String adress3) {
        this.pw = pw;
        this.phonenumber = phonenumber;
        this.email = email;
        this.adress1 = adress1;
        this.adress2 = adress2;
        this.adress3 = adress3;
    }

}
