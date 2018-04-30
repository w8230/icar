package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FindSVC;
import vo.ActionForward;
import vo.MemberBean;

public class findAction implements Action{
	   public ActionForward execute(HttpServletRequest request,
               HttpServletResponse response
               ) throws Exception{
	   		ActionForward forward = null;

	   		forward = new ActionForward();
	   		
	   		String EMAIL=request.getParameter("EMAIL");
	   		String ID=request.getParameter("ID");
	   		
	   		FindSVC memberSearchService2 = new FindSVC();
	   		
	   		MemberBean membersearch2 = memberSearchService2.getMember(EMAIL , ID);
	   		request.setAttribute("membersearch2", membersearch2);
	   		forward.setPath("find.jsp");
	   		
	   		return forward;
	}
}

