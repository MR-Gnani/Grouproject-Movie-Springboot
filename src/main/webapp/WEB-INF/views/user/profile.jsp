<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>

<section class="profile-section">
<h1>유저프로필</h1><br>
<h5>id : ${principal.user.id }</h5><br>
<h5>username : ${principal.user.username}</h5><br>
<h5>email : ${principal.user.email}</h5><br>
<h5>phonenumber : ${principal.user.phone}</h5><br>


</section>





</body>
