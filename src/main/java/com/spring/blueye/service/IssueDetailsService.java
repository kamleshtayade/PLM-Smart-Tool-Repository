package com.spring.blueye.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.blueye.model.IssueCause;
import com.spring.blueye.model.IssueDetails;

public interface IssueDetailsService {
	Iterable<IssueDetails> findAll() throws DataAccessException;

	public List<IssueDetails> findById(int id) throws DataAccessException;

	public List<IssueDetails> findByIssueId(int id) throws DataAccessException;
	
	List<IssueDetails> issueCount(int id) throws DataAccessException;

	
}
