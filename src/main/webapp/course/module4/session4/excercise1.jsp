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
                <a href="/course/module4/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4. ORM</a>

                <h4>[Bài tập] Xây dựng ứng dụng nghe nhạc đơn giản</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng framework Hibernate để ánh xạ bộ nhớ của chương trình với database.</p>

                <h5>Mô tả</h5>

                <p class="p1">-Trong phần này chúng ta sẽ phát triển một ứng dụng nghe nhạc cá nhân.</p>
                <p class="p1">-Một bài hát bao gồm các thông tin sau:</p>
                <p class="p2">•	Tên bài hát</p>
                <p class="p2">•	Nghệ sĩ thể hiện</p>
                <p class="p2">•	Thể loại nhạc</p>
                <p class="p2">•	Đường dẫn file bài hát</p>
                <p class="p1">-Ứng dụng có các chức năng sau:</p>
                <p class="p2">•	Tạo một bài hát mới (file nhạc được upload kèm theo)</p>
                <p class="p2">•	Hiển thị danh sách những bài hát đã tạo</p>
                <p class="p2">•	Cập nhật thông tin một bài hát</p>
                <p class="p2">•	Nghe một bài hát trong danh sách</p>
                <p class="p2">•	Xoá một bài hát khỏi danh sách</p>
                <p class="p1">-Ứng dụng nghe nhạc đơn giản này chỉ yêu cầu triển khai với dữ liệu bài hát. Chưa yêu cầu triển khai các mối quan hệ trong database giữa Bài Hát-Nghệ Sĩ  hay Bài Hát-Thể Loại. </p>

                <h5>Hướng dẫn</h5>
                <p class="p1"><b>Bước 1:</b> Tạo dự án và khai báo các thư viện</p>
                <p class="p1"><b>Bước 2:</b> Mô tả Entity bài hát</p>
                <p class="p1"><b>Bước 3:</b> Tạo database để Hibernate kết nối tới</p>
                <p class="p1"><b>Bước 4:</b> Cấu hình ứng dụng để Hibernate có thể kết nối tới database</p>
                <p class="p1"><b>Bước 5:</b> Tạo entityManager</p>
                <p class="p1"><b>Bước 6:</b> Định nghĩa service quản lý bài hát và triển khai các phương thức CRUD</p>
                <p class="p1"><b>Bước 7:</b> Triển khai các Controller và View để xây dựng các tính năng theo yêu cầu</p>
                <p class="p1"><b>Bước 8:</b> Override phương thức addResourceHandlers để cấu hình đường dẫn đến file bài hát trong chức năng nghe nhạc.</p>


            </div>
        </div>
    </div>

</body>
</html>
