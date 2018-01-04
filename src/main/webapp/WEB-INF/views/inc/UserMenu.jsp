<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src='<s:url value="/resources/userimage/ee.jpg"></s:url>' class="img-circle"
					alt="User Image">
			</div>

			<div class="pull-left info">

				<p></p>
			</div>
		</div>


		<!-- sidebar menu: : style can be found in sidebar.less -->

		<ul class="sidebar-menu" data-widget="tree">


			<c:if test="${not empty UserKategori }">
				<c:forEach var="itema" items="${UserKategori}">

					<li class="active"><a href='<s:url value="/urunleri/${ itema.getKategadi()}"></s:url>'> <i
							class="fa fa-dashboard"></i><c:out
									value="${ itema.getKategadi() }"></c:out>
					</a></li>
				</c:forEach>
			</c:if>
		</ul>
	</section>
</aside>
