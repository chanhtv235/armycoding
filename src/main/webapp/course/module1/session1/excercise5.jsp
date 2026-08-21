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
            <a href="${pageContext.request.contextPath}/course/module1/session1/detail.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">1. Mã giả và lưu đồ</a>
            <h4>[Bài tập] Mô tả thuật toán có cấu trúc điều kiện</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng pseudo-code và flowchart để mô tả các giải thuật có chứa cấu trúc điều kiện (cấu trúc lựa chọn).</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ mô tả giải thuật để xếp hạng sinh viên dựa theo điểm số.</p>
            <p>Bắt đầu, chúng ta cho phép nhập vào điểm số của học viên trên thang điểm 100. Sau đó sẽ phân loại học viên theo các khoảng khác nhau, bao gồm:</p>
            <pre>
               •	Nếu điểm => 75      -           Loại A
               •	Nếu 60 <= điểm < 75 -           Loại B
               •	Nếu 45 <= điểm < 60 -           Loại C
               •	Nếu 35 <= điểm < 45 -           Loại D
               •	Nếu điểm < 35       -           Loại E
            </pre>
            <h5>Hướng dẫn thực hiện</h5>
            <p>Sử dụng nhiều cấu trúc điều kiện nối tiếp nhau để phân loại các học viên.</p>
        </div>
    </div>
</div>
</body>
</html>
