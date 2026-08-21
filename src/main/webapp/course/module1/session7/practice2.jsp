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
                <a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Cấu trúc lặp</a>
                <h4>[Thực hành] Sử dụng vòng lặp while</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp while.</p>
                <h5>Mô tả</h5>
                <p>Bài 1: Viết chương trình nhận vào một số từ hộp thoại, việc nhập kết thúc khi người dùng nhập vào giá trị -1.
                    Mỗi giá trị nhập được sẽ được hiển thị ra và thực hiện tính tổng các giá trị đó.</p>
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Khai báo biến num để lưu giá trị nhập vào từ hộp thoại.</p>
                <pre><code class="language-javascript language-markup">
                    let num = prompt("Enter a number: ");
                </code></pre>

                <p>Bước 2: Khai báo biến total = 0, lưu tổng.</p>
                <pre><code class="language-javascript language-markup">
                    let total = 0;
                </code></pre>
                <p>Bước 3: Phân tích vòng lặp</p>
                <p>Điều kiện vòng lặp thực hiện: num != -1</p>
                <p>Bước 4: Viết mã phần thân vòng lặp</p>
                <pre><code class="language-javascript language-markup">
                    while( num != -1 ) {
                    num = prompt("Enter a number: ");
                    alert(number);
                    //phần code tính tổng
                    total += num;
                    }
                </code></pre>
                <p>Bước 5: Hiển thị tổng</p>
                <p>Bước 6: Thực thi chương trình. Quan sát kết quả</p>

                <p><b> Bài 2:</b> Viết chương hình hiển thị thẻ &lt;hr&gt;theo độ rộng từ 1 đến 100. Kết quả sẽ được hiển thị như hình
                <img src="img/img-p2.png" style="width: 30%;">
                <h5>Hướng dẫn</h5>
                <p> Bước 1: Phân tích vòng lặp while</p>
                <p>Điều kiện vòng lặp thực hiện: Độ rộng thẻ hr <= 100</p>
                <p>Vòng lặp thực hiện thế nào: Hiển thị thẻ hr với độ rộng bắt đầu từ 1 đến 100.</p>
                <p>Bước 2: Viết vòng lặp while</p>
                <pre><code class="language-javascript language-markup">
                    let i = 1;
                    while (i < 100) {
                    //phân thân vòng lặp
                    document.write("&lt;hr width = " + i + "%&gt;");
                    i++;
                    }
                </code></pre>
                <p>Bước 3: Chạy chương trình. Quan sát kết quả.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
