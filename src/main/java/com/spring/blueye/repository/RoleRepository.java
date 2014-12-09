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
package com.spring.blueye.repository;

import java.util.List;


import org.springframework.dao.DataAccessException;

import com.spring.blueye.model.NamedEntity;
import com.spring.blueye.model.UserRole;

public interface RoleRepository {

    /**
     * Retrieve all <code>RoleType</code>s from the data store.
     *
     * @return a <code>Collection</code> of <code>RoleType</code>s
     */
    List<UserRole> findRoleTypes() throws DataAccessException;
    
    /**
     * Retrieve an <code>UserRole</code> from the data store by id.
     *
     * @param id the id to search for
     * @return the <code>UserRole</code> if found
     * @throws org.springframework.dao.DataRetrievalFailureException
     *          if not found
     */
    UserRole findById(int id) throws DataAccessException;
    /**
     * Save an <code>UserRole</code> to the data store, either inserting or updating it.
     *
     * @param owner the <code>UserRole</code> to save
     * @see NamedEntity#isNew
     */
    void save(UserRole role) throws DataAccessException;
    
}
