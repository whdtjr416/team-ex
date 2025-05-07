package com.study.springboot.dto;

import lombok.Data;

@Data
public class MovieDTO {
    private Long id;
    private String title;
    private String overview;
    private String releaseDate;
    private Double rating;
}
