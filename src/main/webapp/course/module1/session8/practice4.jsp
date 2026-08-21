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
                <h4>[Thực hành] Tìm giá trị lớn nhất trong mảng</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo mảng, thao tác với mảng.</p>
                <h5>Mô tả</h5>
                <p>
                    Viết một chương trình JavaScript để tìm giá trị lớn nhất trong mảng cho trước.
                </p>
                <p>Bước 1: Khai báo mảng x và khởi tạo giá trị ban đầu cho mảng </p>
                <pre><code class="language-javascript language-markup">
                     let numbers = [-3, 5, 1, 3, 2, 10];
                </code></pre>
                <p>Bước 2: Khai báo biến max để lưu giá trị lớn nhất mặc định là phần tử đầu tiên trong mảng </p>
                <pre><code class="language-javascript language-markup">
                     let max = numbers[0];
                </code></pre>
                <p>Bước 3: Khai báo biến index mặc định gán giá trị 0 để lưu chỉ số của phần tử lớn nhất trong mảng </p>
                <pre><code class="language-javascript language-markup">
                     let index = 0;
                </code></pre>
                <p>Bước 4: Dùng vòng lặp duyệt toàn bộ mảng x từ phần tử tiếp theo đến hết mảng.
                    Kiểm tra nếu một phần tử trong mảng x có giá trị lớn hơn max thì gáb max chính là phần tử đó và gán index bằng vị trí của phần tử đó. </p>
                <pre><code class="language-javascript language-markup">
                     for (let i = 1; i < numbers.length; i++) {
                        if (numbers[i] > max) {
                        max = numbers[i];
                        index = i;
                        }
                     }
                </code></pre>

                <p>Bước 5: In ra phần tử lớn nhất và vị trí của nó trong mảng </p>
                <pre><code class="language-javascript language-markup">
                     alert("max: " + max + " at position " + index);
                </code></pre>
                <p>Bước 6: Thực thi chương trình. Quan sát kết quả. </p>


            </div>
        </div>
    </div>
</div>


</body>
</html>
