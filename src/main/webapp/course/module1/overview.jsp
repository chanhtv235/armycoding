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
                    <img style="height: 60%" src="../../img/logo-js.jpg" class="card-img-top" alt="JAVASCRIPT">
                    <div class="card-body">
                        <h5 style="text-align: center" class="card-title">JAVASCRIPT</h5>
                        <p class="card-text" style="text-align: center">NỘI DUNG</p>
                    </div>
                </div>
            </div>
<c:if test="${sessionScope.account.role >=1}">
            <div class="col-lg-9">
                <h3><img width="48" height="48" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module1-Lập
                    trình căn bản</h3>
                <table class="table">
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session1/detail.jsp">1.
                            Mã giả và lưu đồ</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/download?module=1&slide=1">[Download slide]</a></c:if>
                        </td>
                    </tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session2/detail.jsp">
                            2. Git và html</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=2">[Download slide]</a></c:if></td>
                    </tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session3/detail.jsp">3.
                            Form và table</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=3">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session4/detail.jsp">4.
                            Tổng quan về js</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=4">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session5/detail.jsp">5.
                            Biến và toán tử</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=5">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp">6.
                            Cấu trúc điều kiện</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=6">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp">7.
                            Cấu trúc lặp</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=7">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp">8.
                            Cấu trúc Mảng</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=8">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session9/detail.jsp">9.
                            Hàm trong javascript</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=9">[Download slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp">10.
                            Lập trình OOP</a></td>
                         <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=1&slide=10">[Download slide]</a></c:if></td>
                    </tr>


                </table>
            </div>
</c:if>
        </div>

    </div>

</body>
</html>
