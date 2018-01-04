<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Halifeoğlu Kardeşler</title>
<jsp:include page="${request.contextPath}/css"></jsp:include>
</head>
<body class="hold-transition skin-green sidebar-mini">

	<div class="wrapper">
		<jsp:include page="${request.contextPath}/header"></jsp:include>
		<jsp:include page="${request.contextPath}/UserMenu"></jsp:include>

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<!------------------------------------------------------- /.login-box --------------------------------------------->

			<c:if test="${not empty baslik }">
				<section class="content-header">
				<h1>
					<c:out value="${baslik}"></c:out>
					Kategorisi
				</h1>

				</section>
				<hr>
			</c:if>
			<!------------------------------------------------------- /.login-box --------------------------------------------->

			<!-- Main content -->

			<div class="row">

				<!------------------------------------------------------- /.login-box --------------------------------------------->


				<c:if test="${not empty resimler }">
					<div class="container">
						<div class="row">
							<c:forEach var="resim" items="${resimler}">
								<div class="col-xs-3">
									<a
										href='<s:url value="/urundetay/${resim.getUrun_id()}"></s:url>'><div
											class="thumbnail">
											<img
												src='<s:url value="http://localhost:8090/resim/server/php/files/${resim.getUrun_id()}/thumbnail/${resim.getUrun_resim()}"></s:url>'>
											<div class="caption">
												<center>
													<h4>${resim.getUrun_detay()}</h4>
													<hr>
													<h3>${resim.getUrun_fiyat()}
														<i class="fa fa-try" aria-hidden="true"></i>
													</h3>
												</center>
												<center>
													<i class="fa fa-truck" aria-hidden="true"></i>
													<div class="shippingFree">
														<span class="icon"></span>Ücretsiz Kargo
													</div>

												</center>
											</div>
										</div></a>
								</div>


							</c:forEach>
						</div>
					</div>
				</c:if>
				<!------------------------------------------------------- /.login-box --------------------------------------------->

				<hr>

				<c:if test="${not empty urundet}">
					<c:forEach var="detay" items="${urundet}">

						<div class="col-lg-12">
							<div class="box box-solid">
								<div class="box-header with-border">
									<h3 class="box-title">${detay.getUrun_kategori()}</h3>
								</div>
								<!-- /.box-header -->

								<div class="box-body">
									<div class="col-md-6">
										<div id="carousel-example-generic" class="carousel slide"
											data-ride="carousel">
											<ol class="carousel-indicators">
												<li data-target="#carousel-example-generic"
													data-slide-to="0" class="active"></li>
												<li data-target="#carousel-example-generic"
													data-slide-to="1" class=""></li>
												<li data-target="#carousel-example-generic"
													data-slide-to="2" class=""></li>
											</ol>




											<div class="carousel-inner">
												<div class="item active">
													<center>
														<img
															src='<s:url value="http://localhost:8090/resim/server/php/files/${detay.getUrun_id()}/${detay.getUrun_resim()}"></s:url>'
															alt="Second slide">
													</center>


												</div>
												<c:if test="${not empty resimm}">
													<c:forEach var="resimal" items="${resimm}">
														<div class="item">
															<center>
																<img
																	src='<s:url value="http://localhost:8090/resim/server/php/files/${detay.getUrun_id()}/${resimal}"></s:url>'
																	alt="Second slide">

															</center>
														</div>
													</c:forEach>
												</c:if>
											</div>




											<a class="left carousel-control"
												href="#carousel-example-generic" data-slide="prev"> <span
												class="fa fa-angle-left"></span>
											</a> <a class="right carousel-control"
												href="#carousel-example-generic" data-slide="next"> <span
												class="fa fa-angle-right"></span>
											</a>
										</div>
									</div>

									<!-- /.box-body -->



									<div class="col-md-6">
										<div class="box-body">
											<i class="fa fa-truck" aria-hidden="true"></i>
											<div class="shippingFree">
												<span class="icon">Ücretsiz Kargo</span>
											</div>
										</div>

										<div class="panel box box-primary">
											<div class="box-header with-border">
												<h4 class="box-title">${detay.getUrun_adi()}</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="box-body">
													<h4>${detay.getUrun_kisacik()}</h4>
												</div>
											</div>

											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="box-body">
													<h3>${detay.getUrun_fiyat()}
														<i class="fa fa-try" aria-hidden="true"></i>
													</h3>
												</div>
											</div>





										</div>
										<div class="col-xs-4">
											<button type="button"
												class="btn btn-block btn-primary btn-lg">Sepete
												Ekle</button>
										</div>
										<div class="col-xs-8"><a href='<s:url value="/satinal"></s:url>'>
											<button type="button"
												class="btn btn-block btn-warning btn-lg">Satın Al</button></a>
										</div>
									</div>
								</div>


								<!-- /.box -->
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h1 class="panel-title">Ürün Detayları</h1>
								</div>
								<div class="panel-body">
									<c:out value="${detay.getUrun_editor()}" escapeXml="false"></c:out>
								</div>
							</div>
					</c:forEach>
				</c:if>

				<!------------------------------------------------------- /.login-box --------------------------------------------->


			</div>
		</div>
	</div>









	<jsp:include page="${request.contextPath}/footer"></jsp:include>
	<jsp:include page="${request.contextPath}/js"></jsp:include>
</body>
</html>