package com.m2m.movieh2t.dao;

import com.m2m.movieh2t.entity.Movie;

import java.util.List;

public interface MovieDao  {
    List<Movie> findAll();

    Movie findById(Integer id);

    Movie findOne(Integer id);
}
