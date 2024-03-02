<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
<link rel="stylesheet" href="/css/profile.css">


  <!-- middle -->
  <section class="header-height"> 
  <div class="user_information">
    <img src="/images/img7.jpg" alt="">    
    <div class="user_text">
      <div class="first_text">   
        <div>
          <input type="text" id="username">          
        </div>     
        <div>
          <a href="/user/${principal.user.id}/update"> 회원정보 수정 </a>       
        </div>
      </div>
      <div class="second_text">
        <span>보유중인 Cash</span>
        <span>보유중인 Cash가 없습니다.</span>
      </div>
    </div>
  </div>  
  </section>

 <section class="category-area">
    <div class="category_list"> 
        
      <div id="select_list">
        <h2>찜 목록</h2>
      </div>
      
      <div id="buy_list">
        <h2>구매내역</h2>
      </div>
      
      <div id="qs_list">
        <h2>문의내역</h2>
      </div>
      
    </div>
    
    <!-- 찜리스트 목록 출력 start -->
	<div class="like-List" id="likeList">
	   
	</div>
	<!-- 찜리스 목록 출력 end -->
    
 </section>
    

	
	<script src="/js/profile.js"></script>
    <!-- moment (시간)-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.0/moment.min.js"></script>
    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="../layout/footer.jsp"%>
