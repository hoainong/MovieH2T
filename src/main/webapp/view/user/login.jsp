<%--
  Created by IntelliJ IDEA.
  User: HoaiNong
  Date: 8/12/2023
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
>
<html>
<head>
    <title>MovieH2T</title>
    <%--head--%>
    <%@include file="/common/user/_head.jsp" %>
    >
</head>
<body>
<%--header--%>
<%@include file="/common/user/_header.jsp" %>
<%--body--%>
<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="normal__breadcrumb__text">
                    <h2>Login</h2>
                    <p>Welcome to the MOVIE-H2T.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Normal Breadcrumb End -->

<!-- Login Section Begin -->
<section class="login spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login__form">
                    <h3>Login</h3>
                    <form action="/login" method="post">
                        <div class="input__item">
                            <input name="email" type="text" placeholder="Email address">
                            <span class="icon_mail"></span>
                        </div>
                        <div class="input__item">
                            <input name="password" type="password" placeholder="Password">
                            <span class="icon_lock"></span>
                        </div>
                        <div>
                            <p class="text-danger">${error}</p>
                        </div>
                        <button type="submit" class="site-btn">Login Now</button>
                    </form>
                    <a href="/forget-password" class="forget_pass">Forgot Your Password?</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="login__register">
                    <h3>Dont’t Have An Account?</h3>
                    <a href="/signup" class="primary-btn">Register Now</a>
                </div>
            </div>
        </div>
        <div class="login__social">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="login__social__links">
                        <span>or</span>
                        <ul>
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With
                                Facebook</a></li>
                            <li>
                                <a href="/login-google" class="google">
                                    <i class="fa fa-google"></i> Sign in With Google</a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Login Section End -->

<%--footer--%>
<%@include file="/common/user/_footer.jsp" %>
<%--search--%>
<%@include file="/common/user/_search.jsp" %>
<%--javascript--%>
<%@include file="/common/user/_javascript-jquery.jsp" %>
</body>
</html>
