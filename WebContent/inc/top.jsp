<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더들어가는 곳 -->
<header>
	<%
		// 세션값 가져오기
		String id = (String) session.getAttribute("id");
		// 세션값이 없으면 login | join
		if (id == null) {

			// 세션값이 있으면 ..님 | logout | 회원정보 수정
	%>
	<div id="login">
		<a href="../member/login.jsp">login</a> | <a href="../member/join.jsp">join</a>
	</div>
	<%
		} else {
	%>
	<div id="login"><%=id%>님 | <a href="../member/logout.jsp">logout</a> | <a href="../member/updateForm.jsp">내정보</a>
	</div>
	<%
		}
	%>
	<div class="clear"></div>
	<!-- 로고들어가는 곳 -->
	<div id="logo">
		<img src="../images/logo.png" width="160" height="90" alt="Fun Web">
	</div>
	<!-- 로고들어가는 곳 -->
	<nav id="top_menu">
		<ul>
			<li><a href="../main/main.jsp">HOME</a></li>
			<li><a href="../company/welcome.jsp">COMPANY</a></li>
			<li><a href="../movie/movieList.jsp">MOVIES</a></li>
			<li><a href="../center/notice.jsp">BOARD</a></li>
			<li><a href="../contact/mailForm.jsp">CONTACT US</a></li>
		</ul>
	</nav>
</header>
<!-- 헤더들어가는 곳 -->