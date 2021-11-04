package com.cos.marketProject.domain.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface UserRepository extends JpaRepository<User, Integer> {

	// --------------------------------------현래 -----------------------------
	@Query(value = "insert into user (username, password, email) values(:username, :password, :email)", nativeQuery = true)
	void join(String username, String password, String email);
	
	@Query(value = "select * from user where email = :email and password = :password", nativeQuery = true)
	User mLogin(String email, String password);	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// --------------------------------------현래 끝 -----------------------------
		// --------------------------------------정인 -----------------------------
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// --------------------------------------정인 끝 -----------------------------
}
