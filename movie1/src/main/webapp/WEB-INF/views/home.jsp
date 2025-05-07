<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 목록</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <header class="header">
        <h1>영화 목록</h1>
    </header>
    <div class="movie-list">
        <c:forEach items="${movies}" var="movie">
            <div class="movie-card">
                <a href="/movie/${movie.id}">
                    <h3>${movie.title}</h3>
                    <div class="movie-info">
                        <p>개봉일: ${movie.releaseDate}</p>
                        <div class="rating">
                            <span>★ ${movie.rating}</span>
                        </div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
</body>
</html>
