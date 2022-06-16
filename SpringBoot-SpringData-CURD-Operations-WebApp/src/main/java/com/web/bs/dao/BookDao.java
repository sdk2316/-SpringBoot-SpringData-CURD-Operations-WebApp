package com.web.bs.dao;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.web.bs.entity.BookEntity;
import java.lang.String;
import java.util.List;

/**
 * This interface implemented methods performs CURD operations with
 * BOOK_STORE_TBL
 * 
 * @author Ashok
 *
 */
@Repository("bookDao")
public interface BookDao extends JpaRepository<BookEntity, Serializable> {
	// Spring Data provides implementation for our BookDao interface

	List<BookEntity> findByBookIsbn(String bookisbn);
}
