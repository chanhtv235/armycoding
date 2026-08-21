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
                <a href="/course/module4/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6.Spring data JPA (paging,sorting,search)</a>

                <h4>[Bài tập] Mở rộng ứng dụng Blog</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">-Luyện tập sử dụng các thao tác nâng cao với JPA: Truy vấn, Phân trang, Sắp xếp, Join…</p>

                <h5>Mô tả</h5>

                <p class="p1">-Trong phần này chúng ta sẽ tiếp tục mở rộng ứng dụng Blog ở bài trước, các tính năng được mở rộng là:</p>
                <p class="p2">•	Quản lý Danh mục (Category)</p>
                <p class="p2">•	Phân trang các bài viết</p>
                <p class="p2">•	Sắp xếp các bài viết theo thời gian được tạo</p>
                <p class="p2">•	Tìm kiếm bài viết</p>
                <p class="p2">•	Hiển thị các bài viết theo từng danh mục</p>
                <p class="p2">•	Hiển thị tên của Category khi xem một bài viết</p>

                  <h5>Mô tả</h5>
                <p class="p1"><b>Bước 1</b>: Thêm các chức năng quản lý danh mục</p>
                 <p class="p2">•	Tạo danh mục mới</p>
                 <p class="p2">•	Xem danh sách danh mục</p>
                 <p class="p2">•	Xoá danh mục</p>
                 <p class="p2">•	Chỉnh sửa danh mục</p>
                 <p class="p1">Mỗi danh mục có thuộc tính là tên của danh mục đó.</p>
                <p class="p1"><b>Bước 2:</b> Thay đổi lớp Post để tham chiếu đến một danh mục</p>
                 <p class="p2">•	Chỉnh sửa chức năng tạo post mới, cho phép chọn danh mục</p>
                 <p class="p2">•	Chỉnh sửa chức năng xem danh sách post, hiển thị tên danh mục</p>
                 <p class="p2">•	Chỉnh sửa chức năng cập nhật post, cho phép chọn dạnh mục</p>
                <p class="p1"><b>Bước 3:</b> Sử dụng Pageable để phân trang danh sách các bài viết</p>
                <p class="p1"><b>Bước 4:</b> Sử dụng Sort để sắp xếp bài viết theo thời gian được tạo</p>
                <p class="p1"><b>Bước 5:</b> Triển khai chức năng tìm kiếm bài viết theo tiêu đề</p>
                <p class="p1"><b>Bước 6:</b> Tạo menu bao gồm các danh mục</p>
                <p class="p1"><b>Bước 7:</b> Hiển thị danh sách bài hát của danh mục</p>
                <p class="p1"><b>Bước 8:</b> Bổ sung tên của danh mục khi xem một bài viết</p>

            </div>
        </div>
    </div>

</body>
</html>
