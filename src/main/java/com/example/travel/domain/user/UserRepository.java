package com.example.travel.domain.user;

// JpaRepository : SQL 문을 직접 쓰지 않고 -> Java 메소드로 -> 쿼리 실행을 할 수 있게 해줌

// JpaRepository 상속
// extends JpaRepository<Entity Type , PK Type>

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User , Integer> {
}
