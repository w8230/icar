package dao;

import static db.jdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import vo.MemberBean;

public class MemberUpdateDAO {
	public static MemberUpdateDAO instance;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	
	private MemberUpdateDAO() {
		
	}
	
	public static MemberUpdateDAO getInstance() {
		if(instance==null) {
			instance = new MemberUpdateDAO();
		}
	return instance;
	}
	public void setConnection(Connection con) {
		this.con = con;
	}
	public int selectUpdateMember(MemberBean Member, String id) {
		String sql = "UPDATE MEMBER SET PASSWORD=?,EMAIL=?,TEL=? where ID='"+id+"'";
		int UpdateMember=0;
		try {
			pstmt = con.prepareStatement(sql);
			//sql ?에 들어갈 부분 순차적으로 작성
			pstmt.setString(1,Member.getPASSWORD());
			pstmt.setString(2,Member.getEMAIL());
			pstmt.setString(3,Member.getTEL());

			//쿼리를 실행
			UpdateMember=pstmt.executeUpdate();
			}catch(Exception e) {
			System.out.println("UpdateMemberSQL에러:"+e);
			}finally {
			close(pstmt);
		}
		return UpdateMember ;
	}
	
}
