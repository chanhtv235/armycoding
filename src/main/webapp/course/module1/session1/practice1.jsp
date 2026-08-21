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
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=detail" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">1. Mã giả và lưu đồ</a>
                <h4>[Thực hành] Thuật toán chuyển đổi nhiệt độ</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng pseudo-code và Flowchart để mô tả giải thuật.</p>
                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập việc sử dụng Pseudo-code và Flowchart để mô tả thuật toán chuyển đổi nhiệt độ giữa các độ đo khác nhau.
                    Mô tả thuật toán nhập một giá trị là độ 0C (Celsius) và chuyển nó sang độ 0F (Fahrenheit).
                    Công thức chuyển đổi:</p>
                C/5 = (F-32)/9
                <p>Hãy sử dụng bút và giấy để viết các giải thuật, sau đó chụp ảnh màn hình và nộp lên bài thực hành lên github.</p>
                <h5>Hướng dẫn thực hiện</h5>
                <p>Pseudo-code – Chuyển độ C sang F</p>
                <code>
            <pre>
                 Begin
                    Input C
                    F = (9*C)/5 + 32
                    Display F
                 End
            </pre>

                </code>
                <img style="width: 50%" src="${pageContext.request.contextPath}/course/module1/session1/img/img1.png">
            </div>

        </div>
    </div>
</div>


</body>
</html>
