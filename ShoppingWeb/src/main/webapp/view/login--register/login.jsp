
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- START CONTENT -->
<section class="main-content-login">
	<div class="container">
		<div class="row">
			<div class="content-login-title">
				<h2 class="content-paget-title-item"></h2>
			</div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="create-account">
					<form class="new-account-form primary-form"
						action="${pageContext.request.contextPath }/login" method="post">
						<h3 class="form-heading" style="text-align: center;">Login
							Account</h3>
						<div class="form-content">
							<div class="form-group primary-form-group">
								<div class="form-group ${error != null ? 'has-error' : ''}">
									<%-- <span style="color: red">${message}</span><br>  --%>
									<label for="email">Tên đăng nhập</label> <input
										class="form-control input-field" type="text" name="username">
									<label for="password">Mật khẩu</label> <input
										class="form-control input-field" type="password"
										name="password">
									<div class="checkbox">
										<label><input type="checkbox" value="">Ghi nhớ</label>
										<a class="forget_password" href="forgetPassword">Quên mật khẩu</a>
									</div>
									<span style="color: red">${error}</span> <input type="hidden"
										name="${_csrf.parameterName}" value="${_csrf.token}" /><br>
									<div class="submit-button">
										<button class="btn btn-success btn-account" type="submit"
											style="border-radius: 0px;">Đăng nhập</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END CONTENT -->