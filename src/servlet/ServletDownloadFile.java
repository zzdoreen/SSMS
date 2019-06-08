package servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletDownloadFile extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");*/
		//�õ�Ҫ���ص��ļ���
		String fileName=request.getParameter("fileName");
		fileName=new String(fileName.getBytes("iso8859-1"),"utf-8");
		//�ϴ����ļ���������/WEB��INF/uploadĿ¼�µ���Ŀ¼����
		String fileSaveRootPath=this.getServletContext().getRealPath("/WEB-INF/upload");
		//ͨ���ļ����ҳ��ļ�����Ŀ¼
		String path=findFileSavePathByFileName(fileName, fileSaveRootPath);
		//�õ�Ҫ���ص��ļ�
		File file=new File(path+"\\"+fileName);
		//����ļ�������
		if(!file.exists()){
			request.setAttribute("message", "�ļ������ڣ�����");
			request.getRequestDispatcher("admin/fileLoadFail.jsp").forward(request, response);
			return ;
		}
		 
		/*
		 String realname = fileName.substring(fileName.indexOf("_")+1);
	        //������Ӧͷ��������������ظ��ļ�
	        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
		*/
		//�����ļ���
		String realName=fileName.substring(fileName.indexOf("_")+1);
		
		if ("FF".equals(getBrowser(request))) {  
            // ��Ի�����������ʽ��һ����  
			realName = new String(realName.getBytes("UTF-8"),  
                    "iso-8859-1") ;  
        }  
		else{
			realName=URLEncoder.encode(realName, "utf-8");
		}
	
		//������Ӧͷ��������������ظ��ļ�
		response.setHeader("content-disposition", "attachment;fileName="+realName);
	
		//��ȡҪ���ص��ļ������浽�ļ�������
		FileInputStream fis=new FileInputStream(path+"\\"+fileName);
		//���������
		OutputStream os=response.getOutputStream();
		//����������
		byte buffer[]=new byte[1024];
		int len=0;
		//ѭ�����������е����ݶ�ȡ������������
		while((len=fis.read(buffer))>0){
			os.write(buffer, 0, len);
		}
		
	
		fis.close();
		os.close();
		
		
	}

	private String findFileSavePathByFileName(String fileName,
			String fileSaveRootPath) {
		int hashCode=fileName.hashCode();
		int dir1=hashCode&0xf;
		int dir2=(hashCode&0xf0)>>4;
		String dir=fileSaveRootPath+"\\"+dir1+"\\"+dir2;
		File file=new File(dir);
		if(!file.exists()){
			file.mkdirs();
		}
		return dir;
	}
	
	// ����Ϊ���������жϿͻ�����������͵ķ���  
    private String getBrowser(HttpServletRequest request) {  
        String UserAgent = request.getHeader("USER-AGENT").toLowerCase();  
        if (UserAgent != null) {  
            if (UserAgent.indexOf("msie") >= 0)  
                return "IE";  
            if (UserAgent.indexOf("firefox") >= 0)  
                return "FF";  
            if (UserAgent.indexOf("safari") >= 0)  
                return "SF";  
        }  
        return null;  
    }  

}
