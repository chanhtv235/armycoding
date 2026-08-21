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
                <a href="/course/module4/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Validation</a>

                <h4>[Bài tập] Validate form đăng ký</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập triển khai cơ chế validate trong Spring MVC.</p>

                <h5>Mô tả</h5>
                <p class="p1">-Trong phần này, chúng ta sẽ phát triển một tính năng cho phép người dùng thực hiện đăng ký lên hệ thống.
                    Form đăng ký cho phép người dùng nhập các thông tin của tài khoản, hệ thống sẽ tiến hành validate dữ liệu trước khi thực hiện các thao tác lưu trữ thông tin người dùng vào CSDL.
                </p>

                  <h5>Hướng dẫn</h5>
                <p class="p1"><b>Bước 1:</b> Tạo dự án Spring MVC</p>
                <p class="p1"><b>Bước 2:</b> Tạo cấu trúc của dự án.</p>
                <p class="p1"><b>Bước 3:</b> Thêm springframeword và thymeleaf, validate dependencies trong file build.grade</p>
                <p class="p1"><b>Bước 4:</b> Cấu hình cho ứng dụng</p>
                <p class="p1"><b>Bước 5:</b> Tạo lớp User trong thư mục model, validate dữ liệu</p>
                <p class="p2">•	Firstname, lastname bắt buộc, có độ dài tối thiểu 5, tối đa 45 ký tự</p>
                <p class="p2">•	Phonenumber đúng quy tắc của sđt</p>
                <p class="p2">•	Age >=18</p>
                <p class="p2">•	Email đúng quy tắc của email</p>
                <p class="p1"><b>Bước 6:</b> Xây dựng interface UserService</p>
                <p class="p1"><b>Bước 7:</b> Xây dựng 1 class Implement interface UserService</p>
                <p class="p1"><b>Bước 8:</b> Tạo controller FormController với phương thức GetMapping và PostMapping</p>
                <p class="p1">Trong phương thức Post lưu ý validate dữ liệu trước khi lưu vào CSDL</p>
                <p class="p1"><b>Bước 9:</b> Tạo view index.html hiển thị form nhập dữ liệu User</p>
            </div>
        </div>
    </div>

</body>
</html>
