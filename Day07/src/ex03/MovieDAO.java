package ex03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MovieDAO {
	
	// conn, pstmt, rs
	// url, user, password
	private Connection conn;
	private PreparedStatement pstmt;	// Statement의 서브 클래스 (상속)
	private ResultSet rs;
	
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private String driverClassName = "oracle.jdbc.driver.OracleDriver";
	
	// 생성자에서 Class.forName()
	public MovieDAO() {
		try {
			Class.forName(driverClassName);
		} catch (ClassNotFoundException e) {
			System.err.println("클래스를 불러올수 없습니다 : " + e);
		}
	}
	
	// 전체 목록을 ArrayList<MovieDTO>으로 반환
	public ArrayList<MovieDTO> selectList(){
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql = "select * from movie order by movie_rank";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MovieDTO dto = new MovieDTO();
				dto.setMovie_rank(rs.getInt("Movie_rank"));
				dto.setTitle(rs.getString("Title"));
				dto.setOpenningDate(rs.getString("OpenningDate"));
				dto.setReserveRate(rs.getDouble("ReserveRate"));
				dto.setReserveCount(rs.getInt("ReserveCount"));
				dto.setWatchCount(rs.getInt("WatchCount"));
				list.add(dto);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null)		rs.close();
				if(pstmt != null)	pstmt.close();
				if(conn != null)	conn.close();
			}catch(Exception e) {}
		}
		return list;
	}
	
	
}
