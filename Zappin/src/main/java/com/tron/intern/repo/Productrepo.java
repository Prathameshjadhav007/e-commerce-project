package com.tron.intern.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tron.intern.entity.Product;
@Repository
public interface Productrepo extends JpaRepository<Product, Integer> {

	public List<Product> findAllByCategoryname(String category);
}
