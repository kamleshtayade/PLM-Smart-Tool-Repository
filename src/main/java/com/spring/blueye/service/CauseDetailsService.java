package com.spring.blueye.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.blueye.model.IssueCause;

public interface CauseDetailsService {
	public List<IssueCause> findByIssueId(int id) throws DataAccessException;

}
