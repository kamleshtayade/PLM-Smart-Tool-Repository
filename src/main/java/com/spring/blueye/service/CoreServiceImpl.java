package com.spring.blueye.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.blueye.model.Status;
import com.spring.blueye.model.User;
import com.spring.blueye.model.UserRole;
import com.spring.blueye.repository.RoleRepository;
import com.spring.blueye.repository.StatusRepository;
import com.spring.blueye.repository.UserRepository;

@Service
public class CoreServiceImpl implements CoreService {
	
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private StatusRepository statusRepository;


    @Autowired
    public CoreServiceImpl(UserRepository userRepository,RoleRepository roleRepository,StatusRepository statusRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.statusRepository = statusRepository;
    }

	@Override
	@Transactional(readOnly = true)
	public User findUserById(int id) throws DataAccessException {
		// TODO Auto-generated method stub
		return userRepository.findById(id);
	}

	@Override
	@Transactional
	public void saveUser(User user) throws DataAccessException {
		userRepository.save(user);
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<User> findUserByLastName(String lastName)
			throws DataAccessException {
			return userRepository.findByLastName(lastName);
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<UserRole> findRoleTypes() throws DataAccessException {
		return roleRepository.findRoleTypes();
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<Status> findStatusTypes() throws DataAccessException {
		return statusRepository.findStatusTypes();
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<User> findUserByEmail(String email)
			throws DataAccessException {
			return userRepository.findByEmail(email);
	}

	@Override
	@Transactional
	public void saveUserRole(UserRole role) throws DataAccessException {
		roleRepository.save(role);		
	}
	
	@Override
	@Transactional(readOnly = true)
	public UserRole findUserRoleById(int id) throws DataAccessException {
		// TODO Auto-generated method stub
		return roleRepository.findById(id);
	}

}
