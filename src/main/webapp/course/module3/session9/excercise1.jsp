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
                <a href="/course/module3/session9/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 9. Tổng quan về java web</a>

                <h4>[Bài tập] Ứng dụng Product Discount Calculator</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo ứng dụng Web Java và xử lý dữ liệu nhập vào từ form.</p>

                <h5>Mô tả</h5>
                <p class="p1"> Ứng dụng Product Discount Calculator được sử dụng để tính chiết khấu cho sản phẩm khi mua
                    hàng online. </p>
                <p class="p1"> Trong trang đầu tiên, người dùng sẽ nhập vào các dữ liệu sau: </p>
                <p class="p2"> • Product Description: Mô tả của sản phẩm </p>
                <p class="p2"> • List Price: Giá niêm yết của sản phẩm </p>
                <p class="p2"> • Discount Percent: Tỷ lệ chiết khấu (phần trăm) </p>
                <p class="p1"> Khi người dùng nhấn vào nút Calculate Discount (Tính chiết khấu) thì sẽ đi đến trang
                    /display-discount và hiển thị kết quả. </p>
                <p class="p1"> Trang kết quả sẽ hiển thị các thông tin ngươờ dùng nhập vào, kèm theo kết quả tính
                    toán: </p>
                <p class="p2"> • Discount Amount: Lượng chiết khấu </p>
                <p class="p2"> • Discount Price: Giá sau khi đã được chiết khấu </p>
                <p class="p1"> Công thức tính chiết khấu là: </p>
                <p class="p1"><i> Discount Amount = List Price * Discount Percent * 0.01 </i></p>

                <h5>Hướng dẫn</h5>
                <p class="p1">Bước 1: Tạo trang index.jsp với form bao gồm các trường như mô tả. Phương thức của form là
                    POST.
                <p class="p1">
                <p class="p1">Bước 2: Tạo DiscountServlet để nhận dữ liệu, tính toán và hiển thị kết quả.
                <p class="p1">
            </div>
        </div>
    </div>

</body>
</html>
