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

                <h4>Bài tập] Ứng dụng Calculator</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo ứng dụng Java web với Servlet và jsp.</p>

                <h5>Mô tả</h5>
                <p class="p1"> -Trong phần này, chúng ta sẽ tạo một ứng dụng máy tính với các phép toán cơ bản: Cộng,
                    Trừ, Nhân và Chia. </p>
                <p class="p1"> -Ứng dụng cho phép người dùng nhập vào 2 toán hạng và lựa chọn toán tử. Ứng dụng sẽ hiển
                    thị kết quả hoặc thông báo lỗi nếu có. </p>
                <p class="p1"> -Lỗi có thể xảy ra: Chia cho 0. </p>
                <p class="p1"> -Màn hình nhập dữ liệu: </p>

                <img src="${pageContext.request.contextPath}/course/module3/session10/img/e2/img.png"
                     style="width:50%;">

                <h5>Hướng dẫn</h5>
                <p class="p1"> -Bước 1: Tạo ứng dụng Java Web </p>
                <p class="p1"> -Bước 2: Tạo form nhập dữ liệu ở trang index.jsp </p>
                <p class="p1"> -Bước 3: Tạo lớp Calculator với phương thức calculate() để thực hiện phép tính. </p>
                <p class="p1"> -Phương thức calculate() sẽ tung ra Exception trong trường hợp phép chia có mẫu số là
                    0. </p>
                <p class="p1"> -Bước 4: Tạo CalculatorServlet để xử lý dữ liệu được đẩy lên từ form và hiển thị kết
                    quả. </p>
                <p class="p1"> Sử dụng try/catch để hiển thị thông báo lỗi trong trường hợp phép chia không hợp lệ. </p>

            </div>
        </div>
    </div>

</body>
</html>
