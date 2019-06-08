package dao;

import java.util.List;

import model.PageBean;
import model.Student;

public interface StudentDao {
	
	int addStu(Student student);
	
	int deleteStu(String stuNum);
	
	int editStu(Student student);
	
	List findAll();
	
	List findOne(String userNum);
	
	public PageBean stuListPage(int pageNo, int pageCount);

}
