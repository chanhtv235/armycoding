<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../head.jsp"></c:import>
<body>
<style>
    td{
        padding: 5px 0px !important;
    }
</style>
<c:import url="../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../sidebar.jsp"></c:import>

    <div class=" col-lg-10 mt-3 container">
        <div class=" row container">
            <div class="col-lg-3 d-flex justify-content-center align-items-center">
                <div class="card mx-2 my-2" style="width: 12rem; height: 16rem;">
                    <img style="height: 60%" src="../../img/logo-mysql.png" class="card-img-top" alt="JAVASCRIPT">
                    <div class="card-body">
                        <h5 style="text-align: center" class="card-title">DATABASE, JAVA SERVLET</h5>
                        <p class="card-text" style="text-align: center">NỘI DUNG</p>
                    </div>
                </div>
            </div>
<c:if test="${sessionScope.account.role >=3}">
            <div class="col-lg-9">
                <h3><img width="48" height="48" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module3-Database, java web</h3>
                <table class="table">
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=1&fileName=detail">1. Tổng quan về Cơ sở dữ liệu
                            (database Mysql)</a> </td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=1">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/> <a href="/course?module=3&session=2&fileName=detail"> 2. Thiết kế Cơ sở dữ
                            liêu </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=2">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr class="py-0">
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/> <a href="/course?module=3&session=3&fileName=detail">3. Thao tác với CSDL </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=3">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=4&fileName=detail">4. Một số hàm thông dụng trong
                            mysql</a> </td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=4">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=5&fileName=detail">5. Index, View, Stored
                            procedure, function, trigger </a> </td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=5">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=6&fileName=detail">6. CSS (Cascading Style
                            Sheets)</a> </td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=6">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=7&fileName=detail">7. Tạo layout cho trang
                            web</a> </td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=7">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=8&fileName=detail">8. Bootstrap</a> </td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=8">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=9&fileName=detail">9. Tổng quan về java web (Jsp
                            và servrlet)</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=9">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/> <a href="/course?module=3&session=10&fileName=detail">10. JSTL</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=10">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=11&fileName=detail">11. Mô hình MVC </a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=11">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=12&fileName=detail">12. Kết nối CSDL với JDBC</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=12">[Download
                            slide]</a></c:if></td>
                    </tr>
                    <tr>
                        <td><img width="18" height="18" src="https://img.icons8.com/stencil/32/classroom.png"
                                 alt="classroom" class="mx-2"/><a href="/course?module=3&session=13&fileName=detail">13. Transaction với JDBC</a></td>
                        <td><c:if test="${sessionScope.account!=null}"><a class="btn btn-sm btn-outline-secondary" href="/download?module=3&slide=13">[Download
                            slide]</a></c:if></td>
                    </tr>


                </table>
            </div>
</c:if>
        </div>

    </div>


</body>
</html>
