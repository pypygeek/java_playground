package org.project.repository;

import org.project.model.TodoEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface TodoRepository extends JpaRepository<TodoEntity, Long> {
}
