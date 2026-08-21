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
            <h4>[*Bài tập] Đếm số lần xuất hiện của ký tự trong chuỗi</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng mảng và cấu trúc lặp.</p>

            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ phát triển một cho phép đếm số lần xuất hiện của một ký tự được nhập vào từ bàn phím cho một chuỗi cho trước.</p>
            <h5>Hướng dẫn</h5>

            <p><b>Bước 1:</b> Khai báo một chuỗi và gán cho nó một giá trị</p>
            <p><b>Bước 2:</b>: : Khai báo một biến ký tự và gán hoặc nhập từ bàn phím một giá trị.</p>
            <p><b>Bước 3:</b>Khai báo biến count và gán giá trị 0, để lưu số ký tự đếm được trong chuỗi</p>
            <p><b>Bước 4:</b>Sử dụng vòng lặp duyệt từng ký tự trong chuỗi. Trong quá trình duyệt: so sánh nếu ký tự trong chuỗi bằng ký tự nhập vào thì tăng biến đếm lên 1</p>

            <p><b>Lưu ý:</b></p>
            <p>- Hàm str.length() trả về tổng số ký tự trong một chuỗi str</p>
            <p>- Hàm str.charAt(i) trả về ký tự ở vị trí thứ i trong chuỗi str</p>
            <p><b>Bước 5:</b>In ra giá trị biến đếm.</p>

        </div>
    </div>
</div>
</body>
</html>
