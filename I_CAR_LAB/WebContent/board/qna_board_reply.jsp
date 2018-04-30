<%@page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	BoardBean article=(BoardBean)request.getAttribute("article");
    String nowPage = (String)request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<style>
body{margin:10px; padding:10px;}
.footer12{text-aligin:center;}
</style>
<meta charset="UTF-8" />
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
	
<script type="text/javascript">
	</script>
<!-- <style type="text/css">
#registForm {
	width: 500px;
	height: 610px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 450px;
}

.td_left {
	width: 150px;
	background: orange;
}

.td_right {
	width: 300px;
	background: skyblue;
}

#commandCell {
	text-align: center;
}
</style> -->
</head>
<script>
function closeWithSubmit()
{
	
    var f= document.forms.boardform;
    opener.name = "boardList";
    f.target = opener.name;
  	f.submit();
    self.close();
}
</script>
<body>
	<!-- 게시판 답변 -->

	<section id="writeForm">
		<h2>답글등록</h2>
		<form action="boardReplyPro.bo" method="post" name="boardform">
			<input type="hidden" name="page" value="<%=nowPage %>" /> <input
				type="hidden" name="BOARD_NUM" value="<%=article.getBOARD_NUM() %>">
			<input type="hidden" name="BOARD_RE_REF"
				value="<%=article.getBOARD_RE_REF() %>"> <input
				type="hidden" name="BOARD_RE_LEV"
				value="<%=article.getBOARD_RE_LEV() %>"> <input
				type="hidden" name="BOARD_RE_SEQ"
				value="<%=article.getBOARD_RE_SEQ() %>">
			<table>
				<tr>
					<td class="td_left"><label for="BOARD_NAME">글쓴이</label></td>
					<td class="td_right"><input type="text" name="BOARD_NAME"
						id="BOARD_NAME" value="<%= session.getAttribute("ID") %>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_PASS">비밀번호</label></td>
					<td class="td_right"><input name="BOARD_PASS" type="password"
						id="BOARD_PASS" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
					<td class="td_right"><input name="BOARD_SUBJECT" type="text"
						id="BOARD_SUBJECT" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
							cols="40" rows="15"></textarea></td>
				</tr>
			</table>
			
			<div class="modal-footer">
				<section id="commandCell">
				<input type="button" onclick="closeWithSubmit();" value="답변글등록" class="btn btn-primary" />&nbsp;
				<input type="reset" value="다시작성" class="btn btn-danger" />&nbsp; 
				<input type="button" value="닫기" class="btn btn-danger" onClick="self.close();"/>
			</section>
			</div>
		</form>
	</section>
</body>
</html>