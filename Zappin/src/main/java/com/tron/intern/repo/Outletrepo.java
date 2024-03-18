package com.tron.intern.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tron.intern.entity.Outlet;

@Repository
public interface Outletrepo extends JpaRepository<Outlet, Integer> {

}
