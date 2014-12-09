/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.spring.blueye.repository.springdatajpa;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.spring.blueye.model.User;
import com.spring.blueye.model.UserRole;
import com.spring.blueye.repository.RoleRepository;

/**
 * Spring Data JPA specialization of the {@link RoleRepository} interface
 *
 * @author Kamlesh 
 * @since 8.3.2013
 */
public interface RoleRepositoryData extends RoleRepository, Repository<UserRole, Integer> {

    @Override
    @Query("SELECT type FROM UserRole type ORDER BY type.name")
    List<UserRole> findRoleTypes()throws DataAccessException;
    
	@Override
	@Query("SELECT DISTINCT user FROM UserRole user WHERE user.id =:id")
	public UserRole findById(@Param("id") int id);
}
