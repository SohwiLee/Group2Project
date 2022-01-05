package com.example.travel.controller;

import com.example.travel.domain.event.Event;
import com.example.travel.domain.event.EventRequestDto;
import com.example.travel.domain.notice.Notice;
import com.example.travel.domain.notice.NoticeRequestDto;
import com.example.travel.service.EventService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

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
    @GetMapping("v1/event/{code}")
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




}
