<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../head.jsp"/>
<body>
<style>
    td{
        padding: 5px 5px !important;
    }
</style>
<c:import url="../../navbar.jsp"/>

<div class="row main">
    <c:import url="../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 container">
        <div class=" row container">
            <div class="col-lg-3 d-flex justify-content-center align-items-center">
                <div class="card mx-2 my-2" style="width: 12rem; height: 16rem;">
                    <img style="height: 60%" src="../../img/logo-spring.png" class="card-img-top" alt="JAVASCRIPT">
                    <div class="card-body">
                        <h5 style="text-align: center" class="card-title">JAVA-SPRING FRAMEWORK</h5>
                        <p class="card-text" style="text-align: center">NỘI DUNG</p>
                    </div>
                </div>
            </div>
<c:if test="${sessionScope.account.role >=4}">
            <div class="col-lg-9">
                <h3><img width="48" height="48" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module4-JAVA-
                    SPRING FRAMEWORK</h3>
                <table class="table">
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=1&fileName=detail">1.
                            Tổng quan về Spring MVC</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=1">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/> <a href="${pageContext.request.contextPath}/course?module=4&session=2&fileName=detail"> 2.
                            Spring contorller </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=2">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/> <a href="${pageContext.request.contextPath}/course?module=4&session=3&fileName=detail">3.
                            Data binding và thymeleaf </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=3">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=4&fileName=detail">4.
                            ORM- Object Relational Mapping</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=4">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=5&fileName=detail">5.
                            Spring boots và Spring Data JPA</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=5">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=6&fileName=detail">6.
                            Spring Data JPA (Paging, Search, Sorting)</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=6">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=4&session=7&fileName=detail">7.
                            Validation trong Spring</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=7">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=8&fileName=detail">8.
                            Session và Cookie</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=8">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=9&fileName=detail">9.
                            Web service</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=9">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/> <a href="${pageContext.request.contextPath}/course?module=4&session=10&fileName=detail">10.
                            Jquery và Ajax</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=10">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course?module=4&session=11&fileName=detail">11.
                            Spring Security </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=4&slide=11">[Download
                            slide]</a></c:if></td>
                    </tr>
             
                </table>
            </div>
</c:if>
        </div>

    </div>



</body>
</html>
