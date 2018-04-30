<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
body{margin:10px; padding:10px;}
.footer12{text-aligin:center;}
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

<script type="text/javascript">

	function closeWithSubmit()
	{
		
	    var f= document.forms.boardform;
	    opener.name = "boardList";0
	    f.target = opener.name;
	  	f.submit();
	    self.close();
	}
		
</script>



</head>
<body>
<%-- 	<section id="writeForm">
		<form action="boardWritePro.bo" method="post"
			enctype="multipart/form-data" name="boardform">
			<div class="modal-body" style="color:black">
			<table class="table table-striped">
				<tr>
					<td><label for="BOARD_NAME">글쓴이</label></td>
					<td><input type="text" name="BOARD_NAME"id="BOARD_NAME" readonly="readonly" 
						value="<%= session.getAttribute("ID") %>" /></td>
				</tr>
				<tr>
					<td><label for="BOARD_PASS">암호</label></td>
					<td><input name="BOARD_PASS" type="password"
						id="BOARD_PASS" required="required" /></td>
				</tr>
				<tr>
					<td><label for="BOARD_SUBJECT">제목</label></td>
					<td><input name="BOARD_SUBJECT" type="text"
						id="BOARD_SUBJECT" required="required" /></td>
				</tr>
				<tr>
					<td ><label for="BOARD_CONTENT">내용</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
							cols="40" rows="15" required="required"></textarea></td>
				</tr>
		  	</table>

			<section id="commandCell">
			<div class="modal-footer">
			<input type="button" value="닫기" class="btn btn-warning" onClick="self.close();"/>
				<input type="reset" value="다시작성" class="btn btn-warning"/>&nbsp;
				<input type="button" value="등록" onClick="closeWithSubmit();" class="btn btn-primary"/>
				</div>
			</section>
			</div>
		</form>
	</section> --%>
	
		<section id="writeForm">
		<form action="boardWritePro.bo" method="post"
			enctype="multipart/form-data" name="boardform">
			<div class="textbox/">
			<table>
				<tr>
					<td class="td_left"><label for="BOARD_NAME"></label></td>
					<td class="td_right"><%= session.getAttribute("ID") %></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_PASS">암호</label></td>
					<td class="td_right"><input name="BOARD_PASS" type="password"
						id="BOARD_PASS" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">제목</label></td>
					<td class="td_right"><input name="BOARD_SUBJECT" type="text"
						id="BOARD_SUBJECT" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">내용</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
							cols="40" rows="15" required="required"></textarea></td>
				</tr>
			<tr>
					<td class="td_left"><label for="BOARD_FILE">  </label></td>
					<td class="td_right"><input name="BOARD_FILE" type="file" 
						id="BOARD_FILE"  /></td>
				</tr>
			</table>
			<div class="modal-footer">
			<section id="commandCell">
				<!-- <input type="submit" value="등록" />&nbsp; -->
				<input type="reset" value="지우기" class="btn btn-danger"/>
				<input type="button" class="btn btn-danger" value="닫기" onClick="self.close();"/>
				<input type="button" class="btn btn-primary" value="등록" onClick="closeWithSubmit();"/>
			</section>
			</div>
			</div>
		</form>
	</section>
	  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
</body>
</html>