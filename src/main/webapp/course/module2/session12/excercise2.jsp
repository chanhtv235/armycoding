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
                <a href="/course/module2/session12/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 12. String và regex</a>

                <h4>[Bài tập] Validate số điện thoại</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập cách tạo một Exception từ người dùng và sử dụng try-catch để xử lý ngoại lệ.</p>

                <h5>Mô tả</h5>

                <p class="p1">- Viết phương thức để kiểm tra tính hợp lệ của số điên thoại.</p>

                <p class="p1">- Số điện thoại hợp lệ cần đạt theo:</p>
                <p class="p2"> + Mẫu sau: (xx)-(0xxxxxxxxx) x là ký tự số</p>
                <p class="p2"> + Không chứa các ký tự đặc biệt</p>
                <p class="p1">- Ví dụ:</p>
                <p class="p2">+ Số điện thoại hợp lệ: (84)-(0978489648)</p>
                <p class="p2">+ Số điện thoại không hợp lệ: (a8)-(22222222), (84)-(22b22222), (84)-(9978489648)</p>
            </div>
        </div>
    </div>

</body>
</html>
