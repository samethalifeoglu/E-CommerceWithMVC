
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Payment Form Widget Flat Responsive Widget Template ::
	w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Payment Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 








</script>
<!-- //for-mobile-apps -->
<jsp:include page="${request.contextPath}/css"></jsp:include>
<jsp:include page="${request.contextPath}/js"></jsp:include>
<link href='//fonts.googleapis.com/css?family=Fugaz+One'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Alegreya+Sans:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,800,800italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>

</head>
<body>

	<div class="main">

		<h1>Ödeme Sayfası</h1>
		<!---728x90--->

		<div class="content">
			<div class="col-xs-6"></div>
			<div class="col-xs-6">
				<a href='<s:url value="/odemeicinkayit"></s:url>'>
					<h4>Hesabınız yok mu? Kayıt Ol.</h4>
				</a>
			</div>


			<script type="text/javascript">
				$(document).ready(function() {
					$('#horizontalTab').easyResponsiveTabs({
						type : 'default', //Types: default, vertical, accordion           
						width : 'auto', //auto or any width like 600px
						fit : true
					// 100% fit in a container
					});
				});
			</script>

			<div class="sap_tabs">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<div class="pay-tabs">
						<h2>ÖDEME ŞEKLİ</h2>

						<ul class="resp-tabs-list">


							<li></li>

							<center>


								<i class="fa fa-cc-mastercard fa-4x" aria-hidden="true"></i>
							</center>


							<div class="clear"></div>
						</ul>
					</div>
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="payment-info">
								<h3>Kullanıcı Bilgileri</h3>
								<form method="post" action='<s:url value="/odemeyapiliyor" ></s:url>'>
									<div class="tab-for">
										<h5>EMAIL ADRESİ</h5>
										<input type="email" value="" name="usermail" class="form-control">
										<h5>KULLANICI ADI</h5>
										<input type="password" value="" name="usersifre" class="form-control">


									</div>


									
									<h3 class="pay-title">Kredi Kartı Bilgileri</h3>

									<div class="tab-for">
										<h5>KART ÜZERİNDEKİ İSİM</h5>
										<input type="text" value="" name="kartisim">
										<h5>KART NUMARASI</h5>
										<input class="pay-logo" type="text" name="kartnumara"
											value="0000-0000-0000-0000" onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = '0000-0000-0000-0000';}"
											required=>
									</div>
									<div class="transaction">
										<div class="tab-form-left user-form">
											<h5>SON KULLLANIM</h5>
											<ul>
												<li><input type="number" class="text_box" type="text"
													name="gun" value="00" min="1" /></li>
												<li><input type="number" class="text_box" type="text"
													name="yil" value="00" min="1" /></li>

											</ul>
										</div>
										<div class="tab-form-right user-form-rt">
											<h5>CVV NUMARASI</h5>
											<input type="text" name="cvv" value="xxx"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'xxx';}">
										</div>
										<div class="clear"></div>
									</div>
									<input type="submit" value="Onayla">
								</form>

							</div>
						</div>



					</div>
				</div>
			</div>

		</div>
		<!---728x90--->

		<p class="footer">
			Copyright © 2016 Payment Form Widget. All Rights Reserved | Template
			by <a href="https://w3layouts.com/" target="_blank">w3layouts</a>
		</p>
		<!---728x90--->

	</div>
</body>
</html>