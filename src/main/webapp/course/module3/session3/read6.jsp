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
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Thao tác với CSDLl</a>
                <header class="entry-header">
                    <h1 class="entry-title">Mệnh đề ORDER BY trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề LIMIT trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề GROUP BY trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>Mệnh đề <b>ORDER BY</b> trong MySQL được sử dụng để sắp xếp dữ liệu theo thứ tự tăng dần hoặc giảm dần, dựa trên một hoặc nhiều cột. Một số cơ sở dữ liệu sắp xếp các kết quả truy vấn theo thứ tự tăng dần theo mặc định. Lệnh ASC được sử dụng để sắp xếp tăng dần và DESC được sử dụng để sắp xếp giảm dần. </p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ mệnh đề ORDER BY trong MySQL</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1">Cú pháp</h2>
                        <p>Cú pháp cơ bản của mệnh đề ORDER BY trong MySQL như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_973108" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql keyword">column</code><code class="sql plain">-list </code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">table_name </code></div><div class="line number3 index2 alt2"><code class="sql plain">[</code><code class="sql keyword">WHERE</code> <code class="sql plain">condition] </code></div><div class="line number4 index3 alt1"><code class="sql plain">[</code><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql plain">column1, column2, .. columnN] [</code><code class="sql keyword">ASC</code> <code class="sql plain">| </code><code class="sql keyword">DESC</code><code class="sql plain">];</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bạn có thể sử dụng nhiều hơn một cột trong mệnh đề ORDER BY. Đảm bảo rằng bất kỳ cột bạn đang sử dụng để sắp xếp cột đó phải nằm trong danh sách cột.</p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2">Ví dụ mệnh đề ORDER BY trong MySQL</h2>
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
                        <p> Để sắp xếp kết quả theo thứ tự tăng dần bởi các trường NAME và SALARY, bạn có thể sử dụng câu lệnh sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_453275" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql keyword">NAME</code><code class="sql plain">, SALARY;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Kết quả:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-order-by-trong-mysql-1.png" alt="Mệnh đề ORDER BY trong MySQL" title="Mệnh đề ORDER BY trong MySQL">

                        <p>Để sắp xếp kết quả theo thứ tự giảm dần bởi trường NAME, bạn có thể sử dụng câu lệnh sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_916682" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql keyword">NAME</code> <code class="sql keyword">DESC</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Kết quả:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-order-by-trong-mysql-2.png" alt="Mệnh đề ORDER BY trong MySQL" title="Mệnh đề ORDER BY trong MySQL">

                        <p>Để sắp xếp các hàng với thứ tự ưu tiên của riêng mình, câu lệnh sau sắp xếp kết quả theo thứ tự tăng dần của trường ADDRESS và theo thứ tự giảm dần của trường SALARY.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_789964" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql plain">(</code><code class="sql color2">CASE</code> <code class="sql plain">ADDRESS</code></div><div class="line number3 index2 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">WHEN</code> <code class="sql string">'Ha Noi'</code>&nbsp;&nbsp; <code class="sql keyword">THEN</code> <code class="sql plain">1</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">WHEN</code> <code class="sql string">'Da Nang'</code>&nbsp;&nbsp; <code class="sql keyword">THEN</code> <code class="sql plain">2</code></div><div class="line number5 index4 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">ELSE</code> <code class="sql plain">10 </code><code class="sql keyword">END</code><code class="sql plain">) </code><code class="sql keyword">ASC</code><code class="sql plain">, ADDRESS </code><code class="sql keyword">DESC</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Kết quả:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-order-by-trong-mysql-3.png" alt="Mệnh đề ORDER BY trong MySQL" title="Mệnh đề ORDER BY trong MySQL">

                        <p>Kết quả cho thấy các bản ghi được sắp xếp theo thứ tự tăng dần của trường ADDRESS sau đó mới đến thứ giảm dần của trường SALARY.</p>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề LIMIT trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề GROUP BY trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
