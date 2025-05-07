<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${movie.title}</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <header class="header">
        <h1>영화 상세 정보</h1>
    </header>
    <div class="movie-detail">
        <div class="movie-detail-card">
            <div class="movie-detail-header">
                <h1>${movie.title}</h1>
            </div>
            <div class="movie-detail-info">
                <div class="movie-detail-meta">
                    <p><strong>개봉일:</strong> ${movie.releaseDate}</p>
                    <p><strong>평점:</strong> <span class="rating">★ ${movie.rating}</span></p>
                </div>
                <div class="movie-detail-overview">
                    <h2>줄거리</h2>
                    <p>${movie.overview}</p>
                </div>
            </div>
            <a href="/" class="back-button">목록으로 돌아가기</a>
        </div>
    </div>
</body>
</html>
