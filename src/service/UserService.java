package service;

import java.util.List;

import model.User;

public interface UserService {
	/*
	 * ��¼��֤����ѯ���롢��ѯ��Ϣ
	 */
	User login(User user);
	/*
	 * �޸�����
	 */
	int editPwd(User user);
	/*
	 * ���
	 */
	int addUser(User user);
	/*
	 * ��ѯ�����˺���Ϣ
	 */
	List findAll();
	/*
	 * ��ѯһ���˺���Ϣ
	 */
	List selectOneUser(int userID);
	/*
	 * �޸������˺���Ϣ
	 */
	int editUser(User user);

}
