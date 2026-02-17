package com.todo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@SpringBootApplication
@RestController
@RequestMapping("/api/todos")
@CrossOrigin(origins = "http://localhost:3000", allowedHeaders = "*")
public class TodoApp {

    private final TodoRepository repository;

    public TodoApp(TodoRepository repository) {
        this.repository = repository;
    }

    public static void main(String[] args) {
        SpringApplication.run(TodoApp.class, args);
    }

    @GetMapping
    public List<Todo> getAll(@RequestParam(required = false) Boolean completed) {
        if (completed != null) return repository.findByCompleted(completed);
        return repository.findAll();
    }

    @PostMapping
    public Todo create(@RequestBody Todo todo) {
        return repository.save(todo);
    }

    @PutMapping("/{id}")
    public Todo update(@PathVariable Long id, @RequestBody Todo newData) {
        return repository.findById(id).map(todo -> {
            todo.setTitle(newData.getTitle());
            todo.setDescription(newData.getDescription());
            todo.setCompleted(newData.isCompleted());
            return repository.save(todo);
        }).orElseThrow();
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        repository.deleteById(id);
    }
}
