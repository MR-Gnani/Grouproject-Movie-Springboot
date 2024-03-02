package com.nani.movie.domain;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Likes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // 번호 증가 전략
	private int id;
	
	@JoinColumn(name="userId")
	@ManyToOne
	private User user;
	
	private int movieId;
	
	private LocalDateTime createDate;
	
	@PrePersist // 디비에 INSERT되기 전에 실행
	public void createDate() {
		this.createDate = LocalDateTime.now();
	}
	
	
}
