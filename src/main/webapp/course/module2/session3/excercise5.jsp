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
            <h4>[Bài tập] Tìm giá trị nhỏ nhất trong mảng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng cấu trúc lặp mảng với vòng lặp for</p>

            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ phát triển một chương trình cho phép người dùng khai báo một mảng số nguyên với các giá trị trong mảng được khởi tạo sẵn hoặc được nhập từ bàn phím. Chương trình sẽ hiển thị ra giá trị nhỏ nhất trong mảng.</p>
            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> : Khai báo mảng số nguyên với SIZE phần tử</p>
            <p><b>Bước 2:</b>: Nhập giá trị cho các phần tử trong mảng từ bàn phím</p>
            <p><b>Bước 3:</b>Gọi phần tử đầu tiên trong mảng là phần tử có giá trị nhỏ nhất</p>
            <p><b>Bước 4:</b>Duyệt mảng từ phần tử thứ 2 đến hết mang</p>
            <p>-So sánh lần lượt các phần tử tiếp theo với giá trị nhỏ nhất.</p>
            <p>-Nếu phần tử tiếp theo nhỏ hơn giá trị nhỏ nhất thì gán giá trị nhỏ nhất là phần tử tiếp theo.</p>
            <p><b>Bước 5:</b>Kết thúc duyệt mảng. In ra giá trị nhỏ nhất.</p>

        </div>
    </div>
</div>
</body>
</html>
