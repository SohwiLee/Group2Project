package com.example.travel.service;

import com.example.travel.domain.notice.Notice;
import com.example.travel.domain.notice.NoticeRepository;
import com.example.travel.domain.notice.NoticeRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class NoticeService {

    @Autowired
    private final NoticeRepository repo;

    //create
    public Notice addNotice(NoticeRequestDto dto){
        Notice notice = new Notice(dto);
        return repo.save(notice);
    }

    //read
    public Notice getNotice(int code){
        Notice notice=null;
        notice=repo.findById(code).orElseThrow(
                () -> new IllegalArgumentException("존재않는 공지")
        );
        return notice;
    }

    public List<Notice> getNotices(){
        List<Notice> notices = null;
        notices = repo.findAll();
        return notices;
    }

    //update
    @Transactional
    public Notice updateNotice(int code, NoticeRequestDto dto){
        Notice notice = getNotice(code);
        notice.update(dto);
        return notice;
    }

    //delete
    public int deleteNotice(int code){
//        Notice notice = getNotice(code);
//        repo.deleteById(notice.getCode());
//        return notice.getCode();
        repo.deleteById(code);
        return code;
    }
}
