<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin Yönetim Paneli</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->



<link rel="stylesheet"
	href='<s:url value="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"></s:url>'>
<!-- Font Awesome -->

<link rel="stylesheet"
	href='<s:url value="/resources/bower_components/font-awesome/css/font-awesome.min.css"></s:url>'>
<!-- Ionicons -->

<link rel="stylesheet"
	href='<s:url value="/resources/bower_components/Ionicons/css/ionicons.min.css"></s:url>'>
<!-- Theme style -->

<link rel="stylesheet"
	href='<s:url value="/resources/dist/css/AdminLTE.min.css"></s:url>'>
<!-- iCheck -->

<link rel="stylesheet"
	href='<s:url value="/resources/plugins/iCheck/square/blue.css"></s:url>'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>


<body class="hold-transition register-page">
	<c:if test="${not empty kayitiddegeri }">
		<div class="register-box">
			<div class="register-logo">
				<a href="../../index2.html"><b>Wissen</b>LTD</a>
			</div>

			<div class="register-box-body">
				<p class="login-box-msg">Yeni Kayıt</p>

				<form
					action='<s:url value="/kayitkontrol/${kayitiddegeri}"></s:url>'
					method="post">
					<div class="form-group has-feedback">
						<input type="text" name="username" class="form-control"
							placeholder="Kullanıcı Adınız" autocomplete="off"> <span
							class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="email" name="usermail" class="form-control"
							placeholder="Email" autocomplete="off"> <span
							class="glyphicon glyphicon-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" name="userpass" class="form-control"
							placeholder="Şifre" autocomplete="off"> <span
							class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control" name="userpasstekrar"
							placeholder="Tekrar Şifre" autocomplete="off"> <span
							class="glyphicon glyphicon-log-in form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Kaydet</button>
						</div>
						<div class="col-md-8">
							<c:if test="${not empty bilgilerbosgecilemez}">
								<button type="button" class="btn btn-block btn-danger btn-sm">Şifre
									veya kullanıcı ismi boş geçilemez</button>
							</c:if>
							<c:if test="${not empty sifreleruyumsuz}">
								<button type="button" class="btn btn-block btn-danger btn-sm">Şifreler
									eşleşmemektedir !</button>
							</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</c:if>

	<!---------------------------------------------------------------------------------------------------->
	<div class="login-box">
		<c:if test="${not empty yenikayiteklemebasarili }">

			<form action='<s:url value="/"></s:url>'>

				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">KAYIT ONAY !</h5>
					</div>
					<div class="modal-body">
						<h2>Kayıt işlemi başarılı.</h2>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Tamam</button>
					</div>
				</div>
			</form>
		</c:if>
	</div>
	<!---------------------------------------------------------------------------------------------------------------------------------------------->
	<div class="login-box">
		<c:if test="${not empty yenikayiteklemebasarisiz }">

			<form action='<s:url value="/"></s:url>'>

				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">KAYIT ONAY !</h5>
					</div>
					<div class="modal-body">
						<h2>Kayıt işlemi başarısız.</h2>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Tamam</button>
					</div>
				</div>
			</form>
		</c:if>
	</div>

	<!---------------------------------------------------------------------------------------------------------------------------------------------->
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html"><b>WİSSEN</b>Ticaret</a>
		</div>
		<!-- /.login-logo -->
		<c:if test="${not empty girispanel}">
			<div class="login-box-body">
				<p class="login-box-msg">Müşteri Giriş Paneli</p>

				<form method="post" action='<s:url value="/musteriGiris" ></s:url>'>
					<div class="form-group has-feedback">
						<input name="musterimail" type="email" class="form-control"
							placeholder="Email" autocomplete="off"> <span
							class="glyphicon glyphicon-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input name="musterisifre" type="password" class="form-control"
							placeholder="Şifre" autocomplete="off"> <span
							class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-8">
							<div class="checkbox icheck">
								<label> <input name="beni_hatirla" type="checkbox">
									Beni Hatırla
								</label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-xs-8">
							<c:if test="${not empty bossifre}">
								<button type="button" class="btn btn-block btn-danger btn-sm">Şifre
									veya Mail boş geçilemez</button>
							</c:if>

							<c:if test="${not empty sifremailyanlis}">
								<button type="button" class="btn btn-block btn-danger btn-sm">Mail
									veya şifre hatası !</button>
							</c:if>


						</div>
						<div class="col-xs-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Giriş
								Yap</button>
						</div>
						<div class="col-xs-7"></div>
						<div class="col-xs-5">
							<a href='<s:url value="/sifreunut"></s:url>'><h5>Şifremi
									Unuttum</h5></a>
						</div>
						<!-- /.col -->
					</div>
				</form>
			</div>
		</c:if>
	</div>





	<!-- jQuery 3 -->

	<script
		src='<s:url value="/resources/bower_components/jquery/dist/jquery.min.js"></s:url>'></script>
	<!-- Bootstrap 3.3.7 -->

	<script
		src='<s:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></s:url>'></script>
	<!-- iCheck -->

	<script
		src='<s:url value="/resources/plugins/iCheck/icheck.min.js"></s:url>'></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
</body>