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
                <a href="/course/module3/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về CSDL</a>

                <h4>[Bài tập] Xây dựng cơ sở dữ liệu quản lý sinh viên</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập các thao tác tạo bảng trên MySQL Workbrench</p>

                <h5>Mô tả</h5>

                <p class="p1">Tiếp tục sử dụng CSDL đã được tạo ở bài thực hành trước</p>
                <p class="p1">Trong bài tập này chúng ta sẽ tạo ra các bảng sau bằng MySQL Workbrench:</p>
                <p class="p2">• Bảng Class có các trường lần lượt là id, name</p>
                <p class="p2">• Bảng Teacher có các trường lần lượt là id, name, age, country</p>
                <h5>Hướng dẫn</h5>
                <p class="p1">-Bước 1: Khởi động Workbrench và click chuột phải vào schema student-management chọn
                    Create Table</p>
                <p class="p1">-Bước 2: Đặt tên của bảng là Class và điền các trường tương ứng vào trong bảng</p>
                <p class="p1">-Bước 3: Chọn Apply để tạo bảng Class</p>
                <p class="p1">-Bước 4: Làm tương tự các bước trên với bảng Teacher</p>

            </div>
        </div>
    </div>

</body>
</html>
