package com.example.travel.domain.service;

import com.example.travel.domain.event.Event;
import com.example.travel.domain.event.EventRepository;
import com.example.travel.domain.event.EventRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class EventService {

    @Autowired
    private final EventRepository repo;

    //create
    public Event addEvent(EventRequestDto dto){
        Event event = new Event(dto);
        return repo.save(event);
    }

    //read
    public Event getEvent(int code){
        Event event=null;
        event=repo.findById(code).orElseThrow(
                () -> new IllegalArgumentException("존재않는 이벤트")
        );
        return event;
    }

    public List<Event> getEvents(){
        List<Event> events = null;
        events = repo.findAll();
        return events;
    }

    //update
    @Transactional
    public Event updateEvent(int code, EventRequestDto dto){
        Event event = getEvent(code);
        event.update(dto);
        return event;
    }

    //delete
    public int deleteEvent(int code){
        Event event = getEvent(code);
        repo.deleteById(event.getCode());
        return event.getCode();
    }
}
