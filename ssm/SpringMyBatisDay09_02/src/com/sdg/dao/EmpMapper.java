package com.sdg.dao;


import com.sdg.annotation.MyAnnotation;
import com.sdg.entity.Emp;

@MyAnnotation
public interface EmpMapper {
	void addEmp(Emp emp);
	
	Emp findEmpAndDeptByEmpnoOne(int empno);
	
	Emp findEmpAndDeptByEmpnoTwo(int empno);
}
