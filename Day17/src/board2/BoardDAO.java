package board2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BoardDAO {
	
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Context init;
	private DataSource ds;
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/comp/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	// 전체 글 조회
	public ArrayList<BoardDTO> selectList(){
		ArrayList<BoardDTO> list = new ArrayList<>();
		String sql = "select * from board order by idx desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				rs.getInt(dto.getIdx());
				rs.getString(dto.getTitle());
				rs.getString(dto.getWriter());
				rs.getString(dto.getContent());
				rs.getString(dto.getUploadFile());
//				rs.getDate(dto.getWdate());
				list.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
//	public BoardDTO selectOne(int idx) {
//		BoardDTO dto = null;
//		String sql = "select * from board where idx = ?";
//		try {
//			conn = ds.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, idx);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				dto = new BoardDTO();
//				rs.getInt(dto.setIdx());
//				rs.getString(dto.setTitle());
//				rs.getString(dto.setWriter());
//				rs.getString(dto.setContent());
//				rs.getString(dto.setUploadFile());
//				rs.getString(dto.setWdate());
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if(rs != null) rs.close();
//				if(pstmt != null) pstmt.close();
//				if(conn != null) conn.close();
//			}catch(Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return dto;
//	}
}
