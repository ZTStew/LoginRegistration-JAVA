package com.stewart.LoginReg.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.stewart.LoginReg.models.User;
import com.stewart.LoginReg.repositories.UserRepository;

@Service
public class UserService {
	private final UserRepository userRepo;
	
	public UserService(UserRepository userRepo) {
		this.userRepo = userRepo;
	}
	
//	C - Create
	public User createUser(User user) {
		return userRepo.save(user);
	}
	
//	R - Read
	public List<User> findAllUsers(){
		return userRepo.findAllUsers();
	}
	
	public User findUserById(Long id) {
		Optional<User> optionalUser = userRepo.findUserById(id);
		if(optionalUser.isPresent()) {
			return optionalUser.get();
		} else {
			return null;
		}
	}
	
	public User findByEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
//	U - Updated
	public User updateUser(User diffUser) {
		return userRepo.save(diffUser);
	}
	
//	D - Delete
	public void deleteUserById(Long id) {
		userRepo.deleteById(id);
	}
	
	

}
