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
        <div>
            <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 2.Mảng và phương thức</a>
            <h4>[Bài tập] Gộp mảng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng cấu trúc lặp mảng một chiều với vòng lặp for.</p>

            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ phát triển một chương trình cho phép gộp 2 mảng thành một mảng thứ 3.</p>
            <p>Chương trình cho phép người dùng nhập giá trị cho các phần tử trong 2 mảng số nguyên cho trước. Mảng số nguyên thứ 3 được khai báo có kích thước bằng kích thước của 2 mảng số nguyên đã cho cộng lại. Mảng này chứa các phần tử trong mảng 1 và mảng 2.</p>

            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> Tạo 2 mảng số với kích thước cho trước</p>
            <p><b>Bước 2:</b>: Sử dụng vòng lặp nhập giá trị cho các phần tử trong mảng</p>
            <p><b>Bước 3:</b>Tạo mảng thứ 3 có kích thước bằng kích thước mảng 1 + kích thước mảng 2</p>
            <p><b>Bước 4:</b>Sử dụng vòng lặp để duyệt các phần tử trong mảng 1. Lấy từng phần tử trong mảng 1 gán vào từng phần tử trong mảng thứ 3, tính từ phần tử đầu tiên.</p>
            <p><b>Bước 5:</b> Sử dụng vòng lặp để duyệt các phần tử trong mảng 2. Lấy từng phần tử trong mảng 2 gán vào phần tử tiếp theo của mảng 3, tính từ phần tử array3[array2.length]</p>

        </div>
    </div>
</div>
</body>
</html>
