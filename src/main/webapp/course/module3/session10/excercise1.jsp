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
                <a href="/course/module3/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 10. JSTL</a>

                <h4>[Bài tập] Hiển thị danh sách khách hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng JSTL trong JSP.</p>

                <h5>Mô tả</h5>
                <p class="p1"> Xây dựng một trang web để hiển thị thông tin khách hàng từ một danh sách có sẵn. Tạo
                    trang index.jsp chứa một danh sách khách hàng gồm tên, ngày sinh, địa chỉ, ảnh.</p>
                <p class="p1">Giao diện mô phỏng có thể hiển thị như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session10/img/e1/img.png"
                     style="width:70%;">
                <h5>Hướng dẫn</h5>
                <p class="p1"> Bước 1: Tạo dự án mới </p>
                <p class="p1"> Bước 2: Tạo trang index.jsp </p>
                <p class="p1"> Bước 3: Download thư viện JSTL </p>
                <p class="p1"> Bước 4: Khai báo thư viện JSTL trên đầu trang index.jsp như sau: </p>
                <p class="p1"> &lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot; %&gt; </p>
                <p class="p1"> Bước 5: Tạo danh sách khách hàng </p>
                <p class="p1"> Bước 6: Sử dụng kết hợp HTML và JSTL để hiển thị thông tin khách hàng</p>

            </div>
        </div>
    </div>

</body>
</html>
