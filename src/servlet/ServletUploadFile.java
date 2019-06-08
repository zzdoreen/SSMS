package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




@SuppressWarnings("serial")
public class ServletUploadFile extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// �õ��ϴ��ļ��ı���Ŀ¼�����ϴ����ļ�����ڷ�����WEB-INFĿ¼�£����������ֱ�ӷ��ʣ���֤�ϴ��ļ��İ�ȫ��
				String savePath = this.getServletContext().getRealPath(
						"/WEB-INF/upload");

				// �ϴ�ʱ������ʱ�ļ�����Ŀ¼
				String tempPath = this.getServletContext().getRealPath("/WEB-INF/temp");

				File tempFile = new File(tempPath);
				if (!tempFile.exists()) {
					// ������ʱ�ļ�Ŀ¼
					tempFile.mkdir();
				}

				// ��Ϣ����
				String message = "";
				try {
					// ʹ��Apache�ļ��ϴ���������ļ��ϴ�����
					// 1������һ��DiskFileItemFactory����
					DiskFileItemFactory factory = new DiskFileItemFactory();

					// ���ù����Ļ������Ĵ�С�����ϴ����ļ���С�����������Ĵ�Сʱ���ͻ�����һ����ʱ�ļ���ŵ�ָ������ʱĿ¼���С�
					factory.setSizeThreshold(1024 * 100); // ���û������Ĵ�СΪ100KB�������ָ������ô�������Ĵ�СĬ����10KB

					// �����ϴ�ʱ����ʱ����Ŀ¼
					factory.setRepository(tempFile);

					// 2������һ���ļ��ϴ�������
					ServletFileUpload upLoad = new ServletFileUpload(factory);


					// ����ϴ��ļ���������
					upLoad.setHeaderEncoding("utf-8");

					// 3���ж��ύ�����������Ƿ����ϴ���������
					if (!ServletFileUpload.isMultipartContent(request)) {

						// ���մ�ͳ��ʽ��ȡ����
						return;
					}
					// �����ϴ������ļ��Ĵ�С�����ֵ��Ŀǰ������Ϊ1024*1024�ֽڣ�Ҳ����1MB
					upLoad.setFileSizeMax(1024 * 1024);

					// �����ϴ��ļ����������ֵ�����ֵ=ͬʱ�ϴ��Ķ���ļ��Ĵ�С�����ֵ�ĺͣ�Ŀǰ����Ϊ10MB
					upLoad.setSizeMax(1024 * 1024 * 10);

					// 4��ʹ��ServletFileUpload�����������ϴ����ݣ�����������ص���һ��List<FileItem>���ϣ�
					// ÿһ��FileItem��Ӧһ��Form����������

				
					List<FileItem> list = upLoad.parseRequest(request);
					// List<FileItem> list=upLoad.parseRequest(request);
					// ���fileitem�з�װ������ͨ�����������
					for (FileItem item : list) {
						if (item.isFormField()) {
							String name = item.getFieldName();
							/*// �����ͨ�������������������
							String value = item.getString("utf-8");
							System.out.println(name + "=" + value);*/
						} else {
							// �¹�fileitem�з�װ�����ϴ��ļ�
							// �õ��ϴ����ļ�����
							String fileName = item.getName();
							
							if (fileName == null || fileName.trim().equals("")) {
								continue;
							}
							// ע�⣺��ͬ��������ύ���ļ����ǲ�һ���ģ���Щ������ύ�������ļ����Ǵ���·���ģ�
							// �磺 c:\a\b\1.txt������Щֻ�ǵ������ļ������磺1.txt
							// �����ȡ�����ϴ��ļ����ļ�����·�����֣�ֻ�����ļ�������
							fileName = fileName
									.substring(fileName.lastIndexOf("\\") + 1);
							// �õ��ϴ��ļ���չ��
							String fileExtName = fileName.substring(fileName
									.lastIndexOf(".") + 1);
							// �����Ҫ�����ϴ����ļ����ͣ���ô����ͨ���ļ���չ�����ж��ļ������Ƿ�Ϸ�
							//System.out.println("�ϴ��ļ���չ���ǣ�" + fileExtName);
							// ��ȡitem�е��ϴ��ļ���������
							InputStream is = item.getInputStream();
							// �õ��ļ����������
							String saveFileName = makeFileName(fileName);
							// �õ��ļ�����Ŀ¼
							String realSavePath = makePath(saveFileName, savePath);
							// ����һ���ļ������
							FileOutputStream fos = new FileOutputStream(realSavePath
									+ "\\" + saveFileName);
							// ����һ��������
							byte buffer[] = new byte[1024];
							// �ж��������е������Ƿ��Ѿ�����ı�ʶ
							int len = 0;
							// ѭ�������������뵽�������У���len=in.read(buffer)��>0�ͱ�ʾin���滹������
							while ((len = is.read(buffer)) > 0) {
								// ʹ��FileOutputStream�������������������д�뵽ָ����Ŀ¼(savePath + "\\"
								// + filename)����
								fos.write(buffer, 0, len);
							}
							// �ر�������
							is.close();
							// �ر������
							fos.close();
							// ɾ�������ļ��ϴ�ʱ���ɵ���ʱ�ļ�
							// item.delete();
							message = "�ļ��ϴ��ɹ���";

						}

					}
				} catch (FileUploadBase.FileSizeLimitExceededException e) {
					e.printStackTrace();
					request.setAttribute("message", "�����ļ��������ֵ������");
					request.getRequestDispatcher("admin/fileLoadFail.jsp").forward(
							request, response);
					return;
					// e.printStackTrace();
				} catch (FileUploadBase.SizeLimitExceededException e) {
					e.printStackTrace();
					request.setAttribute("message", "�ϴ��ļ����ܵĴ�С�������Ƶ����ֵ������");
					request.getRequestDispatcher("admin/fileLoadFail.jsp").forward(
							request, response);
					return;
				} catch (Exception e) {
					message = "�ļ��ϴ�ʧ�ܣ�";
					e.printStackTrace();
				}
				request.setAttribute("message", message);
				request.getRequestDispatcher("admin/fileLoadFail.jsp").forward(
						request, response);
	}

	private String makePath(String saveFileName, String savePath) {
		// �õ��ļ�����hashCode��ֵ���õ��ľ���fileName����ַ����������ڴ��еĵ�ַ
		int hashCode = saveFileName.hashCode();
		int dir1 = hashCode & 0xf; // 0-15
		int dir2 = (hashCode & 0xf0) >> 4; // 0-15
		// ������Ϣ�ı���Ŀ¼
		String dir = savePath + "\\" + dir1 + "\\" + dir2;
		// file�ȿ��Դ����ļ�Ҳ���Դ���Ŀ¼
		File file = new File(dir);
		// ���Ŀ¼������
		if (!file.exists()) {
			// ����Ŀ¼
			file.mkdirs();
		}
		return dir;

	}
	
	private String makeFileName(String fileName) {
		// Ϊ��ֹ�ļ����ǵ���������ҪΪ�ϴ��ļ�����һ��Ψһ���ļ���
		return UUID.randomUUID().toString() + "_" + fileName;

	}

}
