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

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.spring.blueye.model.User;
import com.spring.blueye.repository.UserRepository;

/**
 * Spring Data JPA specialization of the {@link OwnerRepository} interface
 * 
 * @author Kamlesh Tayade
 * @since 10.7.2013
 */
public interface UserRepositoryData extends UserRepository,
		Repository<User, Integer> {

	@Override
	@Query("SELECT DISTINCT user FROM User user WHERE user.lastName LIKE :lastName%")
	public Collection<User> findByLastName(@Param("lastName") String lastName);
	
	@Override
	@Query("SELECT DISTINCT user FROM User user WHERE user.email LIKE :email%")
	public Collection<User> findByEmail(@Param("email") String email);

	@Override
	@Query("SELECT DISTINCT user FROM User user WHERE user.id =:id")
	public User findById(@Param("id") int id);	

}
