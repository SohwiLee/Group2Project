package com.example.travel.controller;

import com.example.travel.domain.PlaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @Autowired
    PlaceRepository repo;

    @GetMapping("/")
    public String index(){return "index";}

    @GetMapping("/search")
    public String search(HttpServletRequest request){
        request.setAttribute("lists",repo.findAll());
        return "search";
    }

    @GetMapping("/notice")
    public String notice(){
        return "notice";
    }

    @GetMapping("/noticeWrite")
    public String noticeWrite(){
        return "../writes/noticeWrite";
    }
}
