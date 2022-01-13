package com.example.travel.controller;

import com.example.travel.domain.notice.Notice;
import com.example.travel.domain.notice.NoticeRequestDto;
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
        request.setAttribute("viewcount",notice.getViewcount()+1);
        service.updateView(code,new NoticeRequestDto(notice.getViewcount()+1));
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

    @GetMapping("v1/index/notices")
    public String getNoticesIndex(HttpServletRequest request){
        List<Notice> notices = service.getNotices();
        request.setAttribute("noticeList",notices);
        return "index";
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

    // update like
    @PutMapping("v1/notice/likeup/{code}")
    public String updateLikeCnt(HttpServletRequest request,@PathVariable int code){
        Notice notice = service.getNotice(code);
        request.setAttribute("likes",notice.getLikes()+1);
        request.setAttribute("viewcount", notice.getViewcount());
        service.updateLike(code,new NoticeRequestDto(notice.getViewcount()-1, notice.getLikes()+1));
        return getNotice(request,code);
    }


    //delete
    @DeleteMapping("v1/notices/{code}")
    public int deleteNotice(@PathVariable int code) {
        //code = (int) request.getAttribute("code");
        return service.deleteNotice(code);

    }

}

