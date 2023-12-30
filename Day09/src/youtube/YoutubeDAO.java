package youtube;

import java.sql.*;
import java.util.ArrayList;

import javax.sql.*;
import javax.naming.*;


public class YoutubeDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;	// 객체 컨테이너(context.xml에 있는 객체)
	private DataSource ds;	// 커넥션풀 관리 객체
	
	private static YoutubeDAO instance;	// 싱글톤 객체 저장
	
	public static YoutubeDAO getInstance() {
		if(instance == null) {
			instance = new YoutubeDAO();
		}
		return instance;
	}
	
	private YoutubeDAO () {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			System.out.println("DAO 생성자 예외 발생!!!");
		}
	}
	
//	public YoutubeDTO[] selectArray() {...}		[제네릭 타입으로 할 경우]
	public ArrayList<YoutubeDTO> selectList(){
		ArrayList<YoutubeDTO> list = new ArrayList<>();
		String sql = "select * from youtube order by idx";
		
		try {
			// 연결
			conn = ds.getConnection();
			// sql 적재
			pstmt = conn.prepareStatement(sql);
			// 실행 및 결과 반환 (select => ResultSet, insert/update/delete => int)
			rs = pstmt.executeQuery();
			// 결과를 자바 객체로 변환하여 리스트에 추가  	(select인 경우에만 해당)
			while(rs.next()) {
				YoutubeDTO dto = new YoutubeDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString("Title"));
				dto.setChannel(rs.getString("Channel"));
				dto.setViewCount(rs.getInt("ViewCount"));
				dto.setThumbnail(rs.getString("Thumbnail"));
				dto.setMovieTag(rs.getString("MovieTag"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {}
		}
		// 리스트를 반환					 	(select가 아니면 int 타입의 row를 반환)
		return list;
	}
}

























