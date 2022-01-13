package com.example.travel.controller;

import com.example.travel.domain.place.Place;
import com.example.travel.domain.place.PlaceRequestDto;
import com.example.travel.service.PlaceService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequiredArgsConstructor
@RestController
public class PlaceController {
    private final PlaceService service;

    @GetMapping("/places")
    public String keyPlace(HttpServletRequest request, String key){
        request.setAttribute("key",key);
        return "/searchKeywords/search";
    }

    //create
    @PostMapping("v1/places")
    public Place addPlace(@RequestBody PlaceRequestDto dto){return service.addPlace(dto);}

    //read
    @GetMapping("v1/places/{code}")
    public Place getPlace(@PathVariable int code){

        return service.getPlace(code);
    }
    @GetMapping("v1/places")
    public List<Place> getPlaces(HttpServletRequest request){
        List<Place> places = service.getPlaces();
        request.setAttribute("lists",places);
        return service.getPlaces();
    }

    //update
    @PutMapping("v1/places/{code}")
    public Place updatePlace(@PathVariable int code, @RequestBody PlaceRequestDto dto){
        return service.updatePlace(code,dto);
    }

    //delete
    @DeleteMapping("v1/places/{code}")
    public int deletePlace(@PathVariable int code){return service.deletePlace(code);}
}
