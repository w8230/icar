package svc;

import static db.jdbcUtil.*;
import java.sql.Connection;
import vo.BoardBean;
import dao.BoardDAO;

public class BoardModifyProService {

	public boolean isArticleWriter(int board_num, String pass) throws Exception {
		// TODO Auto-generated method stub
		
		boolean isArticleWriter = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isArticleWriter = boardDAO.isArticleBoardWriter(board_num, pass);
		close(con);
		return isArticleWriter;
		
	}


	
	public boolean modifyArticle(BoardBean article) throws Exception {
		// TODO Auto-generated method stub
		
		boolean isModifySuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateArticle(article);
		
		if(updateCount > 0){
			commit(con);
			isModifySuccess=true;
		}
		else{
			rollback(con);
		}
		
		close(con);
		return isModifySuccess;
		
	}
		
	/*public boolean isModifyWriter(String BOARD_NAME) throws Exception {
		// TODO Auto-generated method stub
		
		boolean isModifyWriter = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isModifyWriter = boardDAO.isModifyBoardWriter(BOARD_NAME);
		close(con);
		return isModifyWriter;
		
	}*/
}
