package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import svc.LoginSVC;
import vo.ActionForward;
import vo.MemberBean;

public class LoginAction implements Action{
   public ActionForward execute(HttpServletRequest request,
                        HttpServletResponse response
                        ) throws Exception{

      MemberBean member = new MemberBean();
       HttpSession session = request.getSession();
      

      member.setID(request.getParameter("ID"));
      member.setPASSWORD(request.getParameter("PASSWORD"));
      
      
      LoginSVC memberLoginService = new LoginSVC();

      boolean loginResult = memberLoginService.login(member);
      ActionForward forward = null;
      
      if(loginResult) {
         forward = new ActionForward();
         session.setAttribute("ID", member.getID());
         session.setAttribute("PASSWORD", member.getPASSWORD());
         forward.setRedirect(true);
         forward.setPath("login_form.jsp");
      }
      else {
         response.setContentType("text/html; charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.println("<script>");
         out.println("alert('아이디나 비밀번호를 확인해주세요.')");
         out.println("location.href='index.jsp';");
         out.println("</script>");
         
      }
      
      return forward;
   }
   
   
}






