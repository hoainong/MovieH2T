<%--
  Created by IntelliJ IDEA.
  User: HoaiNong
  Date: 8/12/2023
  Time: 12:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-lg-2">
        <div class="header__logo">
          <a href="/home">
            <img src="<c:url value='/template/user/img/logoHN.png'/>" alt="">
            MOVIEH2T
          </a>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="header__nav">
          <nav class="header__menu mobile-menu">
            <ul>
              <li><a href="./blog.html">MUA VÉ</a></li>
              <li><a href="./categories.html">PHIM<span class="arrow_carrot-down"></span></a>
                <ul class="dropdown">
                  <li><a href="./categories.html">PHIM ĐANG CHIẾU</a></li>
                  <li><a href="./anime-details.html">PHIM SẮP CHIẾU</a></li>
                </ul>
              </li>
              <li><a href="./categories.html">GÓC ĐIỆN ẢNH<span class="arrow_carrot-down"></span></a>
                <ul class="dropdown">
                  <li><a href="./categories.html">THỂ LOẠI PHIM</a></li>
                  <li><a href="./anime-details.html">DIỄN VIÊN</a></li>
                  <li><a href="./categories.html">ĐẠO DIỄN</a></li>
                  <li><a href="./anime-details.html">QUỐC GIA</a></li>
                </ul>
              </li>
              <li><a href="./blog.html">LỊCH PHIM</a></li>
              <li><a href="#">HỖ TRỢ</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="col-lg-2">
        <div class="header__right dropdown">
          <a href="#" class="search-switch"><span class="icon_search"></span></a>
            <a
                    class="dropdown-toggle"
                    id="dropdownMenuButton"
                    data-mdb-toggle="dropdown"
                    aria-expanded="false"
            >
              <span class="icon_profile"></span>
            </a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <li><a class="dropdown-item text-dark" href="/login">Login</a></li>
              <li><a class="dropdown-item text-dark" href="/signup">SignUp</a></li>
              <li><a class="dropdown-item text-dark" href="/forget-password">Forget-password</a></li>
            </ul>

        </div>
      </div>
    </div>
    <div id="mobile-menu-wrap"></div>
  </div>
</header>
<!-- Header End -->
