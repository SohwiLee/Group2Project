package com.example.travel.controller;

import com.example.travel.domain.Place;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequiredArgsConstructor
@Controller
public class MainController {

    private final PlaceController pController;
    private final NoticeController nController;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/search")
    public List<Place> search() {
        return pController.getPlaces();
    }

    @GetMapping("/notices")
    public String notice(HttpServletRequest request) {
        return nController.getNotices(request);
    }

    @GetMapping("/notice/{code}")
    public String noticeDetail(HttpServletRequest request, @PathVariable int code){
        return nController.getNotice(request, code);
    }

    @GetMapping("/noticeWrite")
    public String noticeWrite() {
        return "../writes/noticeWrite";
    }
}
