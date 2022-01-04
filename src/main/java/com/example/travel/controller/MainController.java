package com.example.travel.controller;

import com.example.travel.domain.NoticeRepository;
import com.example.travel.domain.PlaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @Autowired
    PlaceRepository repoP;
    @Autowired
    NoticeRepository repoN;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/search")
    public String search(HttpServletRequest request) {
        request.setAttribute("lists", repoP.findAll());
        return "search";
    }

    @GetMapping("/notice")
    public String notice(HttpServletRequest request) {
        if(repoN.findAll()!=null){
        request.setAttribute("noticeList", repoN.findAll());
        }

        return "notice";
    }


//    @GetMapping("/notice/")
//    public String noticeView(){
//        return "noticeView";
//    }

    @GetMapping("/noticeWrite")
    public String noticeWrite() {
        return "../writes/noticeWrite";
    }
}
