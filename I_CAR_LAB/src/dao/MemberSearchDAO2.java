package dao;

import static db.jdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import vo.MemberBean;

public class MemberSearchDAO2 {
	
	public static MemberSearchDAO2 instance;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	private MemberSearchDAO2() {
		
	}
	
	public static MemberSearchDAO2 getInstance() {
		if(instance==null) {
			instance = new MemberSearchDAO2();
		}
	return instance;
	}
	public void setConnection(Connection con) {
		this.con = con;
	}
	
	public MemberBean selectMember(String ID, String EMAIL) {
		String sql="SELECT PASSWORD FROM MEMBER WHERE EMAIL=lower('"+ID+"')and id=lower('"+EMAIL+"')";
		/* lower는 대소문자 구분을 짓지 않기위해 설정함. */
		MemberBean member2 = null;
		try{
			
			pstmt=con.prepareStatement(sql);
			/*pstmt.setString(1, viewId);*/
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				member2=new MemberBean();
				member2.setPASSWORD(rs.getString("PASSWORD"));

			}
			System.out.println(rs.getString("PASSWORD"));		
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);		
		}finally{
			
			close(rs);
			close(pstmt);
		}
		
		return member2;
	}
}
