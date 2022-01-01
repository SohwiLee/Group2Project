package com.example.travel.service;

import com.example.travel.domain.Place;
import com.example.travel.domain.PlaceRepository;
import com.example.travel.domain.PlaceRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PlaceService {

    @Autowired
    private final PlaceRepository repo;

    //create
    public Place addPlace(PlaceRequestDto dto){
        Place place = new Place(dto);
        return repo.save(place);
    }

    //read
    public Place getPlace(int code){
        Place place = null;
        place = repo.findById(code).orElseThrow(
                () -> new IllegalArgumentException("존재X")
        );
        return place;
    }

    public List<Place> getPlaces(){
        List<Place> places = null;
        places = repo.findAll();
        return places;
    }

    //update
    @Transactional
    public Place updatePlace(int code, PlaceRequestDto dto){
        Place place = getPlace(code);
        place.update(dto);
        return place;
    }

    // delete
    public int deletePlace(int code){
        Place place = getPlace(code);
        repo.deleteById(place.getCode());
        return place.getCode();
    }
}
