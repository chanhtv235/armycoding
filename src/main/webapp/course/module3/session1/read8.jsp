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
                <a href="${pageContext.request.contextPath}/course/module3/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về CSDL Mysql</a>
                <header class="entry-header">
                    <h1 class="entry-title">Câu lệnh UPDATE trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Toán tử AND và OR trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh DELETE trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>Câu lệnh <b>UPDATE</b> trong MySQL được sử dụng để sửa đổi các bản ghi hiện có trong một bảng. Bạn có thể sử dụng mệnh đề WHERE với truy vấn UPDATE để cập nhật các bản ghi đã chọn, nếu không tất cả các bản ghi sẽ bị ảnh hưởng.</p>
                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1">Cú pháp</h2>
                        <p>Cú pháp cơ bản của truy vấn UPDATE với mệnh đề WHERE như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_408194" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">UPDATE</code> <code class="sql plain">table_name</code></div><div class="line number2 index1 alt1"><code class="sql keyword">SET</code> <code class="sql plain">column1 = value1, column2 = value2...., columnN = valueN</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">[condition];</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bạn có thể kết hợp N số điều kiện bằng toán tử AND hoặc OR.</p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2">Ví dụ</h2>
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
                        <p>Truy vấn sau sẽ cập nhật ADDRESS cho một khách hàng có số ID là 6 trong bảng.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_129613" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">UPDATE</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql keyword">SET</code> <code class="sql plain">ADDRESS = </code><code class="sql string">'Vinh Phuc'</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">ID = 6;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bây giờ, bảng CUSTOMERS sẽ có các bản ghi sau đây:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-update-trong-mysql-1.png" alt="Câu lệnh UPDATE trong MySQL" title="Câu lệnh UPDATE trong MySQL">

                        <p> Nếu muốn sửa đổi tất cả các giá trị ADDRESS và SALARY trong bảng CUSTOMERS, bạn không cần phải sử dụng mệnh đề WHERE vì chỉ cần câu lệnh UPDATE là đủ như thể hiện trong câu lệnh sau đây.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_781130" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">UPDATE</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql keyword">SET</code> <code class="sql plain">ADDRESS = </code><code class="sql string">'Ha Noi'</code><code class="sql plain">, SALARY = 1000.00;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bây giờ, bảng CUSTOMERS sẽ có các bản ghi sau đây:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-update-trong-mysql-2.png" alt="Câu lệnh UPDATE trong MySQL" title="Câu lệnh UPDATE trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Toán tử AND và OR trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh DELETE trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
               
        </div>
    </div>
    </div>
</body>
</html>
