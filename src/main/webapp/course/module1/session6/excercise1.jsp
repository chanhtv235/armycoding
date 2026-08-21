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
            <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 6.Cấu trúc điều kiện </a>
                <h4>[Bài tập] Tính chỉ số cân nặng của cơ thể</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc điều khiển if.</p>

                <h5>Mô tả</h5>
                <p>Chỉ số khối cơ thể (Body mass index-BMI) là một thước đo sức khoẻ dựa trên cân nặng và chiều cao. Nó
                    được tính bằng cách lấy cân nặng đơn vị tính kilogam chia cho bình phương của chiều cao đơn vị tính
                    mét. Công thức:</p>
                <pre><code class="language-javascript language-markup">
                 bmi = weight / ( height ^ 2 )
                </code></pre>
                <p>Chỉ số BMI đối với người trên 20 tuổi được phân loại và diễn giải theo bảng sau:</p>
                <img src="${pageContext.request.contextPath}/course/module1/session6/img/img-e1.png" style="width: 50%;">
                <h5>Hướng dẫn</h5>
                <p>Khối lệnh để phân loại chỉ số cơ thể</p>
                <pre><code class="language-javascript language-markup">
                    if (bmi < 18)
                        document.write("Underweight");
                    else if (bmi < 25.0)
                        document.write("Normal");
                    else if (bmi < 30.0)
                        document.write("Overweight");
                    else
                        document.write("Obese");
                </code></pre>
        </div>
    </div>
</div>
</body>
</html>
