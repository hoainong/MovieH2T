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
    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="blog__details__title">
                        <h6>Action, Magic <span>- March 08, 2020</span></h6>
                        <h2>Anime for Beginners: 20 Pieces of Essential Viewing</h2>
                        <div class="blog__details__social">
                            <a href="#" class="facebook"><i class="fa fa-facebook-square"></i> Facebook</a>
                            <a href="#" class="pinterest"><i class="fa fa-pinterest"></i> Pinterest</a>
                            <a href="#" class="linkedin"><i class="fa fa-linkedin-square"></i> Linkedin</a>
                            <a href="#" class="twitter"><i class="fa fa-twitter-square"></i> Twitter</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="blog__details__pic">
                        <img src="<c:url value='/template/user/img/blog/details/blog-details-pic.jpg'/>" alt="">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="blog__details__content">
                        <div class="blog__details__text">
                            <p>As a result the last couple of eps haven’t been super exciting for me, because they’ve
                                been more like settling into a familiar and comfortable routine.  We’re seeing character
                                growth here but it’s subtle (apart from Shouyou, arguably).  I mean, Tobio being an
                                asshole is nothing new – it’s kind of the foundation of his entire character arc. 
                                Confronting whether his being an asshole is a problem for the Crows this directly is a
                                bit of an evolution, and probably an overdue one at that, but the overall dynamic with
                                Kageyama is basically unchanged.</p>
                        </div>
                        <div class="blog__details__item__text">
                            <h4>Tobio-Nishinoya showdown:</h4>
                            <img src="img/blog/details/bd-item-1.jpg" alt="">
                            <p>In Japan the idea of a first-year speaking to a senior the way Kageyama did to Asahi is a
                                lot more shocking than it would be in the West, but Tobio calling out teammates in
                                genuinely rude fashion in the middle of a match is what got him isolated in the first
                                place.  It’s better for the Crows to sort this out in practice matches than the real
                                deal, but this is really on Tobio – he has to figure out how to co-exist with others in
                                a team environment.</p>
                        </div>
                        <div class="blog__details__item__text">
                            <h4>Nanatsu no Taizai: Kamigami No Gekirin</h4>
                            <img src="img/blog/details/bd-item-2.jpg" alt="">
                            <p>In Japan the idea of a first-year speaking to a senior the way Kageyama did to Asahi is a
                                lot more shocking than it would be in the West, but Tobio calling out teammates in
                                genuinely rude fashion in the middle of a match is what got him isolated in the first
                                place.  It’s better for the Crows to sort this out in practice matches than the real
                                deal, but this is really on Tobio – he has to figure out how to co-exist with others in
                                a team environment.</p>
                        </div>
                        <div class="blog__details__item__text">
                            <h4>ID:Ianvaded:</h4>
                            <img src="img/blog/details/bd-item-3.jpg" alt="">
                            <p>In Japan the idea of a first-year speaking to a senior the way Kageyama did to Asahi is a
                                lot more shocking than it would be in the West, but Tobio calling out teammates in
                                genuinely rude fashion in the middle of a match is what got him isolated in the first
                                place.  It’s better for the Crows to sort this out in practice matches than the real
                                deal, but this is really on Tobio – he has to figure out how to co-exist with others in
                                a team environment.</p>
                        </div>
                        <div class="blog__details__tags">
                            <a href="#">Healthfood</a>
                            <a href="#">Sport</a>
                            <a href="#">Game</a>
                        </div>
                        <div class="blog__details__btns">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="blog__details__btns__item">
                                        <h5><a href="#"><span class="arrow_left"></span> Building a Better LiA...</a>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="blog__details__btns__item next__btn">
                                        <h5><a href="#">Mugen no Juunin: Immortal – 21 <span
                                                class="arrow_right"></span></a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="blog__details__comment">
                            <h4>3 Comments</h4>
                            <div class="blog__details__comment__item">
                                <div class="blog__details__comment__item__pic">
                                    <img src="<c:url value='/template/user/img/blog/details/comment-1.png'/>" alt="">
                                </div>
                                <div class="blog__details__comment__item__text">
                                    <span>Sep 08, 2020</span>
                                    <h5>John Smith</h5>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi</p>
                                    <a href="#">Like</a>
                                    <a href="#">Reply</a>
                                </div>
                            </div>
                            <div class="blog__details__comment__item blog__details__comment__item--reply">
                                <div class="blog__details__comment__item__pic">
                                    <img src="<c:url value='/template/user/img/blog/details/comment-2.png'/>" alt="">
                                </div>
                                <div class="blog__details__comment__item__text">
                                    <span>Sep 08, 2020</span>
                                    <h5>Elizabeth Perry</h5>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi</p>
                                    <a href="#">Like</a>
                                    <a href="#">Reply</a>
                                </div>
                            </div>
                            <div class="blog__details__comment__item">
                                <div class="blog__details__comment__item__pic">
                                    <img src="<c:url value='/template/user/img/blog/details/comment-3.png'/>" alt="">
                                </div>
                                <div class="blog__details__comment__item__text">
                                    <span>Sep 08, 2020</span>
                                    <h5>Adrian Coleman</h5>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi</p>
                                    <a href="#">Like</a>
                                    <a href="#">Reply</a>
                                </div>
                            </div>
                        </div>
                        <div class="blog__details__form">
                            <h4>Leave A Commnet</h4>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" placeholder="Name">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" placeholder="Email">
                                    </div>
                                    <div class="col-lg-12">
                                        <textarea placeholder="Message"></textarea>
                                        <button type="submit" class="site-btn">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <%--footer--%>
    <%@include file="/common/user/_footer.jsp"%>
    <%--search--%>
    <%@include file="/common/user/_search.jsp"%>
    <%--javascript--%>
    <%@include file="/common/user/_javascript-jquery.jsp"%>
</body>
</html>
