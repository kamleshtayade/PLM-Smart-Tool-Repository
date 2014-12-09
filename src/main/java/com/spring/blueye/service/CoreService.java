package com.spring.blueye.service;

import java.util.Collection;
import org.springframework.dao.DataAccessException;
import com.spring.blueye.model.Status;
import com.spring.blueye.model.User;
import com.spring.blueye.model.UserRole;

/**
 * Mostly used as a facade for all core Blueye controllers
 * 
 * @author Kamlesh Tayade
 */

public interface CoreService {

	public User findUserById(int id) throws DataAccessException;

	public void saveUser(User user) throws DataAccessException;

	Collection<User> findUserByLastName(String lastName)
			throws DataAccessException;
	
	Collection<User> findUserByEmail(String email)
			throws DataAccessException;
	
	public void saveUserRole(UserRole role) throws DataAccessException;
	
	public Collection<UserRole> findRoleTypes() throws DataAccessException;
	
	public UserRole findUserRoleById(int id) throws DataAccessException;
	
	public Collection<Status> findStatusTypes() throws DataAccessException;

}
