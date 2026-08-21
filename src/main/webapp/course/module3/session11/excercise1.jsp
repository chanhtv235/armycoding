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
                <a href="/course/module3/session11/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 11. Mô hình MVC</a>

                <h4>[Bài tập] Tạo ứng dụng quản lý sản phẩm</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo ứng dụng quản lý theo kiến trúc MVC</p>

                <h5>Mô tả</h5>

                <p class="p1">- Nắm được kiến trúc MVC</p>
                <p class="p1">- Biết cách triển khai các ứng dụng quản lý sử dụng kiến trúc MVC</p>

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
                <p class="p1"><b>-Bước 1:</b> Tạo dự án Java web</p>
                <p class="p1"><b>-Bước 2:</b> Tạo model Product với các thuộc tính cần thiết</p>
                <p class="p1"><b>-Bước 3:</b> Tạo ProductService và ProductServiceImpl để giả lập danh sách các sản phẩm
                </p>
                <p class="p1"><b>-Bước 4:</b> Tạo ProductServlet và viết mã để điều hướng việc xử lý dựa theo thông tin
                    về action.</p>
                <p class="p1"><b>-Bước 5:</b> Phát triển tính năng hiển thị danh sách sản phẩm</p>
                <p class="p1"><b>-Bước 6:</b> Phát triển tính năng thêm sản phẩm mới</p>
                <p class="p1"><b>-Bước 7:</b> Phát triển tính năng cập nhật thông tin sản phẩm</p>
                <p class="p1"><b>-Bước 8:</b> Phát triển tính năng xoá sản phẩm</p>
                <p class="p1"><b>-Bước 9:</b> Phát triển tính năng xem chi tiết sản phẩm</p>
                <p class="p1"><b>-Bước 10</b>: Phát triển tính năng tìm kiếm sản phẩm theo tên</p>
            </div>
        </div>
    </div>

</body>
</html>
