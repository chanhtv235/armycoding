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
                <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">8. Cấu trúc Mảng</a>
                <h4>[Thực hành] Tìm giá trị trong mảng</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo mảng, thao tác với mảng.</p>

                <h5>Mô tả</h5>
                <p>Viết một chương trình JavaScript để tìm một giá tri được nhập vào từ hộp thoại có nằm trong mảng hay không.
                    Nếu có in ra vị trí của phần tử đó.</p>

                <h5>Hướng dẫn</h5>
                <p>Bước 1: Nhập giá trị cần tìm từ hộp thoại và lưu vào biến value</p>
                <pre><code class="language-javascript language-markup">
                     let value = prompt("Enter a number: ");
                </code></pre>
                <p>Bước 2: Khai báo mảng x và khởi tạo giá trị ban đầu cho mảng</p>
                <pre><code class="language-javascript language-markup">
                    let numbers = [-3, 5, 1, 3, 2, 10];
                </code></pre>

                <p>Bước 3: Dùng vòng lặp duyệt toàn bộ mảng x.
                    Kiểm tra nếu một phần tử trong mảng x bằng giá trị được nhập vào thì hiển thị thông báo:</p>
                <pre><code class="language-javascript language-markup">
                    for (let i = 0; i < numbers.length; i++) {
                        if (value == numbers[i]) {
                        alert("Value " + numbers[i] + "found at " + i);
                        }
                    }
                </code></pre>
                <p> Bước 4: Thực thi chương trình. Quan sát kết quả.</p>





            </div>
        </div>
    </div>
</div>


</body>
</html>
