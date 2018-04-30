package dao;
//DAO란 ? (Data Access Object)이다.

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.MemberBean;
import static db.jdbcUtil.*;

public class MemberDAO {
	public static MemberDAO instance;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	
	private MemberDAO() {
		
	}
	
	public static MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();
		}return instance;
		
	} public void setConnection(Connection con) {
		this.con = con;
		
	} public String selectLoginId(MemberBean member) {
		// 넘겨받은 member 객체의 id, pw를 통해 sql 문을 이용하여 해당 id조회
		// 조회된 id값을 loginId에 담음.
		// loginId를 리턴함.
		String loginId =null;
		String sql = "SELECT * FROM MEMBER WHERE ID=? AND PASSWORD=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getID());
			pstmt.setString(2, member.getPASSWORD());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				loginId = rs.getString("ID");
			}
		}catch(Exception ex){
			System.out.println("로그인 에러 : " + ex);
		}finally {
				close(rs);
				close(pstmt);
			}

		return loginId;
	}
	public int insertMember(MemberBean member) {
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?)";
		int insertCount = 0;
		try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, member.getID());
		pstmt.setString(2, member.getPASSWORD());
		pstmt.setString(3, member.getNAME());
		pstmt.setString(4, member.getEMAIL());
		pstmt.setString(5, member.getTEL());
		insertCount = pstmt.executeUpdate();
		
	}catch(Exception ex){
		System.out.println("회원가입 에러 : " + ex);
	} finally {
		close(pstmt);
	}
		return insertCount;
	}
	
	public ArrayList<MemberBean> selectMemberList () {
		String sql = "SELECT * FROM MEMBER";
		ArrayList<MemberBean> memberList = new ArrayList<MemberBean>();
		MemberBean mb = null;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
		if(rs.next()) {
			do {
			mb = new MemberBean();
			mb.setID(rs.getString("ID"));
			mb.setPASSWORD(rs.getString("PASSWORD"));
			mb.setNAME(rs.getString("NAME"));
			mb.setEMAIL(rs.getString("EMAIL"));
			mb.setTEL(rs.getString("TEL"));
			memberList.add(mb);
			} while(rs.next());
			}
		}catch(Exception ex) {
			System.out.println("getDetailMember 에러 :" + ex);
		}finally {
			close(rs);
			close(pstmt);
		}
		return memberList;
	}
		public MemberBean selectMember(String ID) {
			String sql = "SELECT * FROM MEMBER WHERE ID=?";
			MemberBean mb = null;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ID);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					mb = new MemberBean();
					mb.setID(rs.getString("ID"));
					mb.setPASSWORD(rs.getString("PASSWORD"));
					mb.setNAME(rs.getString("NAME"));
					mb.setEMAIL(rs.getString("EMAIL"));
					mb.setTEL(rs.getString("TEL"));
				}
			} catch(Exception ex) {
				System.out.println("getDetailMember 에러 : " + ex);
			} finally {
				close(rs);
				close(pstmt);
			}
			return mb;
		}
		public int deleteMember(String ID) {
			String sql = "DELETE FROM MEMBER WHERE ID=?";
			int deleteCount = 0;
			try {
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, ID);
					deleteCount = pstmt.executeUpdate();
			}catch(Exception ex) {
				System.out.println("deleteMember 에러 : " + ex);
			}finally {
				close(pstmt);
			}return deleteCount;
		}
		}
	
