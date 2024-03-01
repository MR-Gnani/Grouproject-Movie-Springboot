<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
<link rel="stylesheet" href="/css/detail.css">


      <div class="detail-container">
        <section id="detailWrap">
          <div class="moiveImg">
            <img
              src="https://lumiere-a.akamaihd.net/v1/images/sa_pixar_virtualbg_coco_16x9_9ccd7110.jpeg?region=0,0,1920,1080&width=960"
              alt=""
            />
            <div class="background"></div>
          </div>
          <div class="imgBottom">
            <div class="titleWrap">
              <h1 id="movie-title">영화제목</h1>
              <p id="movie-year">영어제목,년도</p>
              <p id="movie-v"><i class="fa-solid fa-star"></i>평점</p>
              <div class="deepWrap">
                <div class="deepBtn"><i class="fa-regular fa-heart"></i></div>
                <p>찜하기</p>
              </div>
              <div id="detail-description">
                <h5>작품정보</h5>
                <p></p>
              </div>
            </div>
            <div class="posterWrap">
              <img src="" alt="" />
            </div>
          </div>
        </section>
      </div>


<!-- 부트 스트랩 -->
	<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
<!-- 자바스크립트 -->
    <script src="/js/detail.js"></script>
<%@ include file="../layout/footer.jsp"%>