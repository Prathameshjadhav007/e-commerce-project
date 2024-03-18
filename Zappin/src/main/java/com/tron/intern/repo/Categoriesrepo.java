package com.tron.intern.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tron.intern.entity.Categories;

@Repository
public interface Categoriesrepo extends JpaRepository<Categories, Integer> {

}
