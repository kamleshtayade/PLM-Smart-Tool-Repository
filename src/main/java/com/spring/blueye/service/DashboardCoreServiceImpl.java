package com.spring.blueye.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.blueye.model.Dashboard;
import com.spring.blueye.repository.Repository;

@Service
public class DashboardCoreServiceImpl implements DashboardCoreService {

	private Repository repository;

	@Autowired
	public DashboardCoreServiceImpl(Repository repository) {
		this.repository = repository;

	}

	@Override
	@Transactional(readOnly = true)
	public Iterable<Dashboard> findAll() throws DataAccessException {
		return repository.findAll();
	}
}
