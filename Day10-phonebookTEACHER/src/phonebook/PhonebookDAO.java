//<순서>
//싱글톤 인스턴스 생성
//생성자 내에서 커넥션풀 설정
//인스턴스 변수 및 메서드 구현
//getInstance() 메서드 구현
package phonebook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PhonebookDAO {
	
	// 1) 싱글톤 (static)
	//인스턴스를 단 하나만 생성하고, 그 인스턴스를 여러 곳에서 공유해서 사용하고자 함에 있다
	private static PhonebookDAO instance = new PhonebookDAO();
	
	//생성자
	public static PhonebookDAO getInstance() {
		if(instance == null) {
			instance = new PhonebookDAO();
		}
		return instance;
	} 
	
	
	// 2) 커넥션풀
	private Context init;	// context.xml
	private DataSource ds;	// javax.sql.DataSource
	
	private PhonebookDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
		}
	}
	
	// 3) conn, pstmt, rs
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 4) 함수 만들기
	public ArrayList<PhonebookDTO> selectList(){
		ArrayList<PhonebookDTO> list = new ArrayList<PhonebookDTO>();
		String sql = "select * from phonebook order by idx";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				PhonebookDTO dto = new PhonebookDTO();
				
				dto.setIdx(rs.getInt("idx"));
				dto.setName(rs.getString("name"));
				dto.setPnum(rs.getString("pnum"));
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
	
	
	public int insert(PhonebookDTO dto) {
		int row = 0;	// ResultSet 대신 결과를 받는다(명령에 여향을 받은 줄수)
		String sql = "insert into phonebook (name,pnum) values (?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPnum());
			row = pstmt.executeUpdate();
			
		}catch(SQLException e) {
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
	
	

	public int delete(int idx) {
		int row = 0;
		String sql = "delete phonebook where idx = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql); // 쿼리문 세팅
			
			// 세팅된 쿼리문을 실행 하기전에 ? 개수만큼 값을 채워줘야 한다.
			pstmt.setInt(1, idx);
			
			row = pstmt.executeUpdate();	// 쿼리문 실행
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
