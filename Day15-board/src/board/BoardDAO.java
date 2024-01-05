package board;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class BoardDAO {

	//연결다리
	private Context init;
	private DataSource ds;
	
	//연결용 CPR
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//싱글톤
	private static BoardDAO instance = new BoardDAO();
	
	//생성자
	private BoardDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//getinstance
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private ArrayList<BoardDTO> selectList(){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		String sql = "select * from board order by idx";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContent(rs.getString("content"));
				dto.setWdate(rs.getDate("wdate"));
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
		return list;
	}
	
	public int write(BoardDTO user) {
		int row = 0;
		String sql = "insert into board (title, writer, content) values(?, ?, ?)";
	
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "title");
			pstmt.setString(2, "write");
			pstmt.setString(3, "content");
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {}
		}
			return row;
		}
	
	}
