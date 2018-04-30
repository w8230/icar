<%@page import="vo.BoardBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>

<%
	BoardBean article = (BoardBean)request.getAttribute("article");
    String nowPage = (String)request.getAttribute("page");
%>

<!DOCTYPE html>
<html>
<head>
<style>
body{margin:10px; padding:10px;}
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
function replyWindow() {
;
	window.open(
		"boardReplyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage%>", 
		"popUp",
		"width=510, height=620, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600");
}

function modifyWindow() {
	;
		window.open(
			"boardModifyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage%>", 
			"popUp",
			"width=510, height=620, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600");
	}
	
function deleteWindow() {
	;
		window.open(
			"boardDeleteForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage%>", 
			"popUp",
			"width=500, height=120, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600");
	}



</script>
</head>

<body>
	<!-- 게시판 수정 -->
	<section id="articleForm">
		<section id="basicInfoArea">
		<table>
		<tr>
		<td>제목 :</td>
			<td>
			<%=article.getBOARD_SUBJECT()%><br><br></td>
			</tr>
		</section>
		
		
		<section id="articleContentArea">
		<tr>
		<td>
		내용 :</td> <td><textarea readonly="readonly" cols="40" rows="15" id="cont" name="cont" style="resize:none"><%=article.getBOARD_CONTENT() %></textarea></td>		</tr>
			
			<%if(!(article.getBOARD_FILE()==null)){ %>
			<a href="file_down.jsp?file_name=<%=article.getBOARD_FILE()%>"> <%=article.getBOARD_FILE() %>
			</a>
			<% } else { %><span>첨부된 파일이 없습니다.</span> <% } %>
		</section>
		</table>
	</section>
	<div class="modal-footer">
	<section id="commandList">
 			<input type="button" onclick="replyWindow();" value="답변" class="btn btn-primary"/> 
			<input type="button" onclick="modifyWindow();" value="수정" class="btn btn-danger"/> 
			<input type="button" onclick="deleteWindow();" value="삭제" class="btn btn-danger"/>
		<input type="button" class="btn btn-primary" onclick="location.href='boardList.bo?page=<%=nowPage%>'" value="목록"/>
		</section>
		</div>
	</section>
			  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
</body>
</html>