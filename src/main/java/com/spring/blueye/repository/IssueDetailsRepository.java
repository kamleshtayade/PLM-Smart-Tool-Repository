package com.spring.blueye.repository;

import java.util.List;
import org.springframework.dao.DataAccessException;
import com.spring.blueye.model.IssueDetails;

public interface IssueDetailsRepository {
	Iterable<IssueDetails> findAll();

	List<IssueDetails> findByPlmId(int id) throws DataAccessException;

	List<IssueDetails> findByIssueId(int id) throws DataAccessException;
	
	List<IssueDetails> issueCount(int id) throws DataAccessException;
}
