<%@ page import="vo.PageInfo"%>
<%@ page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<% @SuppressWarnings("unchecked")
	ArrayList<BoardBean> articleList=(ArrayList<BoardBean>)request.getAttribute("articleList");
    PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
%>


<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.center1{text-align:center;}
</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>아이카+</title>
  
  <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
  <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
  
  <link rel="icon" type="image/png" href="img/icon.png">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">

<script>
function openWindow() {

	
	window.open(
		"boardWriteForm.bo", 
		"popUp",
		"width=510, height=620, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600");
}
</script>
</head>

<body>

<h4 class="modal-title" id="myModalLabel">아이카 게시판</h4> 
	<section id="listForm">
	<div class="table-responsive">
		<table class="table table-bordered table-striped" >
			<%
if(articleList != null && listCount > 0){
%>
		
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			
			<%for(int i=0;i<articleList.size();i++){%>
			<tr>
				<td>
					<%if(articleList.get(i).getBOARD_RE_LEV()!=0){ %> 
					<%for(int a=0;a<=articleList.get(i).getBOARD_RE_LEV()*2;a++){ %>
					&nbsp; 
					<%} %> ▶ <%}else{ %> ▶ <%} %> 
				<a href="boardDetail.bo?board_num=<%=articleList.get(i).getBOARD_NUM()%>&page=<%=nowPage%>">
				<%=articleList.get(i).getBOARD_SUBJECT()%>
				</a>
				</td>

				<td><%=articleList.get(i).getBOARD_NAME() %></td>
				<td><%=articleList.get(i).getBOARD_DATE() %></td>
				<td><%=articleList.get(i).getBOARD_READCOUNT() %></td>
			</tr>
			<%} %>
			</tr>
			</table>
			</div>
	
              
	<section id="pageList">
	<div class="modal-footer">
	<div class="center1">
		<%if(nowPage<=1){ %>
		[이전]&nbsp;
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
		<%} %>

		<%for(int a=startPage;a<=endPage;a++){
				if(a==nowPage){%>
		[<%=a %>]
		<%}else{ %>
		<a href="boardList.bo?page=<%=a %>">[<%=a %>]
		</a>&nbsp;
		<%} %>
		<%} %>

		<%if(nowPage>=maxPage){ %>
		[다음]
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage+1 %>">[다음]</a>
		<%} %>
		</div>
    <button id="resulbtn" class="btn btn-primary" onclick="window.open('boardWriteForm.bo','아이카','width=480, height=600, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=300, left=300'); return false;">글쓰기</button>
	</div>
	</section>
	<%
    }
	else
	{
	%>
	<section id="emptyArea">등록된 글이 없습니다.</section>
	<%
	}
%>
	</table>
	</section>
	  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
</body>
</html>