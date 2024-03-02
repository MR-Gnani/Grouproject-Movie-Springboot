package com.nani.movie.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface LikesRepository extends JpaRepository<Likes, Integer> {
	
    @Query(value ="SELECT * FROM likes WHERE userId = :userId AND movieId = :movieId", nativeQuery = true)
    Likes selectLikeInfo(int userId,String movieId);
	
	@Modifying
	@Query(value = "INSERT INTO likes(movieId, userId, createDate) VALUES(:movieId, :principalId, now())", nativeQuery = true)
	int mLikes(int movieId, int principalId);
	
	@Modifying
	@Query(value = "DELETE FROM likes WHERE movieId = :movieId AND userId = :principalId", nativeQuery = true)
	int mUnlikes(int movieId, int principalId);
	
}
