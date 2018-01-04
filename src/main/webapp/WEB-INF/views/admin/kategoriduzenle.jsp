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
		
			<!-- KATEGORİ EKLEME -->
			
			<div class="container">

				<div class="col-xs-12">

					
					
<!---------------------------------------------------------------------------------------------------------------------------------------------->
					
					<!-- KATEGORİ DÜZENLEME -->


					
<!---------------------------------------------------------------------------------------------------------------------------------------------->
					
					<!-- KATEGORİ DÜZENLEME ONAY-->



					<c:if test="${not empty güncellemebasarili}">

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


					<c:if test="${not empty güncellemebasarisiz}">

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
					<!---------------------------------------------------------------------------------------------------------------------------------------------->
					
					<!-- KATEGORİ DÜZENLEME ONAY-->



					<c:if test="${not empty silmebasarili}">

						<form action='<s:url value="/yonetimegit"></s:url>'>

							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">SİLME ONAY !</h5>
								</div>
								<div class="modal-body">
									<h2>Silme işlemi başarılı.</h2>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary">Tamam</button>
								</div>
							</div>
						</form>
					</c:if>


					<c:if test="${not empty silmebasarisiz}">

						<form action='<s:url value="/yonetimegit"></s:url>'>

							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">SİLME ONAY !</h5>
								</div>
								<div class="modal-body">
									<h2>Silme işlemi başarısız.</h2>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary">Tamam</button>
								</div>
							</div>
						</form>
					</c:if>
					
<!---------------------------------------------------------------------------------------------------------------------------------------------->
					
					<!-- ÜRÜNLERİ GÖRME -->


					<c:if test="${not empty urunbilgileri }">

						<table class="table">
							<tr>
								<th class="tg-yw4l">Ürün id</th>
								<th class="tg-yw4l">Ürün Adı</th>
								<th class="tg-yw4l">Ürün Resmi</th>
								<th class="tg-yw4l">Ürün Klasörü</th>
								<th class="tg-yw4l">Ürün Açıklaması</th>
								<th class="tg-yw4l">Ürün Kategorisi</th>

							</tr>
							<c:forEach var="items" items="${urunbilgileri}">
								<tr>
									<td class="tg-yw4l"><c:out value="${items.getUrun_id()}"></c:out></td>
									<td class="tg-yw4l"><c:out
											value="${items.getUrun_adi()}"></c:out></td>
									<td class="tg-yw4l"><c:out
											value="${items.getUrun_resim()}"></c:out></td>
									<td class="tg-yw4l"><c:out
											value="${items.getUrun_klasor()}"></c:out></td>
									<td class="tg-yw4l"><c:out
											value="${items.getUrun_kisacik()}"></c:out></td>
									<td class="tg-yw4l"><c:out
											value="${items.getUrun_kategori()}"></c:out></td>
									<td><a href='<s:url value="/urunsil/${items.getUrun_id()}"></s:url>'
										class="btn btn-danger">Sil</a></td>
									
								</tr>
							</c:forEach>
						</table>
					</c:if>
<!---------------------------------------------------------------------------------------------------------------------------------------------->

				</div>

			</div>
		</div>
	</div>

	<!-- Main content -->




</body>
</html>