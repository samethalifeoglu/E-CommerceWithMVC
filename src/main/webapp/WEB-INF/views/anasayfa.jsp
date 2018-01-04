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


			<!-- Main content -->

			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">Günün Fırsatları</h3>
				</div>
				<!-- /.box-header -->

				<div class="box-body">
					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"
									class=""></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"
									class=""></li>
							</ol>




							<div class="carousel-inner">
								<div class="item active">
									<center>
										<img
											src='<s:url value="http://localhost:8090/resim/al1.png"></s:url>'
											alt="Second slide">
									</center>


								</div>
								<div class="item ">
									<center>
										<img
											src='<s:url value="http://localhost:8090/resim/al2.png"></s:url>'
											alt="Second slide">
									</center>
								</div>
								<div class="item ">
									<center>
										<img
											src='<s:url value="http://localhost:8090/resim/al3.png"></s:url>'
											alt="Second slide">
									</center>
								</div>
							</div>




							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span class="fa fa-angle-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="fa fa-angle-right"></span>
							</a>
						</div>
					</div>
				</div>
			</div>


			<!------------------------------------------------------------ /.box-body --------------------------------------------------------------------->
			<div class="container">
				<div class="row">
					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/4/135/9635136634930.jpg"></s:url>'>
							<div class="caption">
								<h4>Samsung UE50MU7000 Ultra HD 50" 127 cm Smart LED TV</h4>
								<h3>539,00 TL</h3>

								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/6/135/9721694683186.jpg"></s:url>'>
							<div class="caption">
								<h4>Lenovo Moto E4 Plus 16 GB (Lenovo Türkiye Garantili)</h4>
								<h3>539,00 TL</h3>
								<p>
								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>

							</div>
						</div>
					</div>

					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/17/135/9775895576626.jpg"></s:url>'>
							<div class="caption">
								<h4>Versace Eros EDT 100 ml + 30 ml Erkek Parfüm Seti</h4>
								<h3>539,00 TL</h3>
								<p>
								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>

							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/8/135/9015748624434.jpg"></s:url>'>
							<div class="caption">
								<h4>Samsung AddWash Akıllı Kapak Teknolojili Çamaşır Makinesi</h4>
								<h3>539,00 TL</h3>

								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/7/500/9164349734962.jpg"></s:url>'>
							<div class="caption">
								<h4>Emporio Armani Ar1737 Erkek Kol Saati</h4>
								<h3>539,00 TL</h3>

								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/1/200/9498272202802.jpg"></s:url>'>
							<div class="caption">
								<h4>Emporio Armani Ar1737 Erkek Kol Saati</h4>
								<h3>539,00 TL</h3>
								<p>
								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>

							</div>
						</div>
					</div>

					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/1/200/9498272202802.jpg"></s:url>'>
							<div class="caption">
								<h4>SanDisk Ultra Dual Drive Type-C 16GB USB Bellek </h4>
								<h3>539,00 TL</h3>
								<p>
								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>

							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="thumbnail">
							<img
								src='<s:url value="https://productimages.hepsiburada.net/s/1/200/9521419550770.jpg"></s:url>'>
							<div class="caption">
								<h4>Vestel 32HB5000 32" 82 Ekran HD Uydu Alıcılı LED TV</h4>
								<h3>539,00 TL</h3>

								<center>
									<a href="#" class="btn btn-primary" role="button">Satın Al</a>
								</center>
							</div>
						</div>
					</div>
				</div>
			</div>



			<jsp:include page="${request.contextPath}/footer"></jsp:include>
			<jsp:include page="${request.contextPath}/js"></jsp:include>
</body>
</html>