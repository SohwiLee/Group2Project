package com.example.travel.controller;

import com.example.travel.domain.Notice;
import com.example.travel.domain.NoticeRequestDto;
import com.example.travel.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequiredArgsConstructor
@RestController
public class NoticeController {
    private final NoticeService service;

    //create
    @PostMapping("v1/notices")
    public String addNotice(HttpServletRequest request, NoticeRequestDto dto) {
        Notice add = service.addNotice(dto);
        return getNotices(request);
    }

    //read
    @GetMapping("v1/notices/{code}")
    public String getNotice(HttpServletRequest request, @PathVariable int code){
        Notice notice = service.getNotice(code);
        request.setAttribute("code",notice.getCode());
        request.setAttribute("title",notice.getTitle());
        request.setAttribute("content",notice.getContent());
        request.setAttribute("regdate",notice.getRegdate());
        request.setAttribute("viewcount",notice.getViewcount());
        request.setAttribute("likes",notice.getLikes());
        return "noticeView";
    }
    @GetMapping("v1/notices")
    public String getNotices(HttpServletRequest request){
        List<Notice> notices = service.getNotices();
        request.setAttribute("noticeList",notices);
        return "notice";
    }

    //update
    @PutMapping("v1/notices/{code}")
    public Notice updateNotice(@PathVariable int code, @RequestBody NoticeRequestDto dto){
        return service.updateNotice(code,dto);
    }

    //delete
    @DeleteMapping("v1/notices/{code}")
    public int deleteNotice(@PathVariable int code){return service.deleteNotice(code);}

}
