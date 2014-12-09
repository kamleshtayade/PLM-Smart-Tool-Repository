package com.spring.blueye.repository.springdatajpa;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import com.spring.blueye.model.IssueDetails;
import com.spring.blueye.repository.IssueDetailsRepository;
import com.spring.blueye.repository.RoleRepository;

public interface IssueDetailsRepositoryData extends IssueDetailsRepository,
		CrudRepository<IssueDetails, Integer> {
	/**
	 * Spring Data JPA specialization of the {@link RoleRepository} interface
	 * 
	 * @author Dipika
	 */
	@Override
	public Iterable<IssueDetails> findAll();

	@Override
	@Query("SELECT issueDetails FROM IssueDetails issueDetails WHERE issueDetails.plmId =:id")
	public List<IssueDetails> findByPlmId(@Param("id") int id);

	@Override
	@Query("SELECT issueDetails FROM IssueDetails issueDetails WHERE issueDetails.id =:id")
	public List<IssueDetails> findByIssueId(@Param("id") int id);
	
	@Override
	@Query("SELECT count(*) FROM IssueDetails issueDetails WHERE issueDetails.id =:id")
	public List<IssueDetails> issueCount(@Param("id") int id);

}
