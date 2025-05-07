package com.study.springboot.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.study.springboot.dto.MovieDTO;

@Service
public class MovieService {
    
    public List<MovieDTO> getMovieList() {
        List<MovieDTO> movies = new ArrayList<>();
        // 임시 데이터
        MovieDTO movie = new MovieDTO();
        movie.setId(1L);
        movie.setTitle("샘플 영화");
        movie.setOverview("샘플 영화 설명입니다.");
        movie.setReleaseDate("2025-05-07");
        movie.setRating(4.5);
        movies.add(movie);
        
        return movies;
    }
    
    public MovieDTO getMovieDetail(Long id) {
        // 임시 데이터
        MovieDTO movie = new MovieDTO();
        movie.setId(id);
        movie.setTitle("샘플 영화 " + id);
        movie.setOverview("샘플 영화 " + id + "의 상세 설명입니다.");
        movie.setReleaseDate("2025-05-07");
        movie.setRating(4.5);
        
        return movie;
    }
}
