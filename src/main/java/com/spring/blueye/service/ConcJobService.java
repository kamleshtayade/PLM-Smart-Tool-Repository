package com.spring.blueye.service;


import org.springframework.dao.DataAccessException;
import com.spring.blueye.model.ConcurrentJob;

public interface ConcJobService {
	Iterable<ConcurrentJob> findAll() throws DataAccessException;
}
