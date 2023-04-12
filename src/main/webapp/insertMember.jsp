<%@page import="com.rlagus.test.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.rlagus.test.MemberDAO"%>
<jsp:useBean id="dto" class="com.rlagus.test.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 성공</title>
</head>
<body>
	<%
//		String id = request.getParameter("id");
//		String pass = request.getParameter("pass");
//		String email = request.getParameter("email");
		
//		MemberDTO dto = new MemberDTO();						// usebean으로 선언한거랑 같음
//		dto.setId(id);
//		dto.setPass(pass);
//		dto.setEmail(email);
		
		MemberDAO dao = new MemberDAO();
			
		int dbFlag = dao.insertMember(dto);
		
		if(dbFlag == 1) {
	%>
		<script type="text/javascript">
			alert('회원가입을 축하드립니다!')
		</script>
	<%	
		} else {
	%>
		<script type="text/javascript">
			alert('회원 가입에 실패하셨습니다! 입력사항을 다시 확인하세요')
			history.back();
		</script>
	<%
		}	
	%>
</body>
</html>