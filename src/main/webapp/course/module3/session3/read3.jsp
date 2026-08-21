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
                <a href="${pageContext.request.contextPath}/course/module3/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Thao tác với CSDL</a>
                <header class="entry-header">
                    <h1 class="entry-title">Toán tử AND và OR trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề WHERE trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh UPDATE trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>Toán tử <b>AND</b> và <b>OR</b> trong MySQL được sử dụng để kết hợp nhiều điều kiện để thu hẹp dữ liệu trong một câu lệnh SQL. Hai toán tử này được gọi là toán tử liên hợp.</p>
                        <p>Các toán tử này cung cấp phương tiện để so sánh với các toán tử khác nhau trong cùng một câu lệnh MySQL.</p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Toán tử AND</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Cú pháp</a></li><li><a href="#goto-h3-2">Ví dụ</a></li></ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Toán tử OR</a>
                                    <ul>
                                        <li>
                                            <a href="#goto-h3-3">Cú pháp</a>
                                        </li>
                                        <li>
                                            <a href="#goto-h3-4">Ví dụ</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1">Toán tử AND</h2>
                        <p>Toán tử <b>AND</b> cho phép sự tồn tại của nhiều điều kiện trong mệnh đề WHERE của một câu lệnh MySQL.</p>
                        <h3 id="goto-h3-1">Cú pháp</h3>
                        <p>Cú pháp cơ bản của toán tử AND với một mệnh đề WHERE như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_400811" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">column1, column2, columnN </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">[condition1] </code><code class="sql color1">AND</code> <code class="sql plain">[condition2]...</code><code class="sql color1">AND</code> <code class="sql plain">[conditionN];</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bạn có thể kết hợp N điều kiện bằng toán tử AND. Đối với một hành động được thực hiện bởi các câu lệnh MySQL, cho dù đó là một transaction hoặc một truy vấn, tất cả các điều kiện AND và phải là TRUE.</p>
                        <h3 id="goto-h3-2">Ví dụ</h3>
                        <p>Giả sử bảng CUSTOMERS có các bản ghi sau đây:</p>
                        <div class="codeblock3">
<pre>
+----+----------+-----+-----------+----------+
| ID | NAME     | AGE | ADDRESS   | SALARY   |
+----+----------+-----+-----------+----------+
|  1 | Ha Anh   |  32 | Da Nang   |  2000.00 |
|  2 | Van Ha   |  25 | Ha Noi    |  1500.00 |
|  3 | Vu Bang  |  23 | Vinh      |  2000.00 |
|  4 | Thu Minh |  25 | Ha Noi    |  6500.00 |
|  5 | Hai An   |  27 | Ha Noi    |  8500.00 |
|  6 | Hoang    |  22 | Ha Noi    |  4500.00 |
|  7 | Binh     |  24 | Ha Noi    | 10000.00 |
+----+----------+-----+-----------+----------+
</pre>
                        </div>

                        <p> Sau đây là một ví dụ, lấy ID, NAME và SALARY từ bảng CUSTOMERS, với điều kiện SALARY lớn hơn 2000 và AGE dưới 25 tuổi:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_342938" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">ID, </code><code class="sql keyword">NAME</code><code class="sql plain">, SALARY </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">SALARY &gt; 2000 </code><code class="sql color1">AND</code> <code class="sql plain">AGE &lt; 25;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-toan-tu-and-va-or-trong-mysql-1.png" alt="Toán tử AND và OR trong MySQL" title="Toán tử AND và OR trong MySQL">
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2">Toán tử OR</h2>
                        <p>Toán tử OR được sử dụng để kết hợp nhiều điều kiện trong mệnh đề WHERE của câu lệnh SQL.</p>
                        <h3 id="goto-h3-3">Cú pháp</h3>
                        <p>Cú pháp cơ bản của toán tử OR với một mệnh đề WHERE như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_785988" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">column1, column2, columnN </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">[condition1] </code><code class="sql color1">OR</code> <code class="sql plain">[condition2]...</code><code class="sql color1">OR</code> <code class="sql plain">[conditionN]</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bạn có thể kết hợp N số điều kiện sử dụng toán tử OR. Đối với một hành động được thực hiện bởi các câu lệnh SQL, cho dù đó là một transaction hoặc truy vấn, chỉ có một trong những điều kiện OR phải là TRUE.</p>
                        <h3 id="goto-h3-4">Ví dụ</h3>
                        <p>Giả sử bảng CUSTOMERS có các bản ghi sau đây:</p>
                        <div class="codeblock3">
<pre>
+----+----------+-----+-----------+----------+
| ID | NAME     | AGE | ADDRESS   | SALARY   |
+----+----------+-----+-----------+----------+
|  1 | Ha Anh   |  32 | Da Nang   |  2000.00 |
|  2 | Van Ha   |  25 | Ha Noi    |  1500.00 |
|  3 | Vu Bang  |  23 | Vinh      |  2000.00 |
|  4 | Thu Minh |  25 | Ha Noi    |  6500.00 |
|  5 | Hai An   |  27 | Ha Noi    |  8500.00 |
|  6 | Hoang    |  22 | Ha Noi    |  4500.00 |
|  7 | Binh     |  24 | Ha Noi    | 10000.00 |
+----+----------+-----+-----------+----------+
</pre>
                        </div>

                        <p>Đoạn mã hasa truy vấn sau, sẽ lấy các ID, NAME và Lương từ bảng SALARY, với điều kiện SALARY lớn hơn 2000 và AGE dưới 25.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_587865" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">ID, </code><code class="sql keyword">NAME</code><code class="sql plain">, SALARY </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">SALARY &gt; 2000 </code><code class="sql color1">OR</code> <code class="sql plain">age &lt; 25;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-toan-tu-and-va-or-trong-mysql-2.png" alt="Toán tử AND và OR trong MySQL" title="Toán tử AND và OR trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề WHERE trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh UPDATE trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
               
        </div>
        </div>
    </div>
    </div>
</body>
</html>
