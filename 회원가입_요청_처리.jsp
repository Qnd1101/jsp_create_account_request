<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 위 코드를 넣지 않는다면 글자가 깨짐 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 요청처리</title>
</head>
<body>
<b>회원가입 요청처리</b><br><br>
<!-- 
	request 메서드 :
	getParameter(String name) 해당 name 속성의 파라미터 값 리턴
	getParameterValues(String name) 해당 name 속성의 파라미터의 모든 값 리턴
 -->
 
아이디 : <%= request.getParameter("id") %> <br>
비밀번호 : <%= request.getParameter("pw") %> <br>
이름 : <%= request.getParameter("name") %> <br>
성별 : <%= request.getParameter("gender") %> <br>
취미 : 
 <%
 	String[] hobby = request.getParameterValues("hobby");

	if(hobby != null){
		for(int i = 0; i < hobby.length; i++){
			if(i == (hobby.length - 1)){
				out.print(hobby[i]);
				break;
			}
			out.print(hobby[i] + ", ");
		}	
	} else {
		out.print("선택 사항이 없습니다.");
	}
 %>
</body>
</html>
