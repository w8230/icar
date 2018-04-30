package svc;

import vo.MemberBean;
import static db.jdbcUtil.*;
import java.sql.Connection;
import dao.MemberSearchDAO2;


public class FindSVC {

	public MemberBean getMember(String EMAIL, String ID) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		MemberSearchDAO2 memberSearchDAO2 = MemberSearchDAO2.getInstance();
		memberSearchDAO2.setConnection(con);
		
		MemberBean member2 = memberSearchDAO2.selectMember(EMAIL , ID);
		System.out.println("비밀번호 찾기 성공");
		close(con);
		return member2;
	}

}