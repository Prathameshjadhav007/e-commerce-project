package com.tron.intern.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tron.intern.entity.Subcategories;

@Repository
public interface Subcategoriesrepo extends JpaRepository<Subcategories, Integer> {

}
