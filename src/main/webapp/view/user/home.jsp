<%--
  Created by IntelliJ IDEA.
  User: HoaiNong
  Date: 8/12/2023
  Time: 12:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
<html>
<head>
    <title>MovieH2T</title>
    <%--head--%>
    <%@include file="/common/user/_head.jsp"%>>
</head>
<body>
    <%--header--%>
    <%@include file="/common/user/_header.jsp"%>
    <%--body--%>
    <section class="hero">
        <div class="container">
            <div class="hero__slider owl-carousel">
                <div class="hero__items set-bg" data-setbg="<c:url value='/template/user/img/hero/hero-2.png'/>">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">Adventure</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="<c:url value='/template/user/img/hero/hero-2.jpg'/>">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">Adventure</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="<c:url value='/template/user/img/hero/hero-3.jpg'/>">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">Adventure</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <ul class="nav nav-tabs mb-3" id="myTab0" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button
                                class="nav-link active text-white  "
                                id="home-tab0"
                                data-mdb-toggle="tab"
                                data-mdb-target="#home0"
                                type="button"
                                role="tab"
                                aria-controls="home"
                                aria-selected="true"
                                style="background-color: #070720"
                        >
                            PHIM ĐANG CHIẾU
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button
                                class="nav-link text-white"
                                id="profile-tab0"
                                data-mdb-toggle="tab"
                                data-mdb-target="#profile0"
                                type="button"
                                role="tab"
                                aria-controls="profile"
                                aria-selected="false"
                                style="background-color: #070720"
                        >
                            PHIN SẮP CHIẾU
                        </button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent0">
                    <div class="tab-pane fade show active" id="home0" role="tabpanel" aria-labelledby="home-tab0">
                        <div class="trending__product">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>Phim Hay Mỗi Tuần</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="btn__all">
                                        <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach var="movie" items="${movies}" begin="0" end="5">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg" data-setbg="<c:url value='/template/user/img/movie/${movie.imageUrl}.jpg'/>">
                                                <div class="ep">18 / 18</div>
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <h5><a href="#">${movie.movieName}</a></h5>
                                                <ul>
                                                    <ul>
                                                        <li style="background-color: #c82333"><a href="/showtime?id-movie=${movie.id}" style="font-size: 20px">Book Now</a></li>
                                                        <li><a href="/phimdangchieu/${movie.id}" style="font-size: 20px">Detail</a></li>
                                                    </ul>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="profile0" role="tabpanel" aria-labelledby="profile-tab0">
                        <div class="popular__product">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>Phim Hay Sắp Ra Mắt</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="btn__all">
                                        <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach var="movie" items="${movies}" begin="0" end="5">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg" data-setbg="<c:url value='/template/user/img/movie/${movie.imageUrl}.jpg'/>">
                                                <div class="ep">18 / 18</div>
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <h5><a href="#">${movie.movieName}</a></h5>
                                                <ul>
                                                    <li style="background-color: #c82333"><a href="#" style="font-size: 20px">Book Now</a></li>
                                                    <li><a href="/phimsapchieu/${movie.id}" style="font-size: 20px">Detail</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <%--footer--%>
    <%@include file="/common/user/_footer.jsp"%>
    <%--search--%>
    <%@include file="/common/user/_search.jsp"%>
    <%--javascript--%>
    <%@include file="/common/user/_javascript-jquery.jsp"%>
</body>
</html>
