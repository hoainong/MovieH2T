package com.m2m.movieh2t.dao.DaoImpl;

import com.m2m.movieh2t.dao.Dao;
import com.m2m.movieh2t.dao.MovieDao;
import com.m2m.movieh2t.entity.Movie;

import java.util.List;

public class MovieDaoimpl extends Dao<Movie> implements MovieDao {
    @Override
    public List<Movie> findAll() {
        return super.findAll(Movie.class,true);
    }

    @Override
    public Movie findById(Integer id) {
        return super.findById(Movie.class,id);
    }

    @Override
    public Movie findOne(Integer id) {
        String sql = "SELECT o FROM Movie o WHERE o.id = ?0";
        return super.findOne(Movie.class,sql,id);
    }
}
