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
                <h4>[Thực hành] Sử dụng vòng lặp for</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp for.</p>
                <h5>Mô tả</h5>
                <p>Bài 1: Viết chương trình hiển thị chuỗi “The number is N” 5 lần sử dụng vòng lặp for. Với N sẽ hiển
                    thị từ 0 đến 5.</p>
                <p>Hướng dẫn thực hiện</p>
                <p>Bước 1: Phân tích 3 phần trong vòng lặp for</p>
                <p>Khởi tạo: i = 0</p>
                <p>Điều kiện: i < 5</p>
                <p>Lệnh lặp lại: i = i + 1</p>
                <p>Bước 2: Viết mã vòng lặp for</p>

                <pre><code class="language-javascript language-markup">
                       let i;
                        for (i = 0; i < 5; i++) {
                            text += "The number is " + i + "<br>";
                        }

                </code></pre>
                <p><b>Lưu ý:</b> i có thể được khởi tạo tại thời điểm khai báo, hoặc trong phần thân của vòng lặp.</p>
                <p>Bước 3: Toàn bộ đoạn mã lệnh</p>
                <pre><code class="language-javascript language-markup">
                    &lt;h2&gt;JavaScript Loops&lt;/h2&gt;
                    &lt;p id="demo">&lt;/p&gt;
                    let text = "";
                    let i;
                    for (i = 0; i < 5; i++) {
                        text += "The number is " + i + "<br>";
                    }
                    document.getElementById("demo").innerHTML = text;
                </code></pre>
                <p>Bước 4: Thực thi chương trình, quan sát kết quả.</p>

                <p>Bài 2: Viết chương trình nhập vào một số bất kỳ lớn hơn 0. Tính tổng các phần tử từ 1 đến số vừa nhập
                    vào.</p>
                <p>Bước 1: Khai báo biến để lưu số vừa nhập vào</p>
                <pre><code class="language-javascript language-markup">
                   let num = prompt("Enter your number: ");
                </code></pre>
                <p>Bước 2: Khai báo biến total và khởi tạo cho total giá trị ban đầu là 0, biến total dùng để lưu tổng.</p>
                <pre><code class="language-javascript language-markup">
                   let total = 0;
                </code></pre>
                <p>Bước 3: Xây dựng các phần của vòng lặp for</p>
                <p>Khởi tạo: i = 1</p>
                <p>Điều kiện: i <= num</p>
                <p>Lệnh lặp lại: i = i + 1</p>
                <p>Bước 4: Viết mã vòng lặp for</p>

                <pre><code class="language-javascript language-markup">
                    let i = 1;
                    for (; i <= num; i +=1) {
                        //phần thân vòng lặp thực hiện tính tổng
                    }
                </code></pre>
                <p>Bước 5: Viết mã thực hiện tính tổng</p>
                <p>total = total + i;</p>
                <p>Bước 6: Hiển thị kết quả</p>
                <pre><code class="language-javascript language-markup">
                    alert(total);
                </code></pre>
                <p>Bước 7: Thực thi chương trình, quan sát kết quả.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
