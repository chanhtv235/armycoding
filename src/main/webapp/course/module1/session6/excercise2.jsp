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
            <h4>[Bài tập] Câu lệnh switch-case</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng câu lệnh switch-case.</p>

            <h5>Mô tả</h5>
            <p>Viết một ứng dụng cho phép tính được số ngày trong một tháng với giao diện như sau</p>
            <img src="${pageContext.request.contextPath}/course/module1/session6/img/img-e2.png" style="width: 50%;">

            <p>Mô tả tính năng:</p>
            <p>• Nhập vào một số là số thứ tự của tháng trong năm</p>
            <p>• Nhấn nút "Tinh số ngày" thì sẽ hiển thị số ngày của tháng đó</p>
            <h5>Hướng dẫn</h5>
            <p>• Sử dụng switch-case để lọc điều kiện</p>
            <p>• Sử dụng document.getElementById để làm việc với form</p>
            <p>• Có thể nhóm nhiều 'case' để mã nguồn gọn gàng hơn</p>


        </div>
    </div>
</div>
</body>
</html>
