<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 검색 결과</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="search-form">
        <form action="/search" method="get">
            <input type="text" name="query" value="${searchQuery}" placeholder="영화 검색...">
            <button type="submit">검색</button>
        </form>
    </div>

    <div class="movie-section">
        <h2>"${searchQuery}" 검색 결과</h2>
        <div class="movie-grid">
            <c:forEach items="${movies}" var="movie">
                <div class="movie-card">
                    <a href="/movie/${movie.id}">
                        <c:choose>
                            <c:when test="${not empty movie.posterPath}">
                                <img src="${movie.posterFullPath}" alt="${movie.title}">
                            </c:when>
                            <c:otherwise>
                                <div class="no-image">이미지 없음</div>
                            </c:otherwise>
                        </c:choose>
                        <h3>${movie.title}</h3>
                    </a>
                    <p>평점: ${movie.voteAverage}</p>
                    <p>개봉일: ${movie.releaseDate}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
