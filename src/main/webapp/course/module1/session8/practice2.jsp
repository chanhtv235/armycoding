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
                <h4>[Thực hành] Đảo ngược các phần tử trong mảng</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo mảng, thao tác với mảng.</p>
                <h5>Mô tả</h5>
                <p>Viết một chương trình JavaScript thực hiện đảo ngược các giá trị trong một mảng đã cho. Không sử dụng phương thức reverse()</p>
                <p>Ví dụ mảng gồm các phần tử:</p>
                <p>[-3,5,1,3,2,10];</p>
                <p>Sau khi gọi hàm reverse() mảng trên sẽ đảo ngược thành: 10,2,3,1,5,-3</p>

                <h5>Hướng dẫn</h5>
                <p>Bước 1: Khai báo mảng x và khởi tạo các phần tử trong mảng:</p>
                <pre><code class="language-javascript language-markup">
                      let x = [-3, 5, 1, 3, 2, 10];
                </code></pre>

                <p>Bước 2: Khai báo biến first và gán giá trị bằng 0. Biến này để duyệt từ phần tử đầu tiên trong mảng.</p>
                <pre><code class="language-javascript language-markup">
                     let first = 0;
                </code></pre>
                <p>Bước 3: Khai báo biến last và gán giá trị bằng độ dài mảng trừ 1.
                Biến này để duyệt phần tử cuối cùng trong mảng.</p>
                <pre><code class="language-javascript language-markup">
                     let last = x.length - 1;
                </code></pre>
                <p>Bước 4: Dùng vòng lặp chạy với điều kiện first < last, trong quá trình lặp đổi chỗ phần tử đầu tiên và cuối cùng cho nhau.
                Sau đó tăng biến first lên 1 để duyệt phần tử tiếp theo, giảm last đi một.</p>
                <pre><code class="language-javascript language-markup">
                     while (first < last) {
                        let b = x[first];
                        x[first] = x[last];
                        x[last] = b;
                        first++;
                        last--;
                     }
                </code></pre>
                <p>Bước 5: In ra mảng sau khi đảo ngược</p>
                <pre><code class="language-javascript language-markup">
                      document.write(x);
                </code></pre>
                <p>Bước 6: Thực thi chương trình. Quan sát kết quả.

            </div>
        </div>
    </div>
</div>


</body>
</html>
