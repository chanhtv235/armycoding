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
            <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 6.Cấu trúc điều kiện </a>
            <h4>[Bài tập] Máy tính đơn giản</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng biến, câu lệnh điều kiện, toán tử, xử lý sự kiện chuột</p>

            <h5>Mô tả</h5>
            <p>Thiết kế giao diện Trên giao diện gồm</p>
            <img src="${pageContext.request.contextPath}/course/module1/session6/img/img-e3.png" style="width: 50%;">

            <p> • Các Button số từ 0 đến 9</p>
            <p> • Các Button phép tính : +, -, *, /... (Bạn có thêm các phép tính khác nếu muốn)</p>
            <p> • Button "="</p>
            <h6>Mô tả các chức năng</h6>
            <p>- Người dùng thực hiện tính toán bằng cách nhấn vào button số, rồi nhấn vào button phép tính, sau đó nhấn
                vào button số. Cuối cùng người dùng nhấn vào button “=” để thực hiện tính toán.</p>
            <p>- Khi người dùng nhấn vào button “=” thì máy tính thực hiện tính toán và hiển thị kết quả.</p>

            <h5>Hướng dẫn</h5>
            <p>Sử dụng sự kiện chuột để gọi các hàm tính toán.</p>

        </div>
    </div>
</div>
</body>
</html>
