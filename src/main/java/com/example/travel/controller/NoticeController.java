package com.example.travel.controller;

import com.example.travel.domain.Notice;
import com.example.travel.domain.NoticeRequestDto;
import com.example.travel.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class NoticeController {
    private final NoticeService service;

    //create
    @PostMapping("v1/notices")
    public Notice addNotice(@RequestBody NoticeRequestDto dto){return service.addNotice(dto);}

    //read
    @GetMapping("v1/notices/{code}")
    public Notice getNotice(@PathVariable int code){return service.getNotice(code);}
    @GetMapping("v1/notices")
    public List<Notice> getNotices(){return service.getNotices();}

    //update
    @PutMapping("v1/notices/{code}")
    public Notice updateNotice(@PathVariable int code, @RequestBody NoticeRequestDto dto){
        return service.updateNotice(code,dto);
    }

    //delete
    @DeleteMapping("v1/notices/{code}")
    public int deleteNotice(@PathVariable int code){return service.deleteNotice(code);}
}
