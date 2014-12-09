package com.spring.blueye.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.blueye.model.IssueDetails;
import com.spring.blueye.repository.IssueDetailsRepository;

@Service
public class IssueDetailsServiceImpl implements IssueDetailsService {

	private IssueDetailsRepository issueDetailRepository;

	@Autowired
	public IssueDetailsServiceImpl(IssueDetailsRepository issueDetailRepository) {
		this.issueDetailRepository = issueDetailRepository;

	}

	@Override
	@Transactional(readOnly = true)
	public Iterable<IssueDetails> findAll() throws DataAccessException {
		return issueDetailRepository.findAll();
	}

	@Override
	public List<IssueDetails> findById(int id) throws DataAccessException {
		return issueDetailRepository.findByPlmId(id);
	}

	@Override
	public List<IssueDetails> findByIssueId(int id) throws DataAccessException {
		return issueDetailRepository.findByPlmId(id);
	}
	
	@Override
	public List<IssueDetails> issueCount(int id) throws DataAccessException {
		return issueDetailRepository.issueCount(id);
	}

}
