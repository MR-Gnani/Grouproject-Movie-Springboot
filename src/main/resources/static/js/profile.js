// 변수 리스트
let likeList = $(`#likeList`);
let baseUrl = new URL(`https://api.themoviedb.org/3/movie`);
let movieList =[];

// 백엔드 찜 리스트 데이터 가져오기
const getLikeList = ()=>{
		$.ajax({
			url: `/api/user/likeList`,
			dataType: "json"
		}).done((result) => {
			console.log(result);
	        // 각 객체에서 movieId 추출하여 배열에 추가
	        result.data.forEach((like) => {
	            movieList.push(like.movieId);
	        });
	        for(var i=0; i<movieList.length; i++){
				let url = "https://api.themoviedb.org/3/movie/"+movieList[i]+"?language=ko-KR";
				let idData = "";

				fetchData(url).then((data) => {
					  idData = data;
					  idDataRenderList = "";
					  listRender(data);
				});
			}   
		}).fail(error=>{
			console.log("오류", error);
		});
}

const fetchData = (url) => {
  const options = {
    method: "GET",
    headers: {
      accept: "application/json",
      Authorization:
        "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOGQxOGFkNWQ4YjYzYjNmYjY0NjY2NWNmODc4ZGQ0OSIsInN1YiI6IjY1NGIzYjM2Mjg2NmZhMDBmZTAxNzNkZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.D3qxPqwPR55bduPDEpwBBz27tng-T9UsVkFnrF6v6Ag",
    },
  };
  return fetch(url, options)
    .then((response) => response.json())
    .catch((err) => console.error(err));
};

const listRender = (data) => {
	// let imgUrl = "https://image.tmdb.org/t/p/w200";
	// let imgAddress = data.poster_path;
	// let imgAddressResults = `${imgUrl}${imgAddress}`
	
	let listItem=`
                <div class=movie-box id="likeMovieBox">

                    <div class="likeImg-box">
                        <img src="https://image.tmdb.org/t/p/w300${data.poster_path}" alt="">
                    </div>

                    <div class="likeHeart-box">
                        <div class="date-section"> 2024.03.02 sat</div>
                        <i class="fa-solid fa-heart full_heart"  id="likeIcon-${data.id}" onclick="toggleLike(${data.id})"></i>
                    </div>

                </div>
        `;
        
        likeList.append(listItem);
}

 const renderAllDetails = async () => {
	 getLikeList();
	 for (const movieId of movieList) {
        await fetchData(movieId);
    }
};

renderAllDetails();

// 찜목록 해제
function toggleLike(movieId) {
		$.ajax({
			type: "delete",
			url: `/api/detail/${movieId}/likes`,
			dataType: "json"
		}).done(res=>{
			location.reload();
		}).fail(error=>{
			console.log("오류", error);
		});		
}






