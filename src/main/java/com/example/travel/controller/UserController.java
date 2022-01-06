package com.example.travel.controller;

import com.example.travel.domain.user.User;
import com.example.travel.service.UserService;
import com.example.travel.domain.user.UserRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;
import java.util.List;



@RequiredArgsConstructor
@RestController

public class UserController {

     private final UserService service;

    // CRUD
    // 1. Create
    @PostMapping("/v1/users")
    public User addUser(@RequestBody UserRequestDto userRequestDto , HttpServletRequest request) {
        System.out.println("[UserController] 계정추가 성공 ! ");
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
        System.out.println("[UserController]getUser");
        return service.getUser(code);
    }
    // getUsers 메소드 완성 -> 디엠으로 제출(브라우저 또는 API플랫폼에서 get 요청 결과물 캡쳐)
    @GetMapping("/v1/users")
    public List<User> getUsers() {
//        List<User> users = null;
//        users = repo.findAll();
//        return users;
        System.out.println("[UserController]getUsers");
        return service.getUsers();
    }

    // 3. Update
    @PutMapping("/v1/users/{code}")
    public User updateUser(@PathVariable int code , @RequestBody UserRequestDto userRequestDto) {
        UserRequestDto dto = userRequestDto;
        System.out.println("[UserController]updateUser");
        System.out.println("[UserController] code : " + code);
        System.out.println("[UserController] code : " + dto.getCode());
        System.out.println("[UserController] id : " + dto.getId());
        System.out.println("[UserController] pw : " + dto.getPw());
        System.out.println("[UserController] firstname : " + dto.getFirstname());
        System.out.println("[UserController] residentFront : " + dto.getResidentfront());
        System.out.println("[UserController] residentBack : " + dto.getResidentback());
        System.out.println("[UserController] phonenumber : " + dto.getPhonenumber());
        System.out.println("[UserController] email : " + dto.getEmail());
        System.out.println("[UserController] adress1 : " + dto.getAdress1());
        System.out.println("[UserController] adress2 : " + dto.getAdress2());
        System.out.println("[UserController] adress3 : " + dto.getAdress3());
        return service.updateUser(code , userRequestDto);
    }

    // 4. Delete
    @DeleteMapping("/v1/users/{code}")
    public int deleteUser(@PathVariable int code , HttpServletRequest request) {
        System.out.println("[UserController]deleteUser");
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
            String log = dto.getId();
            System.out.println("[UserController] log : " + log);
            return true;
        }
        return false;
    }

    @GetMapping("/logoutController")
    public boolean logout(HttpServletRequest request) {
        request.getSession().removeAttribute("log");
        System.out.println("[UserController] logout check");
        return true;
    }


    @PostMapping("/getCode")
    public int getCode(@RequestBody UserRequestDto dto , HttpServletRequest request) {
        int code = service.getCode(dto , request);
            String log = request.getSession().getAttribute("log")+"";
            System.out.println("[UserController] log : " + log);
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


}