<%@page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	BoardBean article = (BoardBean)request.getAttribute("article");
	int board_num=(Integer)request.getAttribute("board_num");
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


function closeWithSubmit()
	{
		
	    var f= document.forms.deleteForm;
	    opener.name = "boardList";
	    f.target = opener.name;
	  	f.submit();
	    self.close();
	}
</script>	
</head>
<body>
<section id = "passForm" >
<form name="deleteForm" action="boardDeletePro.bo?board_num=<%=board_num %>" 
	method="post">
<input type = "hidden" name = "page" value = "<%=nowPage %>"/>
<table >
<tr>
	<td>
		<label>암호 :</label>
	</td>
	<td>
		<input name="BOARD_PASS" type="password">
	</td>
</tr>
<tr>
<td class="center">
		<input type="button" class="btn btn-primary" value ="삭제" onClick="closeWithSubmit();"/>
</td>
</tr>
</table>
</form>
</section>
		  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
</body>
</html>