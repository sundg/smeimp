package dao;

import java.util.List;

import entity.Admin;

public interface AdminDAO {
	List<Admin> findAll() throws Exception;
	//�����˺Ų�ѯ��¼
	Admin findByAdmin_code(String account) throws Exception;
}
