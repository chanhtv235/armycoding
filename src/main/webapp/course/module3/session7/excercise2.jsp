<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Thiết kế Layout</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài tập] Tạo giao diện giản lược của trang chủ Facebook</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h3>Mục tiêu</h3>
                            <p>Thiết kế được fixed header và sidebar</p>
                            <h3>Mô tả</h3>
                            <p>Hãy tạo giao diện giản lược của Facebook, bao gồm:</p>
                            <ul>
                                <li>Fixed header ở trên cùng</li>
                                <li>Các phần sidebar</li>
                                <li>Phần nội dung chính</li>
                            </ul>


                </div>
            </div>
        </div>

</body>
</html>
