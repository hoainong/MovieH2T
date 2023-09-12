package com.m2m.movieh2t.service.serviceImpl;

import com.m2m.movieh2t.dao.DaoImpl.MovieDaoimpl;
import com.m2m.movieh2t.dao.MovieDao;
import com.m2m.movieh2t.entity.Movie;
import com.m2m.movieh2t.service.MovieSevice;

import java.util.List;

public class MovieSeviceImpl implements MovieSevice {
    private MovieDao dao;
    public MovieSeviceImpl(){
        dao = new MovieDaoimpl();
    }
    @Override
    public List<Movie> findAll() {
        return dao.findAll();
    }

    @Override
    public Movie findById(Integer id) {
        return dao.findById(id);
    }

    @Override
    public Movie findOne(Integer id) {
        return dao.findOne(id);
    }
}
