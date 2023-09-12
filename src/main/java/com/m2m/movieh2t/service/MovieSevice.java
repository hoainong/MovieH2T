package com.m2m.movieh2t.service;

import com.m2m.movieh2t.entity.Movie;

import java.util.List;

public interface MovieSevice {
    List<Movie> findAll();
    Movie findById(Integer id);

    Movie findOne(Integer id);
}
