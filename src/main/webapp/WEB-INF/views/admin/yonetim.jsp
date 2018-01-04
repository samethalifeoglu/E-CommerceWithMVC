<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin Yönetim Paneli</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<jsp:include page="${request.contextPath}/css"></jsp:include>
<jsp:include page="${request.contextPath}/js"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="${request.contextPath}/HeaderAdmin"></jsp:include>
		<jsp:include page="${request.contextPath}/menu"></jsp:include>
		<div class="content-wrapper">

			<!-- Content Header (Page header) -->

			<!-- Main content -->
			<div class="container">
				<hr>

				<div class="panel panel-primary"
					style="width: 75%; margin: 0 auto; margin-bottom: 50px">
					<div class="panel-heading">
						<h4 class="panel-title text-center">Ürün Kategori Ekle</h4>
					</div>
					<div class="panel-body">
						<p class="text-center">Ürün Kategori Bilgilerinizi Giriniz.</p>
						<hr>
						<form class="form-horizontal" style="width: 90%; margin: 0 auto;"
							action='<s:url value="/kategorieklendi"></s:url>'>
							<!-- ÜST KATEGROİ -->

							<!-- Kategori Adı -->
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label for="kisa_aciklama">Kategori Adını Giriniz</label>
									</div>
									<div class="col-md-9">
										<input type="text" name="kategoriadi" class="form-control"
											placeholder="Kategori Adı Giriniz">
									</div>
								</div>
							</div>

							<!-- Buton -->
							<div class="form-group">
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-9 text-right">
										<input type="submit" value="Ekle" name="kaydet"
											class="btn btn-primary">
									</div>
								</div>
							</div>
						</form>
						<!---------------------------------------------------------------------------------------------------------------------------------------------->
						<c:if test="${not empty kategorilerigetir}">


							<table class="table">
								<tr>
									<th class="tg-yw4l">Kategori id</th>
									<th class="tg-yw4l">Kategori Adı</th>

								</tr>
								<div class="col-md-12 text-right">
									<c:forEach var="kategorim" items="${kategorilerigetir}">
										<form
											action='<s:url value="/duzenlendi/${kategorim.getKategadi()}"></s:url>'>
											<tr>
												<td class="tg-yw4l"><c:out
														value="${kategorim.getKategid()}"></c:out></td>
												<td class="tg-yw4l"><input autocomplete="off"
													name="duzenlenenkategori" type="text"
													value="<c:out value="${kategorim.getKategadi()}"></c:out>"></td>
												<td><a
													href='<s:url value="/kategorisil/${kategorim.getKategadi()}"></s:url>'
													class="btn btn-danger">Sil</a></td>
												<td><input type="submit" value="Düzenle"
													class="btn btn-warning"></td>
											</tr>
										</form>
									</c:forEach>
								</div>
							</table>

						</c:if>
					</div>
				</div>
			</div>

		</div>
		<jsp:include page="${request.contextPath}/footer"></jsp:include>

	</div>

</body>
</html>
