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
            <h4>[*Bài tập] Ứng dụng good-fast-cheap</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập xử lý các sự kiện và sử dụng cấu trúc điều kiện.</p>
            <h6>Mô tả các chức năng</h6>
            <p>• Khi người dùng click chuột vào nút YES thì sẽ hiển thị thông báo: "<3"</p>
            <p>• Khi người dùng di chuột lên nút NO thì nút NO sẽ nhảy sang một vị trí khác ngẫu nhiên trên màn hình.
                Kết quả là người dùng không thể click được chuột vào nút NO.</p>

            <h5>Hướng dẫn</h5>
            <p>• Sử dụng các sự kiện onclick và onmouseover</p>
            <p>• Sử dụng hàm Math.random() để sinh ra các số ngẫu nhiên</p>
            <p>• Sử dụng các thuộc tính window.innerHeight và window.innerWidth để lấy chiều cao và chiều rộng của trình
                duyệt</p>
            <p>• Sử dụng hàm document.getElementById để lấy về nút NO</p>
            <p>• Sử dụng thuộc tính style.left và style.top để thay đổi vị trí của nút NO</p>


            <a href="http://demo.codegym.vn/8/doyouloveme/doyouloveme.html">Xem demo: </a>

        </div>
    </div>
</div>
</body>
</html>
