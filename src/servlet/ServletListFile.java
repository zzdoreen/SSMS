package servlet;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletListFile extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��ȡ�ϴ��ļ���Ŀ¼
		String uploadFilePath=this.getServletContext().getRealPath("/WEB-INF/upload");
		//�洢Ҫ���ص��ļ���
		Map<String,String> fileNameMap=new HashMap<String, String>();
		/*
		 * �ݹ����filepathĿ¼�µ������ļ���Ŀ¼�����ļ����ļ����洢��map������
		 */
		//file�ȿ��Դ���һ���ļ�Ҳ���Դ���һ��Ŀ¼
		listFile(new File(uploadFilePath),fileNameMap);
		//��map���Ϸ��͵�listFile.jspҳ�������ʾ
		request.setAttribute("fileNameMap", fileNameMap);
		request.getRequestDispatcher("admin/fileList.jsp").forward(request, response);
	}

	private void listFile(File file, Map<String, String> fileNameMap) {
		//���file����Ĳ���һ���ļ�������һ��Ŀ¼
		if(!file.isFile()){
			//�г���Ŀ¼�µ������ļ���Ŀ¼
			File files[]=file.listFiles();
			//����files����
			for(File f:files){
				//�ݹ�
				listFile(f,fileNameMap);
			}
		}else{
			/**
             * �����ļ������ϴ�����ļ�����uuid_�ļ�������ʽȥ���������ģ�ȥ���ļ�����uuid_����
                file.getName().indexOf("_")�����ַ����е�һ�γ���"_"�ַ���λ�ã�
                	����ļ��������ڣ�9349249849-88343-8344_��_��_��.avi
                	��ôfile.getName().substring(file.getName().indexOf("_")+1)
                	����֮��Ϳ��Եõ���_��_��.avi����
             */
			String realName=file.getName().substring(file.getName().indexOf("_")+1);
			 //file.getName()�õ������ļ���ԭʼ���ƣ����������Ψһ�ģ���˿�����Ϊkey��realName�Ǵ����������ƣ��п��ܻ��ظ�
			fileNameMap.put(file.getName(), realName);

		}
		
	}

}
