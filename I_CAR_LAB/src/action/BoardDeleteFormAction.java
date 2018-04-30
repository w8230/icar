package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;


public class BoardDeleteFormAction implements Action {
	
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
			 ActionForward forward = new ActionForward();
			 int board_num=Integer.parseInt(request.getParameter("board_num"));
			 String nowPage = request.getParameter("page");
			 BoardDetailService boardDetailService
				= new BoardDetailService();
				BoardBean article =boardDetailService.getArticle(board_num);
			 	request.setAttribute("article", article);
				request.setAttribute("page", nowPage);
				request.setAttribute("board_num",board_num);
				forward=new ActionForward();
				forward.setPath("/board/qna_board_delete.jsp");
	   		return forward;
	   		
	}
		
}