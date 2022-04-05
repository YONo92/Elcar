<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="resources/css/nucleo-icons.css" rel="stylesheet" />
<link href="resources/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle" href="resources/css/material-dashboard.css?v=3.0.2"
	rel="stylesheet" />
</head>
<body>
	<!-- 관리자 페이지 상단 이미지 -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Admin</h2>
						<div class="breadcrumb__links">
							<a href="./"><i class="fa fa-home"></i> Home</a> <span>관리자_신고회원관리
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact Address Begin -->
	<div class="contact-address">
		<div class="container">
			<div class="contact__address__text">

				<div class="container-fluid py-4">
					<div class="row">
						<div class="col-12">
							<div class="card my-4">
								<div
									class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
									<div
										class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
										<h6 class="text-white text-capitalize ps-3">Authors table</h6>
									</div>
								</div>
								<div class="card-body px-0 pb-2">
									<div class="table-responsive p-0">
										<table class="table align-items-center mb-0">
											<thead>
												<tr>
													<th
														class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Author</th>
													<th
														class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Function</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Employed</th>
													<th class="text-secondary opacity-7"></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">John Michael</h6>
																<p class="text-xs text-secondary mb-0">john@creative-tim.com</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs font-weight-bold mb-0">Manager</p>
														<p class="text-xs text-secondary mb-0">Organization</p>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-success">Online</span></td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">23/04/18</span>
													</td>
													<td class="align-middle"><a href="javascript:;"
														class="text-secondary font-weight-bold text-xs"
														data-toggle="tooltip" data-original-title="Edit user">
															Edit </a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">Alexa Liras</h6>
																<p class="text-xs text-secondary mb-0">alexa@creative-tim.com</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs font-weight-bold mb-0">Programator</p>
														<p class="text-xs text-secondary mb-0">Developer</p>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-secondary">Offline</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">11/01/19</span>
													</td>
													<td class="align-middle"><a href="javascript:;"
														class="text-secondary font-weight-bold text-xs"
														data-toggle="tooltip" data-original-title="Edit user">
															Edit </a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">Laurent Perrier</h6>
																<p class="text-xs text-secondary mb-0">laurent@creative-tim.com</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs font-weight-bold mb-0">Executive</p>
														<p class="text-xs text-secondary mb-0">Projects</p>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-success">Online</span></td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">19/09/17</span>
													</td>
													<td class="align-middle"><a href="javascript:;"
														class="text-secondary font-weight-bold text-xs"
														data-toggle="tooltip" data-original-title="Edit user">
															Edit </a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">Michael Levi</h6>
																<p class="text-xs text-secondary mb-0">michael@creative-tim.com</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs font-weight-bold mb-0">Programator</p>
														<p class="text-xs text-secondary mb-0">Developer</p>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-success">Online</span></td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">24/12/08</span>
													</td>
													<td class="align-middle"><a href="javascript:;"
														class="text-secondary font-weight-bold text-xs"
														data-toggle="tooltip" data-original-title="Edit user">
															Edit </a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">Richard Gran</h6>
																<p class="text-xs text-secondary mb-0">richard@creative-tim.com</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs font-weight-bold mb-0">Manager</p>
														<p class="text-xs text-secondary mb-0">Executive</p>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-secondary">Offline</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">04/10/21</span>
													</td>
													<td class="align-middle"><a href="javascript:;"
														class="text-secondary font-weight-bold text-xs"
														data-toggle="tooltip" data-original-title="Edit user">
															Edit </a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">Miriam Eric</h6>
																<p class="text-xs text-secondary mb-0">miriam@creative-tim.com</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs font-weight-bold mb-0">Programator</p>
														<p class="text-xs text-secondary mb-0">Developer</p>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-secondary">Offline</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">14/09/20</span>
													</td>
													<td class="align-middle"><a href="javascript:;"
														class="text-secondary font-weight-bold text-xs"
														data-toggle="tooltip" data-original-title="Edit user">
															Edit </a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>






			</div>
		</div>
	</div>
	<!-- Contact Address End -->
</body>

<!--   Core JS Files   -->
<script src="resources/js/core/popper.min.js"></script>
<script src="resources/js/core/bootstrap.min.js"></script>
<script src="resources/js/plugins/perfect-scrollbar.min.js"></script>
<script src="resources/js/plugins/smooth-scrollbar.min.js"></script>
<script>
	var win = navigator.platform.indexOf('Win') > -1;
	if (win && document.querySelector('#sidenav-scrollbar')) {
		var options = {
			damping : '0.5'
		}
		Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
	}
</script>
</html>