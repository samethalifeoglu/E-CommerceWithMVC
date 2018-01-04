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
						<h4 class="panel-title text-center">Ürün Ekle</h4>
					</div>
					<div class="panel-body">
						<p class="text-center">Lütfen kategorilere ürün ekleyiniz.</p>
						<hr>
						<form class="form-horizontal" style="width: 90%; margin: 0 auto;"
							action='<s:url value="/uruneklendi"></s:url>'>
							<!-- ÜST KATEGROİ -->

							<!-- Kategori Adı -->
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label for="kisa_aciklama">Ürün Adını Giriniz</label>
									</div>
									<div class="col-md-9">
										<input autocomplete="off" type="text" name="urunadi"
											class="form-control" placeholder="Ürün Adı Giriniz">
									</div>
								</div>
							</div>

							<!-- Buton -->
							<div class="form-group">

								<input type="submit" value="Kaydet" name="kaydet"
									class="btn btn-primary">

							</div>


						</form>
						<hr>
						<!---------------------------------------------------------------------------------------------------------------------------------------------->
						<c:if test="${not empty urunler }">


							<table class="table">
								<tr>
									<th class="tg-yw4l">Ürün id</th>
									<th class="tg-yw4l">Ürün Adı</th>
									<th class="tg-yw4l">Ürün Kategorisi</th>

								</tr>
								<c:forEach var="items" items="${urunler}">
									<form
										action='<s:url value="/urunduzenle/${items.getUrunadi()}"></s:url>'>
										<tr>
											<td class="tg-yw4l"><c:out value="${items.getUrunid()}"></c:out></td>
											<td class="tg-yw4l"><input autocomplete="off"
												name="yeniurun" type="text"
												value="<c:out value="${items.getUrunadi()}"></c:out>">
											</td>
											<td class="tg-yw4l"><c:out
													value="${items.getUrunkategori()}"></c:out></td>
											<td><a
												href='<s:url value="/urunsil/${items.getUrunid()}"></s:url>'
												class="btn btn-danger">Sil</a></td>
											<td><input type="submit" value="Düzenle"
												class="btn btn-warning"></td>

										</tr>
									</form>
								</c:forEach>
							</table>

						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="${request.contextPath}/footer"></jsp:include>


</body>
</html>
