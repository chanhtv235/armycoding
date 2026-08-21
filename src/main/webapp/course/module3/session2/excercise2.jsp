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
                <a href="/course/module3/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Thiết kế CSDL</a>

                <h4>[Bài tập] Xây dựng cơ sở dữ liệu quản lý bán hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Tạo được cơ sở dữ liệu và tạo được bảng. Sử dụng được các ràng buộc</p>

                <h5>Mô tả</h5>

                <p class="p1"> Xây dựng một cơ sở dữ liệu có tên là QuanLyBanHang với các bảng như sau: </p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/e2/img.png"
                     style="width:60%;">
                <p class="p1">-Từ mô hình ERD trên hãy chuyển đổi sang mô hình dữ liệu quan hệ.</p>

                <p class="p2"> • Bảng Customer lưu danh sách những khách hàng đã đến cửa hàng gồm cả những người có mua
                    hàng và cả những người không mua hàng. </p>
                <p class="p2"> • Mỗi khách hàng khi mua hàng thi siêu thị sẽ viết một hóa đơn mua hàng gồm các thông tin
                    mã khách(cID), số hóa đơn(oID), ngày mua(oDate), danh sách tên các sản phẩm được mua, số lượng mỗi
                    loại, giá tiền của sản phẩm. tất cả các thông tin trên được lưu trong 3 bảng Order, Orderdetail và
                    Product. </p>
                <p class="p2"> • Mỗi khách hàng có thể mua hàng nhiều lần, nên có thể có nhiều hóa đơn cho mỗi
                    khách. </p>
                <p class="p2"> • Mỗi hóa đơn có thể có nhiều mặt hàng. </p>
                <p class="p2"> • Mỗi mặt hàng trong hóa đơn có thể được mua với số lượng nhiều hơn 1 cái. </p>
                <p class="p0">Sử dụng các câu lệnh để tạo ra cơ sở dữ liệu và các bảng trên</p>
                <h5>Hướng dẫn</h5>

            </div>
        </div>
    </div>

</body>
</html>
