package com.example.JEE_books.repository;

import com.example.JEE_books.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {
}