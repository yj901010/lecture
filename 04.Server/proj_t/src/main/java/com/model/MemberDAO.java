package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	// 데이터베이스 연결메소드
	public void getConnection() {
		
		// JDBC순서
		// 0.드라이버 파일 프로젝트에 넣기
		// 1.드라이버 동적로딩
		// 2.커넥션 연결
		// 3.SQL문 실행
		// 4.연결종료
		
		
		// 1.데이터베이스 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.커넥션 열기
			// - DB가 존재하는 url, 아이디, 비밀번호
			String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
			String db_id = "Insa4_Spring_hacksim_4";
			String db_pw = "aishcool4";
			
			// 권한 가져오기
			conn = DriverManager.getConnection(db_url,db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
		}
	}
	
	// 데이터베이스 종료메소드
	public void close() {
		// 역순으로 자원 반납
		// ResultSet, PreparedStament, Connection
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	// 로그인 메소드
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		getConnection();
		
		String sql = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String nick = rs.getString("nick");
				String gender = rs.getString("gender");
				info = new MemberDTO(id,pw,name,birth,phone,email,nick,gender);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
		
	}

	// 회원가입 메소드
	public int join(MemberDTO dto) {
		getConnection();
		int cnt = 0;
		try {
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getBirth());
			psmt.setString(5, dto.getPhone());
			psmt.setString(6, dto.getEmail());
			psmt.setString(7, dto.getNick());
			psmt.setString(8, dto.getGender());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	// 회원탈퇴 메소드
	public int delete(MemberDTO dto) {
		
		// id와 pw가 일치하는 계정을 찾아서 삭제한 다음
		// 삭제 성공 -> 1 반환
		// 삭제 실패 -> 0 반환
		getConnection();
		int cnt = 0;
		
		try {
			String sql = "DELETE FROM MEMBER WHERE ID=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	// 회원정보수정 메소드
	public int update(MemberDTO changeInfo) {
		getConnection();
		
		int cnt = 0;
		String sql = "UPDATE MEMBER SET PW = ?, NAME = ?, BIRTH = ?,PHONE = ?, EMAIL = ?, NICK = ?, GENDER = ? WHERE ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, changeInfo.getPw());
			psmt.setString(2, changeInfo.getName());
			psmt.setString(3, changeInfo.getBirth());
			psmt.setString(4, changeInfo.getPhone());
			psmt.setString(5, changeInfo.getEmail());
			psmt.setString(6, changeInfo.getNick());
			psmt.setString(7, changeInfo.getGender());
			psmt.setString(8, changeInfo.getId());
			
			
			cnt = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
	}


}
