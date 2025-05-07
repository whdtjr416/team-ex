package com.study.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.study.springboot.service.MovieService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MovieController {
    
    private final MovieService movieService;
    
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("movies", movieService.getMovieList());
        return "home";
    }
    
    @GetMapping("/movie/{id}")
    public String detail(@PathVariable Long id, Model model) {
        model.addAttribute("movie", movieService.getMovieDetail(id));
        return "detail";
    }
}
