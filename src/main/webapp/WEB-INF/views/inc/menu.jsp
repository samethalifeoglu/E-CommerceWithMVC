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
				<img src='<s:url value="/resources/userimage/ee.jpg"></s:url>'
					class="img-circle" alt="User Image">
			</div>

			<div class="pull-left info">
				<c:if test="${not empty adminbilgisi}">
					<p>
						<c:out value="${adminbilgisi}"></c:out>
					</p>
				</c:if>
			</div>
		</div>


		<!-- sidebar menu: : style can be found in sidebar.less -->

		<i class="fa fa-dashboard"></i><a
			href='<s:url value="/kategoriduzenle"></s:url>'><span><c:out
					value="Kategori Ekle-Sil-Düzenle"></c:out></span></a>



		<ul class="sidebar-menu" data-widget="tree">





			<c:if test="${not empty ls }">
				<c:forEach var="iteml" items="${ls}">

					<li class="active treeview menu-open"><a href="#"> <i
							class="fa fa-dashboard"></i><span><c:out
									value="${ iteml.getKategadi() }"></c:out></span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li class="active treeview menu-open"><a href="#"> <i
									class="fa fa-dashboard"></i><span>Ürünler</span> <span
									class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
								<ul class="treeview-menu">
									<c:if test="${not empty kats}">
										<c:forEach var="item" items="${kats}">
											<c:if
												test="${ item.getUrunkategori() == iteml.getKategadi() }">
												<li><a
													href='<s:url value="/urunbilgisi/${item.getUrunkategori()}/${item.getUrunadi()}/${item.getUrunid()}"></s:url>'>
														<i class="fa fa-circle-o"></i> <c:out
															value="${item.getUrunadi()}"></c:out>
												</a></li>
											</c:if>
										</c:forEach>
									</c:if>
								</ul></li>

							<li><a
								href='<s:url value="/urunekleme/${ iteml.getKategadi()}"></s:url>'>
									<i class="fa fa-circle-o"></i>Ürün Ekle-Sil-Düzenle
							</a></li>
							<li class="active"><a
								href='<s:url value="/urunbilgileri/${ iteml.getKategadi()}"></s:url>'><i
									class="fa fa-circle-o"></i> Ürün Bilgileri</a></li>
						</ul></li>

				</c:forEach>
			</c:if>
		</ul>


	</section>
	<!-- /.sidebar -->
</aside>

