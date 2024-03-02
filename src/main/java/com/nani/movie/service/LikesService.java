package com.nani.movie.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.nani.movie.domain.Likes;
import com.nani.movie.domain.LikesRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class LikesService {

	private final LikesRepository likesRepository;
	
	public List<Likes> likeMovieList(int userId) {
		return likesRepository.myLikeList(userId);
	}
	
	public Likes likeInfo(int userId , String movieId) {
		return likesRepository.selectLikeInfo(userId, movieId);
	}
	
	
	@Transactional
	public void 좋아요(int movieId, int principalId) {
		likesRepository.mLikes(movieId, principalId);
	}
	
	@Transactional
	public void 좋아요취소(int movieId, int principalId) {
		likesRepository.mUnlikes(movieId, principalId);
	}
	
}
