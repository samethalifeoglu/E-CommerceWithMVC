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
	<div class="register-box">
		<div class="register-logo">
			<a href="../../index2.html"><b>Admin</b>LTE</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>

			<form action='<s:url value="/kayitkontrol"></s:url>' method="post">
				<div class="form-group has-feedback">
					<input type="isim" class="form-control" placeholder="Tam Adınız">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="email" class="form-control" placeholder="Email">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="sifre" class="form-control" placeholder="Şifre">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="tekrarsifre" class="form-control"
						placeholder="Tekrar Şifre"> <span
						class="glyphicon glyphicon-log-in form-control-feedback"></span>
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
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Kaydet</button>
					</div>
					
					<div class="col-md-12">
					
					<c:if test="${not empty iddegeri }">

						<h4>Resim Ekle</h4>


						<iframe
							src='http://localhost:8090/resim/index.php?resim_id=<c:out value="${iddegeri}"></c:out>'
							style="width: 100%; height: 300px;" frameborder="0"></iframe></c:if>

					</div>
					<!-- /.col -->
				</div>
			</form>



			<a href="login.html" class="text-center">I already have a
				membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->

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