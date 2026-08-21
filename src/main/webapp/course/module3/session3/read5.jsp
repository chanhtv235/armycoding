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
                    <h1 class="entry-title">Mệnh đề GROUP BY trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề ORDER BY trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh DISTINCT trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>Mệnh đề <b>GROUP BY</b> trong MySQL được sử dụng hợp tác với câu lệnh SELECT để sắp xếp dữ liệu giống nhau thành các nhóm. Mệnh đề GROUP BY này tuân theo mệnh đề WHERE trong câu lệnh SELECT và đứng trước mệnh đề ORDER BY.</p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ mệnh đề GROUP BY trong MySQL</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1">Cú pháp</h2>
                        <p>Cú pháp cơ bản của mệnh đề GROUP BY trong MySQL được hiển thị trong khối lệnh sau. Mệnh đề GROUP BY trong MySQL phải tuân theo các điều kiện trong mệnh đề WHERE và phải đứng trước mệnh đề ORDER BY nếu mệnh đề được sử dụng.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_776492" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">column1, column2</code></div><div class="line number2 index1 alt1"><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql plain">[ conditions ]</code></div><div class="line number4 index3 alt1"><code class="sql keyword">GROUP</code> <code class="sql keyword">BY</code> <code class="sql plain">column1, column2</code></div><div class="line number5 index4 alt2"><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql plain">column1, column2</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-2">Ví dụ mệnh đề GROUP BY trong MySQL</h2>
                        <p>Giả sử bảng CUSTOMERS có các bản ghi sau đây:</p>
                        <div class="codeblock3">
<pre>+----+----------+-----+-----------+----------+
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

                        <p>Nếu bạn muốn biết tổng số tiền lương của mỗi khách hàng, thì có thể sử dụng mệnh đề GROUP BY sẽ như sau.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_338034" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql keyword">NAME</code><code class="sql plain">, </code><code class="sql color2">SUM</code><code class="sql plain">(SALARY) </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">GROUP</code> <code class="sql keyword">BY</code> <code class="sql keyword">NAME</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-duu-menh-de-group-by-trong-mysql-1.png" alt="Mệnh đề GROUP BY trong MySQL" title="Mệnh đề GROUP BY trong MySQL">

                        <p>Bây giờ, chúng ta hãy update bảng CUSTOMERS có các bản ghi sau với tên trùng lặp:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_606207" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql plain">+</code><code class="sql comments">----+----------+-----+-----------+----------+</code></div><div class="line number2 index1 alt1"><code class="sql plain">| ID | </code><code class="sql keyword">NAME</code>&nbsp;&nbsp;&nbsp;&nbsp; <code class="sql plain">| AGE | ADDRESS&nbsp;&nbsp; | SALARY&nbsp;&nbsp; |</code></div><div class="line number3 index2 alt2"><code class="sql plain">+</code><code class="sql comments">----+----------+-----+-----------+----------+</code></div><div class="line number4 index3 alt1"><code class="sql plain">|&nbsp; 1 | Ha Anh&nbsp;&nbsp; |&nbsp; 32 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 2000.00 |</code></div><div class="line number5 index4 alt2"><code class="sql plain">|&nbsp; 2 | Ha Anh&nbsp;&nbsp; |&nbsp; 25 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 1500.00 |</code></div><div class="line number6 index5 alt1"><code class="sql plain">|&nbsp; 3 | Vu Bang&nbsp; |&nbsp; 23 | Vinh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2000.00 |</code></div><div class="line number7 index6 alt2"><code class="sql plain">|&nbsp; 4 | Thu Minh |&nbsp; 25 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 6500.00 |</code></div><div class="line number8 index7 alt1"><code class="sql plain">|&nbsp; 5 | Hai An&nbsp;&nbsp; |&nbsp; 27 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 8500.00 |</code></div><div class="line number9 index8 alt2"><code class="sql plain">|&nbsp; 6 | Hai An&nbsp;&nbsp; |&nbsp; 22 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 4500.00 |</code></div><div class="line number10 index9 alt1"><code class="sql plain">|&nbsp; 7 | Hai An&nbsp;&nbsp; |&nbsp; 24 | Ha Noi&nbsp;&nbsp;&nbsp; | 10000.00 |</code></div><div class="line number11 index10 alt2"><code class="sql plain">+</code><code class="sql comments">----+----------+-----+-----------+----------+</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bây giờ một lần nữa, nếu bạn muốn biết tổng số tiền lương trên mỗi khách hàng, sau đó truy vấn GROUP BY sẽ như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_802172" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql keyword">NAME</code><code class="sql plain">, </code><code class="sql color2">SUM</code><code class="sql plain">(SALARY) </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">GROUP</code> <code class="sql keyword">BY</code> <code class="sql keyword">NAME</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-duu-menh-de-group-by-trong-mysql-2.png" alt="Mệnh đề GROUP BY trong MySQL" title="Mệnh đề GROUP BY trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề ORDER BY trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh DISTINCT trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
               
        </div>
        </div>
    </div>
    </div>
</body>
</html>
