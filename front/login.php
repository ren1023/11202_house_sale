<!DOCTYPE html>
<html lang="zh-TW">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> 管理登入會員登入 </title>
	<link rel="stylesheet" href="../assets/css/bootstrap.css">
	<script src="../assets/js/bootstrap.js"></script>
</head>

<body>
	<section class="vh-100" style="background-color: #846157;">
		<div class="container py-5 h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img src="../img/img1.jpg" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">
									<h2> 管理員登入區 </h2>
									<form action="../api/check.php" method="post">
										<?php

										// if(isset($_SESSION['login'])){
										// 	to("back.php");
										// }
										if (isset($_GET['error'])) {
											echo "<script>alert('{$_GET['error']}')</script>";
										}
										?>
										<!-- <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;"> 請登入 </h5> -->
										<div class="form-outline mb-4">
											<label class="form-label" for=""> 帳號：</label>
											<input type="text" name='acc' id="acc" class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-4">
											<label class="form-label" for=""> 密碼：</label>
											<input type="password" name="pw" id="pw" class="form-control form-control-lg" />
										</div>
										<div class="pt-1 mb-4">
											<input type="submit" class="btn-dark btn-lg btn-block" value="送出">
											<input type="reset" class="btn-dark btn-lg btn-block" value="清除">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>

</html>








<!-- <div> -->
	<!-- <div></div> -->
	<!--正中央-->
	<!-- <form method="post" action="../api/check.php">
		<p class="t botli">管理員登入區</p>
		<p class="cent">帳號 ： <input name="acc" autofocus="" type="text"></p>
		<p class="cent">密碼 ： <input name="pw" type="password"></p>
		<p class="cent"><input value="送出" type="submit"><input type="reset" value="清除"></p>
	</form> -->
<!-- </div> -->