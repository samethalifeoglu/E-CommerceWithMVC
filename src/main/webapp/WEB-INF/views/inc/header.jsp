<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<header class="main-header">

	<!-- Logo -->
	<a href='<s:url value="/"></s:url>' class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>JavaLoper</b> Ticaret</span>
	</a>

	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->

				<!-- Notifications: style can be found in dropdown.less -->

				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu"><a
					href='<s:url value="/girisyap"></s:url>'> <i
						class="fa fa-sign-in" aria-hidden="true"></i> <span>Giris
							Yap </span>
				</a></li>
				<li class="dropdown tasks-menu"><a
					href='<s:url value="/yenikayit"></s:url>'> <i
						class="fa fa-user-plus" aria-hidden="true"></i></i><span>Kayıt
							Ol!</span>
				</a></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <c:if
							test="${not empty adminbilgisi}">
							<img src='<s:url value="/resources/userimage/ee.jpg"></s:url>'
								class="user-image" alt="User Image">
							<span class="hidden-xs"><c:out value="${adminbilgisi}"></c:out></span>

						</c:if>


				</a></li>

			</ul>
		</div>

	</nav>
</header>