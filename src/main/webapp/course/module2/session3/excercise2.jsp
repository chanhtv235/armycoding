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
        <div>
            <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 2.Mảng và phương thức</a>
            <h4>[Bài tập] Thêm phần tử vào mảng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng mảng một chiều và cấu trúc lặp.</p>

            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ phát triển một chương trình cho phép người dùng khai báo mảng mảng số nguyên gồm N phần tử. Nhập một giá trị bất kỳ từ bàn phím và vị trí cần chèn, giá trị này được chèn vào vị trí đó trong mảng.</p>
            <p>Quan sát trong bảng sau:</p>
            <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-e2.png" style="width: 50%;">
            <p>Dòng value: Gồm 10 các phần tử trong mảng. Các phần tử chưa có giá trị mặc định được gán là 0.</p>
            <p>Dòng index: Đánh chỉ số trong mảng từ 0 đến 9</p>
            <p>Dòng new value: Khi thêm một giá trị X mới vào vị trí thứ 3. Phần tử ở vị trí thứ 3 sẽ đẩy xuống vị trí 4. Phần tử ở vị trí thứ 4 sẽ đẩy xuống vị trí thứ 5.</p>
            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> Khai báo và khởi tạo mảng số nguyên gồm N phần tử cho trước.</p>
            <p><b>Bước 2:</b>Nhập X là số cần chèn</p>
            <p><b>Bước 3:</b>Nhập vào vị trí index cần chèn X vào trong mảng</p>
            <p><b>Bước 4:</b>Nếu index <= -1 và index >= array.length – 1 thì hiển thị không chèn được phần tử vào mảng.</p>
            <p><b>Bước 5:</b> Thực hiện chèn phần tử X ở vị trí index vào mảng</p>
            <p><b>Bước 6:</b> In ra mạng</p>

        </div>
    </div>
</div>
</body>
</html>
