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
                <a href="/course/module2/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Abstract class và interface</a>

                <h4>[Bài tập ] Triển khai interface 'Resizeable' cho các lớp hình học</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thiết kế và triển khai interface.</p>

                <h5>Mô tả</h5>

                <p>Sử dụng mã triển khai các lớp hình học <a href="https://github.com/chanhtv235/43_web_coder_m2">repository
                    này</a> (checkout sang nhánh session7-shape để lấy source
                    code).</p>
                <p>Hãy tạo một interface Resizeable với một phương thức void có tên resize(double percent).
                    Phương thức này tăng kích thước các hình lên tỷ lệ phần trăm được cho bởi đối số đầu vào. Cho lớp
                    Circle, Rectangle và Square triển khai phương thức này.</p>
                <p>Viết một chương trình tạo ra một mảng các hình. Với mỗi phần tử trong mảng, tăng kích thước phần tử
                    đó lên theo một tỉ lệ ngẫu nhiên từ 1-100. Thông báo ra màn hình diện tích của phần tử trước và sau
                    khi tăng kích thước.</p>
                <h5>Hướng dẫn</h5>
                <p> Bước 1: Viết mã kiểm thử cho interface Resizeable</p>
                <p> Bước 2: Xây dựng interface Resizeable với phương thức resize(double percent)</p>
                <p> Bước 3: Viết mã kiểm thử cho lớp Circle, Rectangle, Square triển khai interface Resizeable</p>
                <p> Bước 4: Viết mã triển khai interface Resizeable cho lớp Circle, Rectangle, Square</p>


            </div>
        </div>
    </div>

</body>
</html>
