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






			<section class="content">
				<c:if test="${ not empty resimeditor }">

					<div class="row">

						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header">

									<h3 class="box-title"></h3>

									<!---------------------------------------------------------------------------------------------------------------------------------------------->

									<c:if test="${not empty editordolu}">


										<form
											action='<s:url value="/urunbilgiduzenle/${resimeditor}"></s:url>'>
											<c:forEach var="ite" items="${editordolu}">
												<h3>Ürün Fiyatı</h3>

												<input autocomplete="off" type="text" name="fiyat"
													value="${ite.getUrun_fiyat()}" class="form-control">
												<h3>Ürün Kısa Açıklaması</h3>
												<input autocomplete="off" type="text" name="kisacik"
													value="${ite.getUrun_kisacik()}" class="form-control" >
													<hr>
													
													<h3>Ürün Detayı</h3>


												<textarea class="ckeditor" id="editor1" name="editor"
													rows="10" cols="80"><c:out
														value="${ite.getUrun_editor()}" escapeXml="false"></c:out></textarea>
												<button type="submit" class="btn btn-success">Düzenle</button>
											</c:forEach>
										</form>
									</c:if>
									<!---------------------------------------------------------------------------------------------------------------------------------------------->

									<c:if test="${not empty editorbos}">
										<form
											action='<s:url value="/urunbilgiekle/${resimeditor}"></s:url>'>
											<h3>Ürün Fiyatı</h3>

											<input autocomplete="off" type="text" name="fiyat" class="form-control" placeholder="Ürün fiyatı giriniz">

											<h3>Ürün Kısa Açıklaması</h3>
											<input autocomplete="off" type="text" name="kisacik" class="form-control" placeholder="Kısa bir açıklama yazınız" >
											<hr>
											
											<h3>Ürün Detayı</h3>

											<textarea class="ckeditor" id="editor1" name="editor"
												rows="10" cols="80" ></textarea>
											<button type="submit" class="btn btn-success">Ekle</button>

										</form>
									</c:if>
									<!---------------------------------------------------------------------------------------------------------------------------------------------->
								</div>
							</div>
						</div>

						<div class="col-md-12">

							<h4>Resim Ekle</h4>


							<iframe
								src='http://localhost:8090/resim/index.php?resim_id=<c:out value="${id}"></c:out>'
								style="width: 100%; height: 300px;" frameborder="0"></iframe>

						</div>

					</div>
				</c:if>
			</section>
			<!---------------------------------------------------------------------------------------------------------------------------------------------->
			<c:if test="${not empty eklemebasarili }">

				<form action='<s:url value="/yonetimegit"></s:url>'>

					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">EKLEME ONAY !</h5>
						</div>
						<div class="modal-body">
							<h2>Ekleme işlemi başarılı.</h2>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Tamam</button>
						</div>
					</div>
				</form>
			</c:if>
			<!---------------------------------------------------------------------------------------------------------------------------------------------->

			<c:if test="${not empty eklemebasarisiz }">

				<form action='<s:url value="/yonetimegit"></s:url>'>

					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">EKLEME ONAY !</h5>
						</div>
						<div class="modal-body">
							<h2>Ekleme işlemi başarısız.</h2>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Tamam</button>
						</div>
					</div>
				</form>
			</c:if>
			<!---------------------------------------------------------------------------------------------------------------------------------------------->

			<c:if test="${not empty guncelbasarili }">

				<form action='<s:url value="/yonetimegit"></s:url>'>

					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">GÜNCELLEME ONAY !</h5>
						</div>
						<div class="modal-body">
							<h2>Güncelleme işlemi başarılı.</h2>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Tamam</button>
						</div>
					</div>
				</form>
			</c:if>
			<!---------------------------------------------------------------------------------------------------------------------------------------------->

			<c:if test="${not empty guncelbasarisiz }">

				<form action='<s:url value="/yonetimegit"></s:url>'>

					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">GÜNCELLEME ONAY !</h5>
						</div>
						<div class="modal-body">
							<h2>Güncelleme işlemi başarısız.</h2>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Tamam</button>
						</div>
					</div>
				</form>
			</c:if>
			<!---------------------------------------------------------------------------------------------------------------------------------------------->

		</div>
	</div>

</body>
</html>