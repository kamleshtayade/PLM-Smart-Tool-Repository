package com.spring.blueye.repository.springdatajpa;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.spring.blueye.model.IssueCause;
import com.spring.blueye.repository.CauseDetailsRepository;
import com.spring.blueye.repository.RoleRepository;

public interface CauseDetailsRepositoryData extends CauseDetailsRepository,
		CrudRepository<IssueCause, Integer> {
	/**
	 * Spring Data JPA specialization of the {@link RoleRepository} interface
	 * 
	 * @author Dipika
	 */

	@Override
	@Query("SELECT issueCause FROM IssueCause issueCause WHERE issueCause.issueId =:id")
	public List<IssueCause> findByIssueId(@Param("id") int id);

}
