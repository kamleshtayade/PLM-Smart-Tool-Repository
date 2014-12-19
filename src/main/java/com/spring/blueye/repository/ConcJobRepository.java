package com.spring.blueye.repository;



import com.spring.blueye.model.ConcurrentJob;

public interface ConcJobRepository {
	Iterable<ConcurrentJob> findAll();

}
