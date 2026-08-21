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
                <a href="/course/module4/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 10. Jquery và AJAX</a>

                <h4>[Bài tập] Hoàn thiện ứng dụng quản lý điện thoại</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng AJAX trong một ứng dụng Web.</p>

                <h5>Mô tả</h5>
                <p class="p1">Trong phần này, chúng sẽ tính hợp AJAX vào trong ứng dụng Blog thông qua 2 tính năng
                    mới: </p>
                <p class="p2">- Tìm kiếm: Người dùng nhập từ vào ô tìm kiếm, ứng dụng sẽ gửi request thông qua AJAX để
                    hiển thị danh sách các bài viết phù hợp </p>
                <p class="p2">- Tải thêm: Là tính năng thay thế cho tính năng phân trang. Khi hiển thị danh sách bài
                    viết, chỉ hiện thị 20 bài viết, sau đó, người dùng sẽ nhấn nút “Tải thêm” để xem các bài viết cũ
                    hơn. </p>

                <h5>Hướng dẫn </h5>
                <p class="p1">-Thêm dependencies AJAX trong file build.gradle </p>
                <p class="p2">1. Chức năng tìm kiếm </p>
                <p class="p3">+ Bước 1: Trong trang danh sách các bài viết, tạo form tìm kiếm gồm 1 textbox và 1 nút
                    search </p>
                <p class="p3">+ Bước 2: Viết Jquery AJAX cho sự kiện submit form gửi dữ liệu cho controller </p>
                <p class="p3">+ Bước 3: Sửa lại controller nhận và trả dữ liệu lại cho AJAX hiển thị kết quả tìm kiếm </p>
                <p class="p3">+ Bước 4: Chạy ứng dụng </p>
                <p class="p2">2. Tải thêm </p>
                <p class="p3">+ Bước 1: Trong trang danh sách thêm nút “Tải thêm” </p>
                <p class="p3">+ Bước 2: Viết Jquery Ajax cho sự kiện click nút “Tải thêm” </p>
                <p class="p3">+ Bước 3: Viết controller trả về danh sách bài viết cho view </p>
                <p class="p3">+ Bước 4: Chạy ứng dụng </p>

            </div>
        </div>
    </div>

</body>
</html>
