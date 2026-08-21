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
                <a href="/course/module3/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5.Index, view, stored procedure, function, trigger</a>

                <h4>[Bài tập] View, Index, Store Procedure</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng view, index, store procedure</p>

                <h5>Mô tả</h5>

                <p class="p1">Thực hành tạo view, index, store procedure trên bảng.</p>

                <h6>Hướng dẫn</h6>
                <p class="p0"> Bước 1: Tạo cơ sở dữ liệu demo </p>
                <p class="p0"> Bước 2: Tạo bảng Products với các trường dữ liệu sau: </p>
                <p class="p2"> • Id </p>
                <p class="p2"> • productCode </p>
                <p class="p2"> • productName </p>
                <p class="p2"> • productPrice </p>
                <p class="p2"> • productAmount </p>
                <p class="p2"> • productDescription </p>
                <p class="p2"> • productStatus </p>
                <p class="p1"> Chèn một số dữ liệu mẫu cho bảng Products. </p>
                <p class="p0"> Bước 3: </p>
                <p class="p2"> • Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục) </p>
                <p class="p2"> • Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice) </p>
                <p class="p2"> • Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào </p>
                <p class="p2"> • So sánh câu truy vấn trước và sau khi tạo index </p>
                <p class="p0"> Bước 4: </p>
                <p class="p2"> • Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ
                    bảng products. </p>
                <p class="p2"> • Tiến hành sửa đổi view </p>
                <p class="p2"> • Tiến hành xoá view </p>
                <p class="p0"> Bước 5: </p>
                <p class="p2"> • Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng
                    product </p>
                <p class="p2"> • Tạo store procedure thêm một sản phẩm mới </p>
                <p class="p2"> • Tạo store procedure sửa thông tin sản phẩm theo id </p>
                <p class="p2"> • Tạo store procedure xoá sản phẩm theo id </p>

            </div>
        </div>
    </div>

</body>
</html>
