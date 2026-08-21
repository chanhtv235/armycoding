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
            <h4>[Bài tập] Luyện tập cấu trúc điều kiện 02</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập cấu trúc điều kiện if, if/else, if lồng nhau, if bậc thang, switch-case, break, default</p>
            <h5>Mô tả</h5>
            <p>
                <b>Bài 1:</b> Chuyển từ độ C sang độ F theo công thức <br>
                °C x 9/5 + 32 = °F

            </p>
            <p>
                <b>Bài 2:</b> Chuyển từ mét sang feet theo công thức<br>
                ft =m * 3.2808

            </p>
            <p><b>Bài 3: </b>Tính diện tích hình vuông khi biết cạnh a.</p>
            <p><b>Bài 4:</b> Tính diện tích hình chữ nhật khi biết 02 cạnh a, b.</p>
            <p><b>Bài 5: </b>Tính diện tích tam giác vuông khi biết 02 cạnh kề a, b.</p>
            <p><b>Bài 6:</b> Giải phương trình bậc 1.</p>
            <p><b>Bài 7:</b> Giải phương trình bậc 2.</p>
            <p><b>Bài 8:</b> Kiểm tra xem một số nhập vào có phải là tuổi của một người không. Một số nguyên là tuổi của
                một người khi nhỏ 120 và lơn hơn 0.</p>
            <p><b>Bài 9:</b> Kiểm tra xem 3 số thực (a,b,c) nhập vào có phải là cạnh của một tam giác. Điều kiện để
                a,b,c là cạnh của một tam giác là: </p>

            <p> a,b,c > 0 </p>
            <p> a + b > c</p>
            <p> b + c > a</p>
            <p> a + c > b</p>

            <p><b>Bài 10:</b> Viết chương trình tính thuế thu nhập cá nhân.</p>

        </div>
    </div>
</div>
</body>
</html>
