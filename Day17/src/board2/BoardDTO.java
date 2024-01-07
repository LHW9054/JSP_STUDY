package board2;

import java.sql.Date;

//idx         number       
//title       varchar2(100)
//writer      varchar2(100)
//content     clob         
//uploadFile  varchar2(100)
//wdate       date         

public class BoardDTO {
	
	private int idx;
	private String title;
	private String writer;
	private String content;
	private String uploadFile;	// DB 테이블에 저장된 파일의 이름
	private Date wdate;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(String uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
}
