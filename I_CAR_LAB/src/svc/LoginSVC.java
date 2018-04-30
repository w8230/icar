package svc;
import vo.MemberBean;
import static db.jdbcUtil.*;
import java.sql.Connection;
import dao.MemberDAO;
public class LoginSVC {
	public boolean login(MemberBean member) {
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		boolean loginResult = false;
		String loginId = memberDAO.selectLoginId(member);
		if(loginId != null) {
			loginResult = true;
		}
		close(con);
		return loginResult;
	}
	
}
