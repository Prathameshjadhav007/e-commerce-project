package com.tron.intern.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tron.intern.entity.Cartitem;

public interface Cartitemrepo extends JpaRepository<Cartitem, Integer> {

}
