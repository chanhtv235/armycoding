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
                    <h1 class="entry-title">Mệnh đề WHERE trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Câu lệnh Select trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Toán tử AND và OR trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p><b>Mệnh đề WHERE trong MySQL</b> được sử dụng để chỉ định một điều kiện trong khi lấy dữ liệu từ một bảng hoặc bằng cách join với nhiều bảng. Nếu điều kiện thỏa mãn, thì nó trả về một giá trị cụ thể từ bảng. Bạn nên sử dụng mệnh đề WHERE để lọc các bản ghi và chỉ lấy các bản ghi cần thiết.</p>
                        <p>Mệnh đề WHERE không chỉ được sử dụng trong câu lệnh SELECT, mà nó còn được sử dụng trong câu lệnh UPDATE, DELETE, vv, mà sẽ được đề cập đến trong các bài tiếp theo.</p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ sử dụng mệnh đề WHERE trong MySQL</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Cú pháp </h2>
                        <p>Cú pháp cơ bản của câu lệnh SELECT với mệnh đề WHERE như dưới đây.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_623498" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">column1, column2, columnN </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">[condition]</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Ví dụ sử dụng mệnh đề WHERE trong MySQL </h2>
                        <p>Giả sử bảng CUSTOMERS có các bản ghi như sau:</p>
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
                        <p>Đoạn mã sau đây là một ví dụ để lấy các ID, NAME và SALARY từ bảng CUSTOMERS, nơi SALARY lớn hơn 2000:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_864831" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">ID, </code><code class="sql keyword">NAME</code><code class="sql plain">, SALARY </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">SALARY &gt; 2000;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-where-trong-mysql-1.png" alt="Câu lệnh WHERE trong MySQL" title="Câu lệnh WHERE trong MySQL">

                        <p>Truy vấn sau đây là một ví dụ, để lấy ra các trường ID, NAME và SALARY từ bảng CUSTOMERS cho có tên <b>Hai An</b>.</p>
                        <p>Ở đây, điều quan trọng cần lưu ý là tất cả các chuỗi nên được đặt trong dấu nháy đơn (''). Trong khi, các giá trị số thì không cần.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_405230" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">ID, </code><code class="sql keyword">NAME</code><code class="sql plain">, SALARY </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql keyword">NAME</code> <code class="sql plain">= </code><code class="sql string">'Hai An'</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-where-trong-mysql-2.png" alt="Câu lệnh WHERE trong MySQL" title="Câu lệnh WHERE trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Câu lệnh Select trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Toán tử AND và OR trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
               
        </div>
        </div>
    </div>
    </div>
</body>
</html>
