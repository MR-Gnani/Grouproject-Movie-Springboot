<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>
	<!-- Fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/css/update.css">

    <!-- profile update start -->
    <main class="header-height basic">
        <section class="modify">
            <h2> 회원정보 수정 </h2>
            <div class="content-wrap">
               
                <!-- 정보 수정 란 -->
                <form id="profileUpdate" onsubmit="update(${principal.user.id}, event)">
	               	 <!-- 프로필 이미지 -->
	                <div class="imageWrap">
	                   <img src="/images/Nimage.jpeg"/>
	                </div>
                    <div class="data-inputWrap">
                        <h4>아이디</h4>
                        <span class="data-span"> ${principal.user.username} </span>
                    </div>
                    <div class="data-inputWrap">
                        <h4>이름</h4>
                        <input class="modify-idInput" type="text" name="name"
                        value="${principal.user.name}" placeholder="이름" required="required"/>
                    </div>
                    <div class="data-inputWrap">
                        <h4>이메일</h4>
                        <input class="modify-idInput" type="text" name="email"
                        value="${principal.user.email}" placeholder="nooning@nate.com" readonly="readonly"/>
                    </div>
                    <div class="data-inputWrap">
                        <h4>휴대폰 번호</h4>
                        <input class="modify-idInput" type="text" name="phone"
                        value="${principal.user.phone}" placeholder=" '-' 를 생략하고 입력해주세요 "/>
                    </div>
	                    <!-- 수정 버튼 란 -->
	                <div class="btn-wrap">
	                    <button class="modify-btn">확인</button>
	                    <button class="cancel-btn">취소</button>
	                </div>
                </form>

                

            </div>
         
        </section>
      </main>
    <!-- profile update end -->
    
    <script src="/js/update.js"></script>

<%@ include file="../layout/footer.jsp"%>
