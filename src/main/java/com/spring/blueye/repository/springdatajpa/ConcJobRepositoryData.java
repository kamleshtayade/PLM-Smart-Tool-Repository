package com.spring.blueye.repository.springdatajpa;

import org.springframework.data.repository.CrudRepository;
import com.spring.blueye.model.ConcurrentJob;
import com.spring.blueye.repository.ConcJobRepository;
import com.spring.blueye.repository.RoleRepository;

public interface ConcJobRepositoryData extends ConcJobRepository,
		CrudRepository<ConcurrentJob, Integer> {
	/**
	 * Spring Data JPA specialization of the {@link RoleRepository} interface
	 * 
	 * @author Dipika
	 */
	@Override
	public Iterable<ConcurrentJob> findAll();

	
}
