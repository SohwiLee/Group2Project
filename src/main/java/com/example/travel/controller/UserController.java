package com.example.travel.controller;

import com.example.travel.domain.user.User;
import com.example.travel.domain.user.UserRequestDto;
import com.example.travel.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class UserController {
    private final UserService service;

    // create
    @PostMapping("v1/users")
    public User addUser(@RequestBody UserRequestDto dto){return service.addUser(dto);}

    // read
    @GetMapping("v1/users/{code}")
    public User getUser(@PathVariable int code){return service.getUser(code);}
    @GetMapping("v1/users")
    public List<User> getUsers(){return service.getUsers();}

    // update
    @PutMapping("v1/users/{code}")
    public User updateUser(@PathVariable int code, @RequestBody UserRequestDto dto){
        return service.updateUser(code,dto);
    }

    // delete
    @DeleteMapping("v1/users/{code}")
    public int deleteUser(@PathVariable int code){return service.deleteUser(code);}
}
