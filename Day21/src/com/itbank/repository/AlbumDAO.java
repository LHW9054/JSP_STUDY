package com.itbank.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.itbank.model.AlbumDTO;

public class AlbumDAO {
	
	private Context init;
	private DataSource ds;
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public static AlbumDAO instance = new AlbumDAO();
	
	public static AlbumDAO getInstance() {
		return instance;
	}
	
	public AlbumDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null)pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private AlbumDTO mapping(ResultSet rs) throws SQLException {
		AlbumDTO dto = new AlbumDTO();
		dto.setArtist_id(rs.getInt("artist_id"));
		dto.setName(rs.getString("name"));
		dto.setType(rs.getString("type"));
		dto.setrDate(rs.getDate("rdate"));
		dto.setPlayTime(rs.getInt("playtime"));
		dto.setCoverImg(rs.getString("coverimg"));
		return dto;
	}

	public ArrayList<AlbumDTO> selectList(){
		ArrayList<AlbumDTO> list = new ArrayList<>();
		String sql = "select * from album order by idx";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{close();}
		return list;
	}

	public int insert(AlbumDTO dto) {
		int row = 0;
		String sql = "insert into album (artist_id, name, type, rDate, playTime, coverImg) "
				+ "values (?, ?, ?, ?, ?, ?, ?)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getArtist_id());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getType());
			pstmt.setDate(4, dto.getrDate());
			pstmt.setInt(5, dto.getPlayTime());
			pstmt.setString(6, dto.getCoverImg());
			
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return row;
	}

}
