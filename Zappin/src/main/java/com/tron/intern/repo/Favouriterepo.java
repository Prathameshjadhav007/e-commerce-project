package com.tron.intern.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tron.intern.entity.Favourite;

public interface Favouriterepo extends JpaRepository<Favourite, Integer> {

}
