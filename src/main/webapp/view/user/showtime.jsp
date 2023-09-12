<%--
  Created by IntelliJ IDEA.
  User: HoaiNong
  Date: 8/12/2023
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>MovieH2T</title>
    <%--head--%>
    <%@include file="/common/user/_head.jsp" %>
</head>
<body>
<%--header--%>
<%@include file="/common/user/_header.jsp" %>
<%--body--%>
<!-- Anime Section Begin -->
<section class="anime-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="anime__details__episodes">
                    <div class="section-title">
                        <h5>SCHEDULE</h5>
                    </div>
                        <c:forEach var="day" items="${schedule}">
                            <a href="/showtime?id-movie=${requestScope.id-movie}&day=${day}"> ${day}</a>
                        </c:forEach>
                </div>
            </div>
        </div>
        <hr/>
    </div>
</section>
<!-- Anime Section End -->

<%--footer--%>
<%@include file="/common/user/_footer.jsp" %>
<%--search--%>
<%@include file="/common/user/_search.jsp" %>
<%--javascript--%>
<%@include file="/common/user/_javascript-jquery.jsp" %>
</body>
</html>
