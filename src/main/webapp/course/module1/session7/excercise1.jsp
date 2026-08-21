<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 7.Cấu trúc lặp</a>
            <h4>[Bài tập] Sinh bảng cửu chương</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng vòng lặp.</p>

            <h5>Mô tả</h5>
            <p>
                Viết một ứng dụng để in ra trang web một bảng cửu chương với giao diện như sau:
            </p>
            <img src="img/img-e1.png" style="width: 90%;">
            <h5>Hướng dẫn</h5>
            <p>Bước 1: Tạo một trang web với các thẻ HTML cơ bản. </p>
            <p>Bước 2: Viết mã Javascript để chèn một bảng với các cột và dòng tương ứng vào tài liệu HTML: </p>
            <p>  •	Sử dụng 2 vòng lặp lồng nhau. Một vòng lặp để chèn các dòng và một vòng lặp để chèn các ô. </p>

        </div>
    </div>
</div>
</body>
</html>
