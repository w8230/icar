<%@page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	BoardBean article = (BoardBean)request.getAttribute("article");
	String nowPage = (String)request.getAttribute("page");
	
	String ID=(String)session.getAttribute("ID");
	if(!ID.equals(article.getBOARD_NAME())){ %>

	<script type="text/javascript">

	  alert("작성자만 글을 삭제할 수 있습니다.");

      self.close();

	</script>

	<%  } %>

<!DOCTYPE html>
<html>
<head>
<style>
body{margin:10px; padding:10px;}
.footer12{text-aligin:center;}
</style>
<meta charset="UTF-8"> 
 
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
	function modifyboard(){
		modifyform.submit();
	}
	</script>
	<!-- <style type="text/css">
   #registForm{
      width: 500px;
      height: 600px;
      border : 1px solid red; 
      margin:auto; 
   }   
   h2{
      text-align: center;
   }
   table{
      margin:auto;
      width: 450px;
      }
   .td_left{
      width: 150px;
      background:orange;
   }
   .td_right{
      width: 300px;
      background:skyblue;
   }
   #commandCell{
      text-align: center;
      
   }
</style> -->
</head>
<script>


function closeWithSubmit()
	{
		
	    var f= document.forms.modifyform;
	    opener.name = "boardList";
	    f.target = opener.name;
	  	f.submit();
	    self.close();
	}
</script>	
<body>
<!-- 게시판 등록 -->

<section id = "writeForm">
<h2>게시판글수정</h2>
<form action="boardModifyPro.bo" method="post" name = "modifyform">
<input type="hidden" name="page" value="<%=nowPage %>" />
<input type = "hidden" name = "BOARD_NUM" value = "<%=article.getBOARD_NUM()%>" />
<table>
	<tr>
		<td class="td_left">
			<label for = "BOARD_NAME">글쓴이</label>
		</td>
		<td class="td_right">
			<input type = "text" name="BOARD_NAME" id = "BOARD_NAME" value = "<%=article.getBOARD_NAME()%>" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<td class="td_left">
			<label for = "BOARD_PASS">비밀번호</label>
		</td>
		<td class="td_right">
			<input name="BOARD_PASS" type="password" id = "BOARD_PASS"/>
		</td>
	</tr>
	<tr>
		<td class="td_left">
			<label for = "BOARD_SUBJECT">제 목</label>
		</td>
		<td class="td_right">
			<input name="BOARD_SUBJECT" type="text" id = "BOARD_SUBJECT" value = "<%=article.getBOARD_SUBJECT()%>"/>
		</td>
	</tr>
	<tr>
		<td class="td_left">
			<label for = "BOARD_CONTENT">내 용</label>
		</td>
		<td>
			<textarea id = "BOARD_CONTENT" name="BOARD_CONTENT" cols="40" rows="15"><%=article.getBOARD_CONTENT()%></textarea>
		</td>
	</tr>
</table>
	
	<div class="modal-footer">
	<section id="commandCell">
			<input type="button" value="수정" onclick="closeWithSubmit();" class="btn btn-danger"/>
			<input type="button" value="닫기" onClick="self.close();" class="btn btn-danger"/>
				</section>
		</div>
	</form>
	</section>

</body>
</html>