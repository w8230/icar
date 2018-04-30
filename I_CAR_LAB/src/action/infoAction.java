package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.infoSVC;
import vo.ActionForward;
import vo.MemberBean;

public class infoAction implements Action{
	   public ActionForward execute(HttpServletRequest request,
               HttpServletResponse response
               ) throws Exception{

		      HttpSession session = request.getSession();
		      String ID = (String)session.getAttribute("ID");
		      ActionForward forward = null; // 포워드를 null로 주는 이유는 전역으로 사용하기위함.
		      
		      if(ID == null) {
		    	  forward = new ActionForward();
		    	  forward.setRedirect(true);
		    	  forward.setPath("./memberLogin.me");
		      } else {
		    	  forward=new ActionForward();
		    	  String viewId = request.getParameter("ID");
		    	  infoSVC memberViewService = new infoSVC();
		    	  MemberBean member = memberViewService.getMember(viewId);
		    	  request.setAttribute("member", member);
		    	  forward.setPath("./My_Page.jsp");
		    	  
	   }
	   return forward;
	   }
}