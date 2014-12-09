package com.spring.blueye.repository;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.blueye.model.IssueCause;

public interface CauseDetailsRepository {
	List<IssueCause> findByIssueId(int id) throws DataAccessException;
}
