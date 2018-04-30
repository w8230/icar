package svc;

import java.sql.Connection;
import static db.jdbcUtil.*;
import dao.MemberDAO;
import vo.MemberBean;

public class JoinSVC {
	public boolean joinMember(MemberBean member) {
		boolean joinSuccess = false;
		MemberDAO memberDAO = MemberDAO.getInstance();
		Connection con = getConnection();
		memberDAO.setConnection(con);
		// dDAO 호출 결과를 담을 변수
		// insert 쿼리가 성공하면 1 이상의 값을 리턴받고 
		// inset가 제대로 되지않으면 0을 리턴받게됨.
		// 리턴받는 값을 통해 성공, 실패 여부를 판단한다.
		int insertCount = memberDAO.insertMember(member);
		if(insertCount > 0) {
			joinSuccess = true;
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return joinSuccess;
	}
}
