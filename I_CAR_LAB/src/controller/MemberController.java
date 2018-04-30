package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.JoinAction;
import action.LoginAction;
import action.UpdateAction;
import action.findAction;
import action.infoAction;
import vo.ActionForward;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("*.me")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doProcess(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	doProcess(request, response);
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //클라이언트의 요청으로 부터 전송된 페이지의 앞부분을 걸러내고 필요한 부분만 잘라내는 과정
       String RequestURI = request.getRequestURI();
       String contextPath = request.getContextPath();
       String command = RequestURI.substring(contextPath.length());
       
       ActionForward forward = null;
       Action action = null;
       
       //if~else if 문을 이용하여 클라이언트가 요청한 페이지별로 기능을 수행할 수 있도록
       //포워딩하는 부분
       
       //로그인 요청
       if(command.equals("/memberLogin.me")) {
          //ActionForwar()에 대한 객체 생성
          forward = new ActionForward();
          //ActionForwar()의 setRedirect 메소드 호출
          forward.setRedirect(true);
          //로그인 요청이 오면 loginForm.jsp페이지로 리다이렉트 시킴.
          forward.setPath("./Main_Form.jsp");
          // 회원가입 요청에 의해 회원가입 페이지로 이동시키는 부분,
       }else if(command.equals("/memberJoin.me")) {
          forward = new ActionForward();
          forward.setRedirect(false);
          forward.setPath("./Main_Form.jsp");
       }// 로그인 처리 요청에 의해 LoginAction 클래스의 객체를 호출하는 부분.
       else if(command.equals("/memberLoginAction.me")) {
          action = new LoginAction();
          try {
             forward = action.execute(request, response);
          }catch(Exception e) {
             e.printStackTrace();
          }
       } // 회원가입 처리 요청에 의해 JoinAction 객체를 호출하는 부분
       else if(command.equals("/memberJoinAction.me")) {
           action = new JoinAction();
           try {
              forward = action.execute(request, response);
           }catch(Exception e) {
              e.printStackTrace();
           }
           
        }else if(command.equals("/memberViewAction.me")) {
            action = new infoAction();
            try {
               forward = action.execute(request, response);
            }catch(Exception e) {
               e.printStackTrace();
            }
         } 
        else if(command.equals("/MemberSearchAction2.me")) { // 비번찾기
			action = new findAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("MusicUploadAction 실행 에러"+e);
			}
        }
        else if(command.equals("/UpdateMemberAction.me")) { // 정보수정
			action = new UpdateAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("UpdateMemberAction 실행 에러"+e);
			}
		}
       if(forward != null) {
     	  if(forward.isRedirect()) {
     		  response.sendRedirect(forward.getPath());
     	  }else {
     		  RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
     		  dispatcher.forward(request, response);
     	  }
       }
       
    }
    
    
 }