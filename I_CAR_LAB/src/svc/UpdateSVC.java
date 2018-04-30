package svc;

import static db.jdbcUtil.close;
import static db.jdbcUtil.commit;
import static db.jdbcUtil.getConnection;
import static db.jdbcUtil.rollback;

import java.sql.Connection;

import dao.MemberUpdateDAO;
import vo.MemberBean;

public class UpdateSVC {
	public boolean UpdateMember(MemberBean Member,String id){
	boolean UpdateSuccess = false;
	Connection con = getConnection();
	MemberUpdateDAO memberUpdateDAO= MemberUpdateDAO.getInstance();
	memberUpdateDAO.setConnection(con);
	//memberDAO.selectLoginId(member)의 호출 결과는 LoginId
	int UpdateMember = memberUpdateDAO.selectUpdateMember(Member, id);
	System.out.println("회원정보 수정 성공");
	if(0<UpdateMember) {
		UpdateSuccess=true;
		commit(con);
	}else {
		rollback(con); //실패했을경우 돌아가기
	}
	close(con);
	return UpdateSuccess;//리턴은 마지막부분에 작성
}
}

