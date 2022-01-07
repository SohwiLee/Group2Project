package com.example.travel.domain.service;

import com.example.travel.domain.comment.Comment;
import com.example.travel.domain.comment.CommentRepository;
import com.example.travel.domain.comment.CommentRequestDto;
import com.example.travel.domain.user.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service

public class CommentService {

    @Autowired
    public final CommentRepository repo;

    // Service 클래스는 비지니스 로직을 담음

    // CRUD
    // 1.create

    @Transactional
    public Comment addComment(CommentRequestDto dto) {
        Comment comment = new Comment(dto);

        comment.getContent().replace("\r\n" , "<br>");

        return repo.save(comment);
    }


    public List<Comment> getComments() {
        List<Comment> comments = null;
        comments = repo.findAll();
        return comments;
    }

    public int deleteComment(int code) {
        repo.deleteById(code);
        return code;
    }

}
