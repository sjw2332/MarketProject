package com.cos.marketProject.domain.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface UserRepository extends JpaRepository<User, Integer> {

	// --------------------------------------현래 -----------------------------
	@Query(value = "insert into user (username, password, email) values(:username, :password, :email)", nativeQuery = true)
	void join(String username, String password, String email);
	
	@Query(value = "select * from user where email = :email and password = :password", nativeQuery = true)
	User mLogin(String email, String password);	
		
	// 비밀번호 변경 쿼리
	
	@Query(value = "select * from user where name = :name and phone = :phone and email = :email", nativeQuery = true)
	User mPWFind(String name, String phone, String email);
	
	@Query(value = "update user set password = :password  where id = :id", nativeQuery = true)
	User mChangePw(int id, String password);		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// --------------------------------------현래 끝 -----------------------------
		// --------------------------------------정인 -----------------------------
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// --------------------------------------정인 끝 -----------------------------
}
