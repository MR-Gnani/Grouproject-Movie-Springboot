const urlParams = new URLSearchParams(window.location.search);
const movieId = urlParams.get("movieId");
let movies = [];
let baseUrl = new URL(`https://api.themoviedb.org/3/movie`);
let likeInfo = $('#likeInfo').val();

console.log(likeInfo);
/* (() => {
  const wrapEl = document.querySelector(".deepWrap");
  const FULL_HEART = '<i class="fa-solid fa-heart full_heart"></i>';
  const EMPTY_HEART = '<i class="fa-regular fa-heart empty_heart"></i>';
  const heartHandler = (e) => {
    // console.log(e.target.parentNode);//부모로 접근하여 하트를 클릭 / 내용은 innerHTML로 넣기
    const heartEl = e.target.parentNode;

    if (e.target.classList.contains("fa-regular")) {
      heartEl.innerHTML = FULL_HEART;
    } else if (e.target.classList.contains("fa-solid")) {
      heartEl.innerHTML = EMPTY_HEART;
    }
  };
  wrapEl.addEventListener("click", heartHandler);
})(); */

// 찜 목록 등록
function toggleLike(movieId) {
	console.log(movieId);
	let likeIcon = $(`#likeIcon-${movieId}`);
	
	if (likeIcon.hasClass("fa-regular")) { //좋아요가 안된 상태, 좋아요 누르겠다.
		
		$.ajax({
			type: "post",
			url: `/api/detail/${movieId}/likes`,
			dataType: "json"
		}).done(res=>{
			
			likeIcon.removeClass("fa-regular");
			likeIcon.removeClass("empty_heart");
			likeIcon.addClass("fa-solid");
			likeIcon.addClass("full_heart");

		}).fail(error=>{
			console.log("오류", error);
		});

	} else { //좋아요가 된 상태, 좋아요 취소하겠다.
		$.ajax({
			type: "delete",
			url: `/api/detail/${movieId}/likes`,
			dataType: "json"
		}).done(res=>{
				
			likeIcon.removeClass("fa-solid");
			likeIcon.removeClass("full_heart");
			likeIcon.addClass("fa-regular");
			likeIcon.addClass("empty_heart");
			
		}).fail(error=>{
			console.log("오류", error);
		});	
	}
}

const detailRender = async (movieId) => {
  // console.log(movieId);
  // window.location.href = "detail.html?id=" + movieId;

  try {
    // const htmloptions = {
    //   method: "GET",
    //   header: {
    //     accept: "text/html",
    //   },
    // };
    // const html = "detail.html";
    // const htmlResponse = await fetch(html, htmloptions);
    // const htmlText = await htmlResponse.text();

    // const parser = new DOMParser();
    // const detailDoc = parser.parseFromString(htmlText, "text/html");

    // const detailWrap = detailDoc.getElementById("detailWrap");
    // if (!detailWrap) {
    //   console.error("찾을 수 없습니다.");
    //   return;
    // }

    const options = {
      method: "GET",
      headers: {
        accept: "application/json",
        Authorization:
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOGQxOGFkNWQ4YjYzYjNmYjY0NjY2NWNmODc4ZGQ0OSIsInN1YiI6IjY1NGIzYjM2Mjg2NmZhMDBmZTAxNzNkZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.D3qxPqwPR55bduPDEpwBBz27tng-T9UsVkFnrF6v6Ag",
      },
    };
    baseUrl = `https://api.themoviedb.org/3/movie/${movieId}?language=ko-KR&page=1`;
    const data = await fetch(baseUrl, options).then((response) =>
      response.json()
    );
    console.log(data);
    movies = data;
    let detailHTML = `
          <div class="moiveImg">
            <img
              src="https://image.tmdb.org/t/p/original${movies.backdrop_path}"
              alt=""
            />
            <div class="background"></div>
            <div class="imgBottom">
              <div class="titleWrap">
                <h1 id="movie-title">${movies.title}</h1>
                <p id="movie-year">${movies.release_date}</p>
                <p id="movie-v"><i class="fa-solid fa-star"></i>${movies.vote_average.toFixed(
                  1
                )}</p>
                <div class="deepWrap">`;
                
                if(likeInfo == "empty"){
					detailHTML+=` <div class="deepBtn"><i class="fa-regular fa-heart" id="likeIcon-${movies.id}" onclick="toggleLike(${movies.id})"></i></div>`;
				}else{
					detailHTML+=` <div class="deepBtn"><i class="fa-solid fa-heart full_heart" id="likeIcon-${movies.id}" onclick="toggleLike(${movies.id})"></i></div>`;
				}

               detailHTML+= `<p>찜하기</p>
              </div>
                <div id="detail-description">
                  <h5>작품정보</h5>
                  <p>${movies.overview}</p>
                </div>
              </div>
              <div class="posterWrap">
              <img src="https://image.tmdb.org/t/p/w300${
                movies.poster_path
              }" alt="">
            </div>
            </div>
          </div>
    
          </div>`;
    detailWrap.innerHTML = detailHTML;
  } catch (error) {
    console.log(error);
  }
};

detailRender(movieId);