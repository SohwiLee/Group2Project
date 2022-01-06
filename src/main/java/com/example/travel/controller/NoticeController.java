package com.example.travel.controller;

import com.example.travel.domain.notice.Notice;
import com.example.travel.domain.notice.NoticeRequestDto;
import com.example.travel.domain.service.NoticeService;
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
        service.addNotice(dto);
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
        return "boardNotice/noticeView";
    }
    @GetMapping("v1/notice/{code}")
    public String getNoticeE(HttpServletRequest request, @PathVariable int code){
        Notice notice = service.getNotice(code);
        request.setAttribute("code",notice.getCode());
        request.setAttribute("title",notice.getTitle());
        request.setAttribute("content",notice.getContent());
        request.setAttribute("regdate",notice.getRegdate());
        request.setAttribute("viewcount",notice.getViewcount());
        request.setAttribute("likes",notice.getLikes());
        return "boardNotice/noticeEdit";
    }
    @GetMapping("v1/notices")
    public String getNotices(HttpServletRequest request){
        List<Notice> notices = service.getNotices();
        request.setAttribute("noticeList",notices);
        return "boardNotice/notice";
    }


    //update
    @PutMapping("v1/notices/{code}")
    public String updateNotice(HttpServletRequest request, @PathVariable int code){
        Notice n = service.getNotice(code);
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        NoticeRequestDto dto = new NoticeRequestDto(n.getCode(), title,content,n.getRegdate(),n.getViewcount(),n.getLikes());
        service.updateNotice(code,dto);
        return getNotice(request, code);
    }

    @PutMapping("v1/notices/{code}")
    public String updateViewCnt(HttpServletRequest request, @PathVariable int code){
        Notice n = service.getNotice(code);
        int cnt = Integer.parseInt(request.getParameter("viewcount"))+1;
        NoticeRequestDto dto = new NoticeRequestDto(n.getCode(), n.getTitle(),n.getContent(),n.getRegdate(),cnt, n.getLikes());
        service.updateView(code,dto);
        return getNotice(request,code);
    }


    //delete
    @DeleteMapping("v1/notices/{code}")
    public int deleteNotice(@PathVariable int code) {
        //code = (int) request.getAttribute("code");
        return service.deleteNotice(code);

    }

}
