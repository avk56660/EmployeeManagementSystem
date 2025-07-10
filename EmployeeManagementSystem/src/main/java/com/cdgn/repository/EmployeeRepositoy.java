package com.cdgn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cdgn.model.Employee;
@Repository
public interface EmployeeRepositoy extends JpaRepository<Employee, Integer> {

	boolean existsByEmailAndPassword(String email, String password);
	Employee findByEmail(String email);
	
	

}
