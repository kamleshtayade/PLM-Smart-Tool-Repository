package com.spring.blueye.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.blueye.model.ConcurrentJob;
import com.spring.blueye.repository.ConcJobRepository;

@Service
public class ConcJobServiceImpl implements ConcJobService {

	private ConcJobRepository concJobRepository;

	@Autowired
	public ConcJobServiceImpl(ConcJobRepository concJobRepository) {
		this.concJobRepository = concJobRepository;

	}

	@Override
	@Transactional(readOnly = true)
	public Iterable<ConcurrentJob> findAll() throws DataAccessException {
		return concJobRepository.findAll();
	}
}
