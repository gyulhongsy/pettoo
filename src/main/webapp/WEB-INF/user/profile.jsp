<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel=stylesheet href="<c:url value='/css/main.css' />" type="text/css">
<title>PRORILE</title>

<script>

</script>
</head>
<body>
<div class="front-bar">
	<nav>
	    <a class="logo">
	        <img width="280" height="100"  src="<c:url value='/images/logo.png' />"/>
	    </a>
	    <div class="menu">
	    <ul>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/user/myPage/page' />">MY PAGE</a>
	        </li>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/user/profile/page' />" style="color: #647B54;">PROFILE</a>
	        </li>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/community/list/page' />">COMMUNITY</a>
	        </li>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/map/search/page' />">MAP</a>
	        </li>
	    </ul>
	    </div>
	</nav>
</div>
<div class="content">
<form name="myForm" action="profile.jsp" method="POST">
<table>
	<tr>
		<td colspan=4><span style="font-size:200%">회원 정보 수정</span></td>
	</tr>
	<tr>
		<td height="50">아이디</td>
		<td colspan=3><input type="text" name="userId" value="${user.userId}" readonly></td>
	</tr>
	<tr>
		<td height="50">비밀번호</td>
		<td colspan=3><input type="password" name="userPw" value="${user.userPw}"></td>
	</tr>
	<tr>
		<td height="50">비밀번호 확인</td>
		<td colspan=3><input type="password" name="userPw2"></td>
	</tr>
	<tr>
		<td height="50">이름</td>
		<td colspan=3><input type="text" name="userName" value="${user.userName}"></td>
	</tr>
	<tr>
		<td height="50">주소</td>
		<td colspan=3><input type="text" name="address" value="${user.address}"></td>
	</tr>
	<tr>
		<td height="50">성별</td>
		<td colspan=3><input type="radio" name="gender" value="man" <c:if test="${user.gender eq 'man'}">checked</c:if>>남
		<input type="radio" name="gender" value="woman" <c:if test="${user.gender eq 'woman'}">checked</c:if>>여</td>
	</tr>
	<tr>
		<td height="50">이메일</td>
		<td colspan=3><input type="email" name="email" value="${user.email}"></td>
	</tr>
	<tr>
		<td height="50">전화번호('-'포함)</td>
		<td colspan=3><input type="tel" name="phoneNumber" value="${user.phoneNumber}"></td>
	</tr>
	<tr>
		<td height="50">생일</td>
		<td colspan=3><input type="date" name="userBirth" min="1950-01-01" max="2023-12-31" value="${user.userBirth}"></td>
	</tr>
	<tr>
		<td height="50">펫 아이디</td>
		<td colspan=3><input type="text" name="petId" value="${user.petId}"></td>
	</tr>
	<tr>
		<td height="50">동아리</td>
		<td colspan=3><select name="comm_num">
			<c:forEach var="comm" items="${commList}">
				<option value="${comm.comm_num}"
					<c:if test="${comm.comm_num eq user.comm_num}">selected="selected"</c:if>
					>${comm.comm_title}</option>
			</c:forEach></select>
		</td>
	<tr>
		<td colspan=4>
			<input type="button" value="정보수정" onClick="<c:url value='/user/update' />"> &nbsp;
			<input type="button" value="회원탈퇴" onClick="<c:url value='/user/delete' />">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>