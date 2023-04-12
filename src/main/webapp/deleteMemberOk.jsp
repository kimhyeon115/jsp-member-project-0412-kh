<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.rlagus.test.MemberDAO"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 성공</title>
</head>
<body>
		
	<%
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
	
		int dbFlag = dao.deleteMember(id);
	
		if(dbFlag == 1) {
	%>
		<script type="text/javascript">
			alert('회원 탈퇴하였습니다.')
			history.back();
		</script>
	<%
		}else {
	%>
		<script type="text/javascript">
			alert('가입된 정보가 없습니다. 계정을 다시 확인하세요')
			history.back();
		</script>	
	<%	
		}	
	%>
</body>
</html>