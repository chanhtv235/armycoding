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
                <h4>[Thực hành] Khai báo và sử dụng biến</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập làm việc với biến và toán tử.</p>

                <h6>Bài 1: Khai báo các biến thuộc các kiểu khác nhau, gán giá trị cho chúng và in ra tài liệu HTML.</h6>
                <p>-Biến i kiểu số nguyên, có giá trị là 10</p>
                <p>-Biến f kiểu số thực, có giá trị là 20.5</p>
                <p>-Biến b kiểu logic, có giá trị là true</p>
                <p>-Biến s kiểu chuỗi, có giá trị là "Hà Nội".</p>
                <p>-Sử dụng hàm document.write() để viết kết quả ra màn hình.</p>
                <pre><code class="language-javascript language-markup">
                        &lt;button type="button" onclick="showMessage();"&gt;Click Me! &lt;/button&gt;
                        <script>
                         let f = 20.5;
                         let b = true;
                         let s = 'Hà Nội';

                         document.write('i = ' + i);
                         document.write('<br/>');
                         document.write('f = ' + f);
                         document.write('<br/>');
                         document.write('b = ' + b);
                         document.write('<br/>');
                         document.write('s = ' + s);
                        </script>
                </code></pre>
                <h6>Bài 2: Viết một đoạn mã Javascript, khai báo biến width chứa giá trị độ rộng của hình chữ nhật, biến height chứa giá trị chiều cao của hình chữ nhật. In ra màn hình diện tích của hình chữ nhật đó.</h6>
                <pre><code class="language-javascript language-markup">
                        &lt;button type="button" onclick="showMessage();"&gt;Click Me!&lt;/button&gt;
                        <script>
                            let width = 20;
                            let height = 10;
                            let area = width * height;
                            document.write('Area = ' + area);
                        </script>
                </code></pre>

                <h6>Bài 3: Dùng hàm prompt() để nhập 2 số từ bàn phím, lưu vào 2 biến là a và b.
                    Kiểm tra xem a có phải là bội số của b hay không (tức là a có chia hết cho b hay không).
                    Hiển thị kết quả ra màn hình bằng cách sử dụng hàm alert().</h6>
            </div>
    </div>
</div>


</body>
</html>
