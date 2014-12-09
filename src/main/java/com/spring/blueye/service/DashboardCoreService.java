package com.spring.blueye.service;

import org.springframework.dao.DataAccessException;
import com.spring.blueye.model.Dashboard;

public interface DashboardCoreService {
	Iterable<Dashboard> findAll() throws DataAccessException;

}
