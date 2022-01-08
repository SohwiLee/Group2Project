package com.example.travel.service;

import com.example.travel.domain.user.User;
import com.example.travel.domain.user.UserRepository;
import com.example.travel.domain.user.UserRequestDto;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

//import static org.graalvm.compiler.options.OptionType.User;

@RequiredArgsConstructor // << private final UserRepository repo; 랑 연관
@Service

public class UserService {

    @Autowired
    public final UserRepository repo; // << 쿼리를 가져와줌




    // Service 클래스는 비지니스 로직을 담음
    // CRUD
    // 1. Create

    @Transactional // 기존의 테이블에 쿼리가 일어나야 함을 알려줌
    public User addUser(UserRequestDto userRequestDto) {
        User user = new User(userRequestDto);
        return repo.save(user);
    }
    // 2. Read
    public User getUser(int code) {
        User user = null;
        user = repo.findById(code).orElseThrow(
                //람다식
                () -> new IllegalArgumentException("존재하지 않는 사용자입니다.")
        );

                return user;
    }

    public List<User> getUsers() {
        List<User> users = null;
        users = repo.findAll();
        return users;
    }

    // 3. Update
    @Transactional // 기존의 테이블에 쿼리가 일어나야 함을 알려줌
    public User updateUser(int code , UserRequestDto userRequestDto) {
//        User user = repo.findById(code).orElseThrow(
//                () -> new IllegalArgumentException("존재하지 않는 사용자입니다.")
//        );
        UserRequestDto dto = userRequestDto;
        User user = getUser(code);
        user.update(userRequestDto);
        return user;
    }

    // 4. Delete
    public int deleteUser(int code) {
        User user = getUser(code);
        repo.deleteById(user.getCode());
        return user.getCode();
    }

    public boolean checkIdDupl(String id ) {
        List<User> users = getUsers();
        for(int i=0; i<users.size(); i++) {
            if(id.equals(users.get(i).getId())) {
                return false;
            }
        }
        return true;
    }

    public boolean login(UserRequestDto dto) {
        String id = dto.getId();
        String pw = dto.getPw();
        User user = null;
        List<User> users = getUsers();
        for(int i=0; i<users.size(); i++) {
            if(users.get(i).getId().equals(dto.getId())) {
                user = users.get(i);
            }
        }
        if(user != null && id.equals(user.getId()) && pw.equals(user.getPw())) {
            return true;
        }
        return false;
    }

    public int getCode(UserRequestDto dto , HttpServletRequest request) {
        String id = dto.getId();
        String pw = dto.getPw();
        int code = -1;
        List<User> users = getUsers();
        System.out.println("[UserSerive] code : " + code);
        for(int i=0; i<users.size(); i++) {
            System.out.println(" i : " + i );
            if(users.get(i).getId().equals(id)) {
                code = users.get(i).getCode();
                System.out.println("[UserSerive] code2 : " + code);
                System.out.println("[UserSerive] id : " + id);
                System.out.println("[UserSerive] UsersiId : " + users.get(i).getId());
                return code;
            }
        }
        return code;
    }


}
