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
                    <h1 class="entry-title">Câu lệnh Select trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Câu lệnh INSERT trong MySQL
                        </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề WHERE trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>Câu lệnh <b>SELECT</b> trong MySQL được sử dụng để lấy dữ liệu từ một bảng cơ sở dữ liệu trả về dữ liệu này dưới dạng một bảng kết quả. Các bảng kết quả này được gọi là tập kết quả (result-sets).</p>
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
                        <p>Cú pháp cơ bản của câu lệnh SELECT trong MySQL như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_667344" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">column1, column2, columnN </code><code class="sql keyword">FROM</code> <code class="sql plain">table_name;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Ở đây, column1, column2... là các trường của một bảng có các giá trị bạn muốn lấy ra. Nếu bạn muốn lấy tất cả các trường có sẵn trong bảng thì bạn có thể sử dụng cú pháp sau đây.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_657808" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">table_name;</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-2">Ví dụ</h2>
                        <p>Giả sử bảng CUSTOMERS có các bản ghi sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_474402" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql plain">+</code><code class="sql comments">----+----------+-----+-----------+----------+</code></div><div class="line number2 index1 alt1"><code class="sql plain">| ID | </code><code class="sql keyword">NAME</code>&nbsp;&nbsp;&nbsp;&nbsp; <code class="sql plain">| AGE | ADDRESS&nbsp;&nbsp; | SALARY&nbsp;&nbsp; |</code></div><div class="line number3 index2 alt2"><code class="sql plain">+</code><code class="sql comments">----+----------+-----+-----------+----------+</code></div><div class="line number4 index3 alt1"><code class="sql plain">|&nbsp; 1 | Ha Anh&nbsp;&nbsp; |&nbsp; 32 | Da Nang&nbsp;&nbsp; |&nbsp; 2000.00 |</code></div><div class="line number5 index4 alt2"><code class="sql plain">|&nbsp; 2 | Van Ha&nbsp;&nbsp; |&nbsp; 25 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 1500.00 |</code></div><div class="line number6 index5 alt1"><code class="sql plain">|&nbsp; 3 | Vu Bang&nbsp; |&nbsp; 23 | Vinh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2000.00 |</code></div><div class="line number7 index6 alt2"><code class="sql plain">|&nbsp; 4 | Thu Minh |&nbsp; 25 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 6500.00 |</code></div><div class="line number8 index7 alt1"><code class="sql plain">|&nbsp; 5 | Hai An&nbsp;&nbsp; |&nbsp; 27 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 8500.00 |</code></div><div class="line number9 index8 alt2"><code class="sql plain">|&nbsp; 6 | Hoang&nbsp;&nbsp;&nbsp; |&nbsp; 22 | Ha Noi&nbsp;&nbsp;&nbsp; |&nbsp; 4500.00 |</code></div><div class="line number10 index9 alt1"><code class="sql plain">|&nbsp; 7 | Binh&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 24 | Ha Noi&nbsp;&nbsp;&nbsp; | 10000.00 |</code></div><div class="line number11 index10 alt2"><code class="sql plain">+</code><code class="sql comments">----+----------+-----+-----------+----------+</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Đoạn code sau đây là một ví dụ, lấy các ID, NAME và SALARY của khách hàng có sẵn trong bảng CUSTOMERS.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_332060" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">ID, </code><code class="sql keyword">NAME</code><code class="sql plain">, SALARY </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-select-trong-mysql-1.png" alt="Câu lệnh SELECT trong MySQL" title="Câu lệnh SELECT trong MySQL">

                        <p>Nếu bạn muốn lấy ra tất cả các trường của bảng CUSTOMERS, thì bạn nên sử dụng truy vấn sau.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_70237" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả như dưới đây.</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-select-trong-mysql-2.png" alt="Câu lệnh SELECT trong MySQL" title="Câu lệnh SELECT trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Câu lệnh INSERT trong MySQL
                        </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề WHERE trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
               
        </div>
        </div>
    </div>
    </div>
</body>
</html>
