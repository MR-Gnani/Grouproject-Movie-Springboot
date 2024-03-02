<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/css/profile.css">


  <!-- middle -->
  <section class="header-height"> 
  <div class="user_information">
    <img src="/images/img7.jpg" alt="">    
    <div class="user_text">
      <div class="first_text">   
        <div>
          <input type="text">          
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
        <!-- <div class="su_container">
          <div class="select_img row">
            <div class="col">
              <img src="./images/img1.jpg" alt="">
            </div>
            <div class="col">
              <img src="./images/img2.jpg" alt="">
            </div>
            <div class="col">
              <img src="./images/img3.jpg" alt="">
            </div>
            <div class="col">
              <img src="./images/img4.jpg" alt="">
            </div>
          </div>
        </div> -->
      </div>
      <div id="buy_list">
        <h2>구매내역</h2>
      </div>
      <div id="qs_list">
        <h2>문의내역</h2>
      </div>
      
    </div>
    </section>
    
    <div id="task-board">
      <div class="su_container">
          <div class="select_img row">
            <div class="col">
              <img src="./images/img1.jpg" alt="">
            </div>
            <div class="col">
              <img src="./images/img2.jpg" alt="">
            </div>
            <div class="col">
              <img src="./images/img3.jpg" alt="">
            </div>
            <div class="col">
              <img src="./images/img4.jpg" alt="">
            </div>
          </div>
        </div>
    </div>

    <!-- moment (시간)-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.0/moment.min.js"></script>
    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="../layout/footer.jsp"%>
