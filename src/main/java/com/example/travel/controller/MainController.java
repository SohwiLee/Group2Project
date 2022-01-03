package com.example.travel.controller;

import com.example.travel.domain.Place;
import com.example.travel.domain.PlaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    PlaceRepository repo;

    @GetMapping("/")
    public String index(){return "index";}


    @GetMapping("/search")
    public String search(Model model){
        model.addAttribute("lists", repo.findAll());
        return "search";}
}
