 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--  CONTENT -->
 <div class="main-content-register">
        <div class="container">
            <div class="row">
                <div class="content-register-title">
                    <h2 class="content-paget-title-item"></h2>
                </div>
                <div class="col-sm-4">
                </div>
             <div class="col-sm-4">
                <div class="create-account">
                    <form:form method="POST" class="new-account-form primary-form" modelAttribute="user">
                        <h3 class="form-heading">Login Account</h3>
                        <div class="form-content">
                            <div class="form-group primary-form-group">
                            <spring:bind path="username">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="username">Tên đăng nhập</label>
                                <form:input class="form-control input-field" type="username" path="username" autofocus="true"></form:input>
                             </div>
                            </spring:bind>
                            <spring:bind path="password">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="password">Mật khẩu</label>
                                <form:input class="form-control input-field" type="password" path="password"></form:input>
                             </div>
                            </spring:bind>
                            <spring:bind path="passwordConfirm">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="passwordConfirm">Xác nhận mật khẩu</label>
                                <form:input class="form-control input-field" type="password" path="passwordConfirm"></form:input>
                             </div>
                            </spring:bind>
                                <div class="submit-button">
                                   <button class="btn btn-success btn-account" type="submit">Đăng ký</button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
            </div>
        </div>
    </div>
    <!-- END CONTENT -->