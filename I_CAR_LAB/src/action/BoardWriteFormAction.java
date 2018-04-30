package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.ActionForward;


public class BoardWriteFormAction implements Action {
	
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
			 ActionForward forward = new ActionForward();
		
			forward.setPath("/board/qna_board_write.jsp");
	   		return forward;
	   		
	}
	 
}