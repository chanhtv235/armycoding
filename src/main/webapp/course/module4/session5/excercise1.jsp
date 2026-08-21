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
                <a href="/course/module4/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5. Spring boot và Spring data JPA</a>

                <h4>[Bài tập] Tạo ứng dụng Blog</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">-Luyện tập lưu trữ dữ liệu sử dụng Spring boot và Spring Data JPA</p>

                <h5>Mô tả</h5>

                <p class="p1">-Trong phần này chúng ta sẽ phát triển một ứn dụng viết blog cá nhân.</p>
                <p class="p1">-Ứng dụng có các chức năng sau:</p>
                <p class="p2">•	Viết một bài blog mới</p>
                <p class="p2">•	Hiển thị danh sách tóm tắt các blog</p>
                <p class="p2">•	Cập nhật nội dung một blog</p>
                <p class="p2">•	Xem nội dung một blog</p>
                <p class="p2">•	Xoá một blog</p>

                  <h5>Mô tả</h5>
                 <p class="p2"><b>Bước 1: </b>Tạo dự án và chọn  các thư viện</p>
                 <p class="p2"><b>Bước 2: </b>Tạo cấu trúc thư mục của ứng dụng theo Repository</p>
                 <p class="p2"><b>Bước 3: </b>Tạo model</p>
                 <p class="p2"><b>Bước 4: </b>Tạo repository</p>
                 <p class="p2"><b>Bước 5: </b>Tạo service</p>
                 <p class="p2"><b>Bước 6: </b>Tạo controller</p>
                 <p class="p2"><b>Bước 7: </b>Cập nhật các bean repository và service trong lớp cấu hình</p>
                 <p class="p2"><b>Bước 8: </b>Viết chức năng tạo blog mới</p>
                <p class="p2"><b>Bước 9:</b> Viết chức năng hiển thị tóm tắt danh sách blog</p>
                <p class="p2"><b>Bước 10:</b> Viết chức năng đọc 1 bài blog</p>
                <p class="p2"><b>Bước 11:</b> Viết chức năng cập nhật 1 bài blog</p>
                <p class="p2"><b>Bước 12:</b> Viết chức năng xoá 1 bài blog</p>
                <p class="p2"><b>Lưu ý: Ứng dụng này sẽ được tiếp tục phát triển trong các bài tiếp theo</b></p>


            </div>
        </div>
    </div>

</body>
</html>
