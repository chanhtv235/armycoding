<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/session5/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning">5.Kiểu dữ liệu và toán tử</a>
            <h4>[Bài tập] Biến, kiểu dữ liệu và toán tử</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dung biến, kiểu dữ liệu và toán tử.</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ làm một số bài tập để vận dụng các kiến thức về biến, kiểu dữ liệu và toán
                tử. Các bài tập này chỉ thực hiện các phép tính đơn giản.</p>
            <h5>Hướng dẫn thực hiện</h5>
            <p>Bài 1: Viết chương trình nhập điểm của một sinh viên cho các môn: Vật lý, Hóa học, và Sinh học. Sau đó
                hiển thị điểm trung bình và tổng của những điểm này.</p>
            <p>Bài 2: Viết chương trình nhập một giá trị là độ 0C (Celsius) và chuyển nó sang độ 0F (Fahrenheit).
                [Hướng dẫn: C/5 = (F-32)/9]</p>
            <p>Bài 3: Viết chương trình tính diện tích hình tròn</p>
            <p>Bài 4: Viết chương trình chu vi hình tròn</p>

        </div>
    </div>
</div>
</body>
</html>
