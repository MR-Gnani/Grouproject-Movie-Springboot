<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>
    <!-- 폰트 어썸 -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <!-- 스타일 시트 -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
	<link rel="stylesheet" href="/css/main.css">

<main class="main">
   <section class="main-container">
	<!-- start -->
	
	<section class="today-movie" style="font-size: 1.3em;">오늘의 영화</section>
      <section class="popular-movie-view">
        <!-- <div class="popular-movie">
          <img class="bbb" src="./images/back.jpg" alt="">
          <section class="text-contacts">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div>
        <div class="bbb">
          <img class="bbb" src="./images/back.jpg" alt="">
        </div><div class="bbb">
          <img class="bbb" src="./images/back.jpg" alt="">
        </div><div class="bbb">
          <img class="bbb" src="./images/back.jpg" alt="">
        </div>
        -->

      </section>
      <div class="category-title" style="font-size: 0.8em;">대한민국 TOP 10 콘텐츠</div>
      <section class="today-top-10-movie">
        <div class='top-10-side bbb'>
          <div class="top-10-side-img bbbb">1</div>
          <img class="bbb bbbb" src="${imgUrl}${imgAddress}" alt="">
        </div>
        <section class="text-contacts">
          <section class="text-title">혹성탈출</section>
          <section class='text-rate'>7.88</section>
          <section class="text-category">로맨스 공포 스릴러</section>
        </section>
        
        <div class='top-10-side bbb'>
          <div class="top-10-side-img">2</div>
          <img class="bbb" src="${imgUrl}${imgAddress}" alt="">
        </div>
        <div class='top-10-side bbb'>
          <div class="top-10-side-img">3</div>
          <img class="bbb" src="${imgUrl}${imgAddress}" alt="">
        </div>
        <div class='top-10-side bbb'>
          <div class="top-10-side-img">4</div>
          <img class="bbb" src="${imgUrl}${imgAddress}" alt="">
        </div>
        <div class='top-10-side bbb'>
          <div class="top-10-side-img">5</div>
          <img class="bbb" src="${imgUrl}${imgAddress}" alt="">
        </div>
      </section>
      <div class="category-title"style="font-size: 0.8em;">장르별 영화</div>
      <section class="category-movie">
       
      </section>
      <div class="category-title" style="font-size: 0.8em"># 호러</div>
      <section class="horror-movie-view category-movie">
        <div class = "img-box">
          <div class = "img"></div>
          <section class="text">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div>
        <div class = "img-box">
          <div class = "img"></div>
          <section class="text">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div><div class = "img-box">
          <div class = "img"></div>
          <section class="text">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div><div class = "img-box">
          <div class = "img"></div>
          <section class="text">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div><div class = "img-box">
          <div class = "img"></div>
          <section class="text">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div>
        <div class = "img-box">
          <div class = "img"></div>
          <section class="text">
            <section class="text-title">혹성탈출</section>
            <section class='text-rate'>7.88</section>
            
            <section class="text-category">로맨스 공포 스릴러</section>
          </section>
        </div>
        
      </section>
      <div class="category-title" style="font-size: 0.8em"># 코미디</div>
      <section class="comedy-movie-view category-movie">
        
      </section>
      <div class="category-title" style="font-size: 0.8em"># 액션</div>
      <section class="action-movie-view category-movie">
       
      </section>
      
    <!-- end --> 
    </section>
</main>

<!-- 자바스크립트 -->
    <script src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>