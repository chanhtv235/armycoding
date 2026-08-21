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

                <h4>[Optional] [Bài tập] Crawl tin tức</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập cách tạo một Exception từ người dùng và sử dụng try-catch để xử lý ngoại lệ.</p>

                <h5>Mô tả</h5>
                <p class="p1">- Viết một ứng dụng cho phép xử lý mã HTML và lọc thông tin.</p>

                <p class="p1">- Ứng dụng nhận vào URL của một trang web chứa danh sách các bản tin, phân tích mã HTML và hiển thị danh
                    sách các bản tin có trong trang web đó.</p>
                <h5>Hướng dẫn </h5>
                <p class="p1">-Sử dụng trang <a href="http://dantri.com.vn/the-gioi.htm">http://dantri.com.vn/the-gioi.htm</a> để làm mẫu</p>
            </div>
        </div>
    </div>

</body>
</html>
