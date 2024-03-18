package com.tron.intern.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tron.intern.entity.Offerandcoupon;

@Repository
public interface Offerandcouponrepo extends JpaRepository<Offerandcoupon, Integer> {

	public Offerandcoupon findByCouponcode(String cuppon);
}
