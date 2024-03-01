package com.nani.movie.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity // 시큐리티 파일로 활성화
@Configuration // IOC에 등록
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Bean
	public BCryptPasswordEncoder encode() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		// csrf토큰 비활성화
		http.csrf().disable();
		
		// 인증되지 않은 사용자 login페이지로 이동시킬 예정
		http.authorizeRequests()
			.antMatchers("/", "/main/**", "/user/**", "/api/**").authenticated()
			.anyRequest().permitAll()
			.and()
			.formLogin()
			.loginPage("/auth/signin") //get주소 : 로그인 페이지
			.loginProcessingUrl("/auth/signin") //post주소 : 로그인 처리
			.defaultSuccessUrl("/");
	}
}