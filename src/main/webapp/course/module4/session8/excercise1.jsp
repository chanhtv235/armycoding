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
                <a href="/course/module4/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Session và cookie</a>

                <h4>[Bài tập] Hoàn thiện bài giỏ hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng session trong ứng dụng Spring MVC.</p>

                <h5>Mô tả</h5>
                <p class="p1">-Trong phần này, chúng ta sẽ tiếp tục phát triển một tính năng giỏ hàng của một ứng dụng thương mại điện tử.</p>
                <p class="p1">-Tính năng này hoạt động như sau:</p>
                <p class="p2">1.	Hoàn thiện tính năng thay đổi số lượng sản phẩm hiện có trong giỏ hàng</p>
                <p class="p2">2.	Tạo trang xem chi tiết một sản phẩm trong giỏ hàng</p>
                <p class="p2">3.	Chỉnh sửa lại giao diện đẹp hơn</p>
                <p class="p2">4.	Hoàn thiện tính năng thanh toán</p>

                  <h5>Hướng dẫn</h5>
                <p class="p1"><b>Bước 1:</b> Chỉnh sửa lại trang danh sách sản phẩm</p>
                <p class="p1">Tại bước này các bạn tạo một giao diện hiển thị danh sách sản phẩm có cấu trúc tương tự như mô tả sau:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/e1/img.png"
                     style="width:70%;">
                <p class="p1"><b>Bước 2:</b> Tạo trang chi tiết sản phẩm</p>
                <p class="p1">Khi người dùng click vào một sản phẩm bất kỳ được liệt kê trong danh sách sản phẩm, ứng dụng sẽ chuyển tiếp đến trang chi tiết sản phẩm.</p>
                <p class="p1">Cấu trúc tương tự như mô tả sau đây:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/e1/img_1.png"
                     style="width:40%;">
                <p class="p1"><b>Bước 3:</b> Chỉnh sửa số lượng giỏ hàng và thanh toán các bạn có thể làm giao diện như hình bên dưới</p>



            </div>
        </div>
    </div>

</body>
</html>
