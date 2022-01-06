package com.example.travel.controller;

import com.example.travel.domain.event.Event;
import com.example.travel.domain.event.EventRequestDto;
import com.example.travel.domain.notice.Notice;
import com.example.travel.domain.notice.NoticeRequestDto;
import com.example.travel.service.EventService;
import lombok.RequiredArgsConstructor;
import org.jetbrains.annotations.NotNull;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequiredArgsConstructor
@RestController
public class EventController {
    private final EventService service;

    //create
    @PostMapping("v1/events/create")
    public String addEvent(HttpServletRequest request, EventRequestDto dto) {
        Event add = service.addEvent(dto);
        return getEvents(request);
    }
    //read
    @GetMapping("v1/events/{code}")
    public String getEvent(HttpServletRequest request, @PathVariable int code){
        Event e = service.getEvent(code);
        request.setAttribute("code",e.getCode());
        request.setAttribute("title",e.getTitle());
        request.setAttribute("content",e.getContent());
        request.setAttribute("regdate",e.getRegdate());
        request.setAttribute("viewcount",e.getViewcount());
        request.setAttribute("likes",e.getLikes());
        return "eventView";
    }

    @GetMapping("v1/events")
    public String getEvents(HttpServletRequest request){
        List<Event> events = service.getEvents();
        request.setAttribute("lists", events);
        return "event";
    }

    @GetMapping("v1/event/{code}")
    public String getEventE(HttpServletRequest request, @PathVariable int code){
        Event event = service.getEvent(code);
        request.setAttribute("code",event.getCode());
        request.setAttribute("title",event.getTitle());
        request.setAttribute("content",event.getContent());
        request.setAttribute("regdate",event.getRegdate());
        request.setAttribute("viewcount",event.getViewcount());
        request.setAttribute("likes",event.getLikes());
        return "eventEdit";
    }

    //update
    @PutMapping("v1/events/{code}")
    public String updateEvent(@NotNull HttpServletRequest request, @PathVariable int code){
        Event e = service.getEvent(code);
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        EventRequestDto dto = new EventRequestDto(e.getCode(), title,content,e.getRegdate(),e.getViewcount(),e.getLikes());
        service.updateEvent(code,dto);
        return getEvent(request, code);
    }

    //delete
    @DeleteMapping("v1/events/{code}")
    public int deleteEvent(@PathVariable int code) {
        return service.deleteEvent(code);

    }



}
