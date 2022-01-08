package com.example.travel.controller;

import com.example.travel.domain.comment.Comment;
import com.example.travel.domain.comment.CommentRequestDto;
import com.example.travel.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequiredArgsConstructor
@RestController

public class CommentController {

    private final CommentService service;

    //CRUD
    // 1.create
    @PostMapping("/v1/addComment")
    public Comment addComment(@RequestBody CommentRequestDto dto , HttpServletRequest request) {

        return service.addComment(dto);
    }

    @GetMapping("/v1/getComments")
    public List<Comment> getComments() {
        return service.getComments();
    }

    @DeleteMapping("/v1/deleteComment/{code}")
    public int deleteComment(@PathVariable int code) {
        return service.deleteComment(code);
    }
}
