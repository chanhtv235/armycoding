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
            <a href="${pageContext.request.contextPath}/course/module1/session9/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 9. Hàm trong javascript</a>

            <h4>[Bài tập] Chuyển đổi giữa feet và meters</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo và gọi hàm.</p>

            <h5>Mô tả</h5>
            <p>Xây dựng hai phương thức sau:</p>
            <p>-Chuyển đổi từ feet sang meters: </p>
            <pre><code class="language-javascript language-markup">
                function footToMeter(foot)
            </code></pre>
            <p>-Chuyển đổi từ meters sang feet: </p>
            <pre><code class="language-javascript language-markup">
                function meterToFoot(meter)
            </code></pre>
            <p>Công thức chuyển đổi như sau:</p>
            <pre><code class="language-javascript language-markup">
                meter = 0.305 * foot
                foot = 3.279 * meter
            </code></pre>
            <p>Sử dụng các giá trị trong bảng sau để kiểm tra tính chính xác của các hàm:</p>
            <img src="img/img-e2.png" style="width: 40%;">


        </div>
    </div>
</div>
</body>
</html>
