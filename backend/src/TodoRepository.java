package com.todo;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface TodoRepository extends JpaRepository<Todo, Long> {
    // Custom finder for the optional filtering requirement
    List<Todo> findByCompleted(boolean completed);
}