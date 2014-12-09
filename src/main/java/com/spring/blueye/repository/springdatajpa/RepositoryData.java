package com.spring.blueye.repository.springdatajpa;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.spring.blueye.model.Dashboard;
import com.spring.blueye.model.IssueDetails;
import com.spring.blueye.repository.Repository;
import com.spring.blueye.repository.RoleRepository;

public interface RepositoryData extends Repository,
		CrudRepository<Dashboard, Integer> {
	/**
	 * Spring Data JPA specialization of the {@link RoleRepository} interface
	 * 
	 * @author Kamlesh
	 * @since 8.3.2013
	 */
	@Override
	public Iterable<Dashboard> findAll();


}
