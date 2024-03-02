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
      <div class="paginationArrow">
        <svg onclick="fetchPopularMovies()" xmlns="http://www.w3.org/2000/svg" style="color:darkgray;" width="2em" height="2em" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
          <path d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
        </svg>
        <svg onclick="fetchPopularMovies()" xmlns="http://www.w3.org/2000/svg" style="color:darkgray;" width="2em" height="2em" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
          <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
        </svg>
      </div>
      <div class="category-title" style="font-size: 1em;">대한민국 TOP 10 콘텐츠</div>
      <section class="today-top-10-movie">
        <div class='top-10-side bbb'>
          <div class="top-10-side-img bbbb" >1</div>
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
      <div class="paginationArrow">
        <svg onclick="paginationRender(todayMovieArr,'left')" style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
          <path d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
        </svg>
        <svg onclick="paginationRender(todayMovieArr,'right')" style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
          <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
        </svg>
      </div>
      <div class="category-title"style="font-size: 1em;">내가 찜한 영화</div>
      <section>
       
      </section>
      <div class=" category-change" onclick="categoryChangeRender('category-change', 'category-movie')">
        <div class="category-change-title" style="font-size: 1em"># 호러</div>
        <div><svg  class="category-change-arrow " style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.8em" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
          <path d="M6 12.796V3.204L11.481 8zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753"/>
        </svg></div>
      </div>
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
      <div class="paginationArrow">
        <svg onclick="paginationRender(changeMovieArr,'left')" style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
          <path d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
        </svg>
        <svg onclick="paginationRender(changeMovieArr,'right')" style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
          <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
        </svg>
      </div>
      <div class=" category-change" onclick="categoryChangeRender('category-change', 'category-movie')">
        <div class="category-change-title" style="font-size: 1em"># 상영중영화</div>
        
      </div>
      <section class="latest-movie-view category-movie">
        
      </section>
      <div class="paginationArrow">
        <svg onclick="paginationRender(latestMovieArr,'left')" style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
          <path d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
        </svg>
        <svg onclick="paginationRender(latestMovieArr,'right')" style="color:darkgray;" xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
          <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
        </svg>
      </div>
      <!-- <div class="category-title" style="font-size: 0.8em"># 액션</div>
      <section class="action-movie-view category-movie">
       
      </section> -->
      <section class="scroll-end">
    </section>
    </div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  		</section>
      </section>
</main>

<!-- 자바스크립트 -->
    <script src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>