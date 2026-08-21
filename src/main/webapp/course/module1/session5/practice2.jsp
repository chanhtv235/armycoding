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
               <a href="${pageContext.request.contextPath}/course/module1/session5/detail.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">5. Biến kiểu dữ liệu và toán tử</a>
                <h4>[Thực hành] Sử dụng toán tử</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng toán tử và biểu thức.</p>
                <h5>Mô tả</h5>
                <p>Viết một ứng dụng để tính diện tích của hình chữ nhật dựa vào chiều rộng và chiều cao được nhập vào.</p>
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo dự án mới và một file HTML</p>
                <p>Bước 2: Tạo file javascript mới và nhúng vào file HTML ở bước 1</p>
                <p>Bước 3: Khai báo các biến để nhận giá trị chiều cao và chiều rộng từ người dùng.</p>

                <pre><code class="language-javascript language-markup">
                        let inputWidth;
                        let inputHeight;
                </code></pre>
                <p>Bước 4: Sử dụng hàm prompt để lấy dữ liệu nhập vào từ người dùng</p>
                <pre><code class="language-javascript language-markup">
                        inputWidth = prompt("Enter the width");
                        inputHeight = prompt("Enter the height");
                </code></pre>
                <p>Bước 5: Sử dụng hàm parseInt() để chuyển kiểu dữ liệu từ chuỗi sang số nguyên.</p>
                <pre><code class="language-javascript language-markup">
                        let width = parseInt(inputWidth);
                        let height = parseInt(inputHeight);
                </code></pre>
                <p>Bước 6: Tính diện tích của hình chữ nhật và hiển thị ra màn hình</p>
                <pre><code class="language-javascript language-markup">
                        let area = width * height;
                        document.write("The area is: " + area);
                </code></pre>
                <pre><code>
                Kết quả:
                Enter width:
                10
                Enter height:
                20
                The area is: 200.0
                </code></pre>


            </div>
    </div>
</div>


</body>
</html>
