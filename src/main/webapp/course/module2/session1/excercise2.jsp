<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div>
            <a href="${pageContext.request.contextPath}/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>

            <h4>[Bài tập] Ứng dụng chuyển đổi tiền tệ</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng biến, kiểu dữ liệu và các toán tử.</p>
            <h5>Mô tả</h5>
            <p>Xây dựng một ứng dụng chuyển đổi tiền tệ, cho phép tính giá trị tiền VNĐ dựa trên một tỉ giá cho trước và giá trị tiền USD được nhập vào.</p>

            <h5>Hướng dẫn</h5>
            <p><b>Bước 1:</b> Tạo dự án mới và khai báo hàm main()</p>
            <p><b>Bước 2:</b>  Khai báo biến tỉ giá (rate) để lưu giá trị tỉ giá giữa VND và USD. Hiện nay, tỉ giá có thể là 23000 VND/USD.</p>
            <p><b>Bước 3</b>  Khai báo biến giá trị USD và cho người dùng nhập vào.</p>
            <p><b>Bước 4:</b>  Tính giá trị VND và hiển thị ra màn hình.</p>

        </div>
    </div>
</div>
</body>
</html>
