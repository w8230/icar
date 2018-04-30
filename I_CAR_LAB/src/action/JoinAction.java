package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.JoinSVC;
import vo.ActionForward;
import vo.MemberBean;

public class JoinAction implements Action{
		   public ActionForward execute(HttpServletRequest request,
		                        HttpServletResponse response
		                        ) throws Exception{
			   // member 객체를 만들어서 service 메소드를 호출
			   MemberBean member = new MemberBean();
			   boolean joinResult = false;
			   
			   // member 객체에 클라이언트가 입력한 각 항목을 담음.
			   member.setID(request.getParameter("ID"));
			   member.setPASSWORD(request.getParameter("PASSWORD"));
			   member.setNAME(request.getParameter("NAME"));
			   member.setEMAIL(request.getParameter("EMAIL"));
			   member.setTEL(request.getParameter("TEL"));
			   
			   JoinSVC memberJoinService = new JoinSVC();
			   
			   ActionForward forward = null;
			   joinResult = memberJoinService.joinMember(member);
			   
			   if(joinResult == false) {
				   response.setContentType("text/html; charset=UTF-8");
				   PrintWriter out = response.getWriter();
				   out.println("<script>");
				   out.println("alert('회원가입 실패')");
				   out.println("history.back()");
				   out.println("</script>");
			   }else {
				   forward = new ActionForward();
				   forward.setRedirect(true);
				   forward.setPath("alert.jsp");
			   }return forward;
		   } 
}