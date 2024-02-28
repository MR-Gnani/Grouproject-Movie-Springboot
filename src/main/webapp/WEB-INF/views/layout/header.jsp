<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> Nooning </title>

	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Style -->
	<link rel="stylesheet" href="/css/header.css">
	<link rel="stylesheet" href="/css/sign.css">
	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/profile.css">
	<link rel="stylesheet" href="/css/detail.css">
	<link rel="stylesheet" href="/css/search.css">
	<link rel="stylesheet" href="/css/footer.css">
	
	<!-- Fontawesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
	
	<!-- principalId 담기 -->
	<input type="hidden"  id="principalId" value="${principal.user.id}"/>
	
	<header class="header">
		<div class="container">
			<a href="/" class="logo">
				<span> NOONING </span>
			</a>
			<nav class="navi">
				<ul class="navi-list">
					<li class="navi-item"><a href="/">
							<i class="fa fa-search" aria-hidden="true"></i>
						</a></li>
					<li class="navi-item"><a href="/user/${principal.user.id}">
							<i class="far fa-user"></i>
						</a></li>
					<li class= "navi-item"><a onclick="popup('.modal-info')">
							<i class="fas fa-cog"></i>
						</a></li>
					
				</ul>
			</nav>
		</div>
	</header>

<!--로그아웃, 회원정보변경 모달-->
<!--  <div class="modal-info" onclick="modalInfo()">
	<div class="modal">
		<button onclick="location.href='/user/1/update'">회원정보 변경</button>
		<button onclick="location.href='/logout'">로그아웃</button>
		<button onclick="closePopup('.modal-info')">취소</button>
	</div>
</div> -->
<!--로그아웃, 회원정보변경 모달 end-->

	<script src="/js/header.js"></script>