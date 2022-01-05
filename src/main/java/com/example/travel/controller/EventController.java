package com.example.travel.controller;

import com.example.travel.domain.Event;
import com.example.travel.service.EventService;
import com.example.travel.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class EventController {
    private final EventService service;

    //create

    //read
    @GetMapping("v1/events/{code}")
    public Event getEvent(@PathVariable int code){
        return service.getEvent(code);
    }
}
