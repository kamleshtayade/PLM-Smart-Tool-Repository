package com.spring.blueye.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring.blueye.model.IssueCause;
import com.spring.blueye.repository.CauseDetailsRepository;

@Service
public class CauseDetailsServiceImpl implements CauseDetailsService {

	private CauseDetailsRepository causeDetailsRepository;

	@Autowired
	public CauseDetailsServiceImpl(CauseDetailsRepository causeDetailsRepository) {
		this.causeDetailsRepository = causeDetailsRepository;

	}

	@Override
	public List<IssueCause> findByIssueId(int id) throws DataAccessException {
		return causeDetailsRepository.findByIssueId(id);
	}


}
