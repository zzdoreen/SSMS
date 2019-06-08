package model;

import java.util.Collection;

public class PageBean {
	
	private Collection pbjs; //�����ݿ��ж�ȡ����
	private int totalCount;  //������ 
	private int pageNo;   //��ǰҳ��
	private int pageCount; //ÿҳ����
	public Collection getPbjs() {
		return pbjs;
	}
	public void setPbjs(Collection pbjs) {
		this.pbjs = pbjs;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	//��ҳ��
	public int getTotalPage(){
		if(totalCount%pageCount==0){
			return totalCount/pageCount;
		}else{
			return totalCount/pageCount+1;
		}
	}
	
	//�ж���һҳ�ķ���
	public boolean isNext(){
		return pageNo<getTotalPage();
	}
	
	//�ж���һҳ
	public boolean isPrevious(){
		return pageNo>1;
	}
	public PageBean() {
		super();
		
	}
	public PageBean(Collection pbjs, int totalCount, int pageNo, int pageCount) {
		super();
		this.pbjs = pbjs;
		this.totalCount = totalCount;
		this.pageNo = pageNo;
		this.pageCount = pageCount;
	}
	
	
}
