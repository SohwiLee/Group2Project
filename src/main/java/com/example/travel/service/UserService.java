package com.example.travel.service;

import com.example.travel.domain.User;
import com.example.travel.domain.UserRepository;
import com.example.travel.domain.UserRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository repo;

    // api 구현
    // create
    public User addUser(UserRequestDto dto) {
        User user = new User(dto);
        return repo.save(user);
    }

    // read
    public User getUser(int code){
        User user=null;
        user = repo.findById(code).orElseThrow(
                ()->new IllegalArgumentException("존재하지 않는 사용자입니다.")
        );
        return user;
    }
    public List<User> getUsers(){
        List<User> users=null;
        users = repo.findAll();
        return users;
    }

    // update
    @Transactional
    public User updateUser(int code, UserRequestDto dto){
        User user = getUser(code);
        user.update(dto);
        return user;
    }

    // delete
    public int deleteUser(int code){
        User user=getUser(code);
        repo.deleteById(user.getCode());
        return user.getCode();
    }
}
