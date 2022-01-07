package com.example.travel.controller;

import com.example.travel.domain.user.User;
import com.example.travel.domain.service.UserService;
import com.example.travel.domain.user.UserRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import java.util.List;



@RequiredArgsConstructor
@RestController

public class UserController {

     private final UserService service;

    // CRUD
    // 1. Create
    @PostMapping("/v1/users")
    public User addUser(@RequestBody UserRequestDto userRequestDto , HttpServletRequest request) {
        request.getSession().setAttribute("log" , userRequestDto.getId());
        return service.addUser(userRequestDto);
    }

    // 2. Read
    @GetMapping("/v1/users/{code}") // @PathVariable 는 {code]가 getUser의 code 인자로 들어감.
    public User getUser(@PathVariable int code) {
//        User user = null;
//        //user = new User(new UserRequestDto("apple" , "1234" , "감사과"));
//        user = repo.findById(code).orElseThrow(
//                // 람다식
//                () -> new IllegalArgumentException("존재하지 않는 사용자입니다.")
//       );
//        return user;
        return service.getUser(code);
    }
    // getUsers 메소드 완성 -> 디엠으로 제출(브라우저 또는 API플랫폼에서 get 요청 결과물 캡쳐)
    @GetMapping("/v1/users")
    public List<User> getUsers() {
//        List<User> users = null;
//        users = repo.findAll();
//        return users;
        return service.getUsers();
    }

    // 3. Update
    @PutMapping("/v1/users/{code}")
    public User updateUser(@PathVariable int code , @RequestBody UserRequestDto userRequestDto) {
        UserRequestDto dto = userRequestDto;
        return service.updateUser(code , userRequestDto);
    }

    @GetMapping("/updateData")
    public User updateData(HttpServletRequest request) {
        User user = null;
        int code = getLogToCode(request);
        user = getUser(code);
        return user;
    }

    // 4. Delete
    @DeleteMapping("/v1/users/{code}")
    public int deleteUser(@PathVariable int code , HttpServletRequest request) {
        request.getSession().removeAttribute("log");
        return service.deleteUser(code);
    }

    @PostMapping("/checkId")
    public boolean checkIdDupl(@RequestParam String id ) {
        return service.checkIdDupl(id);
    }


    @PostMapping("/login")
    public boolean login(@RequestBody UserRequestDto dto , HttpServletRequest request) {
        boolean check = service.login(dto);
        if(check) {
            request.getSession().setAttribute("log" , dto.getId());
            request.getSession().setAttribute("page", "login");
            String log = dto.getId();
            return true;
        }
        return false;
    }

    @GetMapping("/logoutController")
    public boolean logout(HttpServletRequest request) {
        request.getSession().removeAttribute("log");
        return true;
    }


    @PostMapping("/getCode")
    public int getCode(@RequestBody UserRequestDto dto , HttpServletRequest request) {
        int code = service.getCode(dto , request);
            String log = request.getSession().getAttribute("log")+"";
            if(log.equals(dto.getId())) {
                return code;
            }
        return -1;
    }

    @GetMapping("/getLogToCode")
    public int getLogToCode(HttpServletRequest request) {
        String log = request.getSession().getAttribute("log")+"";
        int code = -1;
        List<User> user = getUsers();
        for(int i=0; i<user.size(); i++) {
            if(log.equals(user.get(i).getId())) {
                code = user.get(i).getCode();
            }
        }
        return code;
    }

    @GetMapping("/v1/getLog")
    public String getLog(HttpServletRequest request) {
        String log = request.getSession().getAttribute("log")+"";
        return log;
    }




}