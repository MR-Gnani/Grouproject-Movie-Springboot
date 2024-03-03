<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>
   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
<link rel="stylesheet" href="/css/search.css" />
<section class="header-padding">
     <div id="searcher">
        <input
          id="search-input"
          class="task-input"
          placeholder="영화 제목 또는 키워드를 입력해보세요."
          type="text"
        />
        <button id="search-button">
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>
      </div>
    <section id="searched-list"></section>
    <nav aria-label="Page navigation example">
      <ul class="pagination pagination-sm"></ul>
    </nav>
 </section>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>

<!-- 자바스크립트 -->
    <script src="/js/search.js"></script>
<%@ include file="../layout/footer.jsp"%>