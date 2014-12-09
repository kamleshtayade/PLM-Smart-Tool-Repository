package com.spring.blueye.repository;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.blueye.model.Dashboard;

public interface Repository {

	Iterable<Dashboard> findAll();
	

}
