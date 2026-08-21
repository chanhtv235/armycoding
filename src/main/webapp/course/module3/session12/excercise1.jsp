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
                <a href="/course/module3/session12/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 12.JDBC</a>

                <h4>[Bài tập] Cập nhật ứng dụng quản lý User</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng JSP, Servlet, JDBC, MySql.</p>
                <h5>Mô tả</h5>
                <p class="p1">Cập nhật bài thực hành quản lý User, thêm chức năng:</p>
                <p class="p2">• Tìm kiếm theo country</p>

                <h5>Hướng dẫn</h5>
                <p class="p1">Trong phần này, chúng ta sẽ tạo một ứng dụng để quản lý sản phẩm. Ứng dụng có các chức
                    năng chính sau:</p>
                <p class="p2">• Hiển thị danh sách sản phẩm</p>
                <p class="p2">• Tạo sản phẩm mới</p>
                <p class="p2">• Cập nhật thông tin sản phẩm</p>
                <p class="p2">• Xoá một sản phẩm</p>
                <p class="p2">• Xem chi tiết một sản phẩm</p>
                <p class="p2">• Tìm kiếm sản phẩm theo tên</p>
                <p class="p1">Các thuộc tính của sản phẩm bao gồm: id, tên sản phẩm, giá sản phẩm, mô tả của sản phẩm,
                    nhà sản xuất</p>

                <h5>Hướng dẫn</h5>
                <p class="p1"><b>Bước 1:</b> Cập nhật lớp UserDAO </p>
                <p class="p1"><b>Bước 2:</b> Cập nhật lớp UserServlet </p>
                <p class="p1"><b>Bước 3:</b> Cập nhật view </p>
            </div>
        </div>
    </div>

</body>
</html>
