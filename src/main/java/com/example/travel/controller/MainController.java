package com.example.travel.controller;

import com.example.travel.domain.event.EventRequestDto;
import com.example.travel.domain.notice.NoticeRequestDto;
import com.example.travel.domain.place.Place;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.http.HttpClient;
import java.util.List;


@RequiredArgsConstructor
@Controller
public class MainController {

    private final PlaceController pController;
    private final NoticeController nController;
    private final EventController eController;

    // index page
    @GetMapping("/")
    public String index() {
        return "index";
    }

    // search page
    @GetMapping("/search")
    public List<Place> search() {
        return pController.getPlaces();
    }

    // event page
    // - show lists
    @GetMapping("/events")
    public String event(HttpServletRequest request) {
        return eController.getEvents(request);
    }

    // - show one page
    @GetMapping("/event/{code}")
    public String eventDetail(HttpServletRequest request, @PathVariable int code){
        return eController.getEvent(request,code);
    }
    // - show write page
    @GetMapping("/eventWrite")
    public String eventWrite() {
        return "eventWrite";
    }
    // - add in sql
    @GetMapping("/addEvent")
    public String addEvent(HttpServletRequest request,String title, String content){
        title=request.getParameter("title");
        content=request.getParameter("content");
        return eController.addEvent(request, new EventRequestDto(title,content));
    }
    // - show edit page
    @GetMapping("/event/{code}/edit")
    public String eventEdit(HttpServletRequest request, @PathVariable int code){
        return eController.getEventE(request, code);
    }
    // - edit in sql
    @GetMapping("/editEvent/{code}")
    public String editEvent(HttpServletRequest request, @PathVariable int code){
        return eController.updateEvent(request, code);
    }

    // - delete page
    @GetMapping("/delEvent/{code}")
    public void deleteEvent(@PathVariable int code, HttpServletResponse response) throws IOException {
        eController.deleteEvent(code);
        response.sendRedirect("/events");
    }


    // notice page
    // - show lists
    @GetMapping("/notices")
    public String notice(HttpServletRequest request) {
        return nController.getNotices(request);
    }
    // - show one page
    @GetMapping("/notice/{code}")
    public String noticeDetail(HttpServletRequest request, @PathVariable int code){
        return nController.getNotice(request, code);
    }
    // - show write page
    @GetMapping("/noticeWrite")
    public String noticeWrite() {
        return "noticeWrite";
    }
    // - add in sql
    @GetMapping("/addNotice")
    public String addNotice(HttpServletRequest request,String title, String content){
        title=request.getParameter("title");
        content=request.getParameter("content");
        return nController.addNotice(request, new NoticeRequestDto(title,content));
    }
    // - show edit page
    @GetMapping("/notice/{code}/edit")
    public String noticeEdit(HttpServletRequest request, @PathVariable int code){
        return nController.getNoticeE(request, code);
    }
    // - edit in sql
    @GetMapping("/editNotice/{code}")
    public String editNotice(HttpServletRequest request, @PathVariable int code){
        return nController.updateNotice(request, code);
    }

    // - delete page
    @GetMapping("/delNotice/{code}")
    public void deleteNotice(@PathVariable int code, HttpServletResponse response) throws IOException {
        nController.deleteNotice(code);
        response.sendRedirect("/notices");
    }


    // festivalInfo page
    @GetMapping("/festival")
    public String festival(){
        return "festival";
    }

}
