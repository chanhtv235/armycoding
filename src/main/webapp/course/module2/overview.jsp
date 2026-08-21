<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../head.jsp"/>
<body>
<style>
    td {
        padding: 5px 8px !important;
    }
</style>
<c:import url="../../navbar.jsp"/>

<div class="row main">
    <c:import url="../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 container">
        <div class=" row container">
            <div class="col-lg-3 d-flex justify-content-center align-items-center">
                <div class="card mx-2 my-2" style="width: 12rem; height: 16rem;">
                    <img style="height: 60%" src="../../img/logo-java.jpg" class="card-img-top" alt="JAVASCRIPT">
                    <div class="card-body">
                        <h5 style="text-align: center" class="card-title">JAVA CORE</h5>
                        <p class="card-text" style="text-align: center">NỘI DUNG</p>
                    </div>
                    <a class="btn btn-warning btn-sm"
                       href="https://quoc9x.com/2022/03/01/intellij-huong-dan-cai-dat-va-kich-hoat-chi-tiet/"> Hướng dẫn
                        cài đặt tool Intellij 2021</a>
                </div>
            </div>
<c:if test="${sessionScope.account.role >=2}">
            <div class="col-lg-9">
                <h3><img width="48" height="48" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module2-Java
                    core</h3>
                <table class="table">
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session1/detail.jsp">1.
                            Tổng quan về Java</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=1">[Download
                            slide]</a></c:if></td></tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session2/detail.jsp">
                            2. Vòng lặp trong java</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=2">[Download
                            slide]</a></c:if></td></tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session3/detail.jsp">
                            3. Mảng và Phương thức trong java</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=3">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session4/detail.jsp">4.
                            Class và Object </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=4">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session5/detail.jsp">5.
                            Static và Access Modifier</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=5">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session6/detail.jsp">6.
                            Kết thừa trong java</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=6">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session7/detail.jsp">7.
                            Abstract class và Interface</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=7">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session8/detail.jsp">8.
                            Java collection framework (List, Set, Stack, Queue và Map)</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=8">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session9/detail.jsp">9.
                            Clean code, Mô hình MVC</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=9">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session10/detail.jsp">10.
                            Exception trong java</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=10">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a
                                href="${pageContext.request.contextPath}/course/module2/session11/detail.jsp">11.
                            I/O file trong java</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=11">[Download
                            slide]</a></c:if></td></tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module2/session12/detail.jsp">12.
                            String và Regex</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary"
                                                                      href="${pageContext.request.contextPath}/download?module=2&slide=12">[Download
                            slide]</a></c:if></td></tr>


                </table>
            </div>
</c:if>
        </div>

    </div>

</body>
</html>
