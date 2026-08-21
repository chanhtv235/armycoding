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
            <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 6.Cấu trúc điều kiện </a>
            <h4>[*Bài tập] Ứng dụng good-fast-cheap</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng câu lệnh điều kiện if/else</p>
            <h6>Mô tả các chức năng</h6>
            <p>Viết một ứng dụng vui với cách hoạt động như sau:</p>
            <p> Tại một thời điểm 3 button không được chọn, chỉ có thể chọn được 2 trong 3 button</p>
            <h5>Hướng dẫn</h5>
            <p>Sử dụng các câu lệnh if lồng nhau để thực hiện việc kiểm tra các điều kiện.</p>

        </div>
    </div>
</div>
</body>
</html>
