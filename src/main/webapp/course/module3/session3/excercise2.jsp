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
                <a href="/course/module3/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Thao tác với CSDL</a>

                <h4>[Bài tập] Thao tác với CSDL Quản lý bán hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Sử dụng được các câu lệnh truy vấn trong MySQL</p>

                <h5>Mô tả</h5>

                <p class="p1"> Dựa vào CSDL Quản lý sinh viên đã được xây dựng trong bài thực hành trước (Xem tại đây),
                    yêu cầu: </p>

                <p class="p2"><b>Yêu cầu 1.</b>Thêm dữ liệu vào trong 4 bảng như dưới đây:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session3/img/e1/img.png"
                     style="width:70%;">

                <p class="p1"><b> Yêu cầu 2.</b> Hiển thị các thông tin gồm oID, oDate, oPrice của tất cả các hóa đơn
                    trong
                    bảng Order </p>
                <p class="p1"><b>Yêu cầu3.</b> Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được
                    mua
                    bởi các khách </p>
                <p class="p1"><b> Yêu cầu4.</b> Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào </p>
                <p class="p1"><b> Yêu cầu5.</b> Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa
                    đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại
                    được tính = odQTY * pPrice) </p>


            </div>
        </div>
    </div>

</body>
</html>
