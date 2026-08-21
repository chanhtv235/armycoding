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
                    <h1 class="entry-title">Mệnh đề LIMIT trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề LIKE trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề ORDER BY trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Mệnh đề <b>LIMIT</b> trong MySQL được sử dụng để hạn chế số lượng bản ghi được trả về bởi câu lệnh SELECT.</p>
                        <div class="note"><b>Lưu ý</b> - Tất cả các cơ sở dữ liệu không hỗ trợ mệnh đề LIMIT. Ví dụ như SQL SERVER hỗ trợ mệnh đề <b>TOP</b> để lấy ra số lượng hạn chế các bản ghi trong khi Oracle sử dụng lệnh <b>ROWNUM</b> để lấy ra một số lượng hạn chế các bản ghi. </div>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ sử dụng LIMIT trong MySQL để có N hàng đầu tiên</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Ví dụ sử dụng LIMIT trong MySQL để có được giá trị cao nhất và thấp nhất</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Cú pháp </h2>
                        <p>Cú pháp cơ bản của mệnh đề LIMIT với câu lệnh SELECT sẽ như sau.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_74928" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">column1,column2,...</code></div><div class="line number3 index2 alt2"><code class="sql keyword">FROM</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">table</code></div><div class="line number5 index4 alt2"><code class="sql plain">LIMIT offset, </code><code class="sql color2">count</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Mệnh đề LIMIT chấp nhận một hoặc hai đối số. Các giá trị của cả hai đối số phải bằng 0 hoặc số nguyên dương. </p>

                        <p> TH1: Khi bạn sử dụng mệnh đề LIMIT với một đối số, đối số này sẽ được sử dụng để xác định số lượng hàng tối đa trả về từ đầu tập kết quả. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_390796" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">column1,column2,...</code></div><div class="line number3 index2 alt2"><code class="sql keyword">FROM</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">table</code></div><div class="line number5 index4 alt2"><code class="sql plain">LIMIT </code><code class="sql color2">count</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> TH2: Truy vấn trên tương đương với truy vấn sau với mệnh đề LIMIT chấp nhận hai đối số: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_702080" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">column1,column2,...</code></div><div class="line number3 index2 alt2"><code class="sql keyword">FROM</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">table</code></div><div class="line number5 index4 alt2"><code class="sql plain">LIMIT 0 , </code><code class="sql color2">count</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-2">Ví dụ sử dụng LIMIT trong MySQL để có N hàng đầu tiên</h2>
                        <p>Giả sử bảng CUSTOMERS có các bản ghi sau:</p>
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

                        <p> Ví dụ: để chọn 3 khách hàng đầu tiên từ bảng CUSTOMERS, bạn sử dụng truy vấn sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_611484" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql plain">LIMIT 3;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-limit-trong-mysql-1.png" alt="Mệnh đề LIMIT trong MySQL" title="Mệnh đề LIMIT trong MySQL">

                        <h2 id="goto-h2-3"> Ví dụ sử dụng LIMIT trong MySQL để có được giá trị cao nhất và thấp nhất </h2>
                        <p> Mệnh đề LIMIT thường được sử dụng với các ORDER BY. Đầu tiên, bạn sử dụng mệnh đề ORDER BY để sắp xếp tập kết quả dựa trên các tiêu chí nhất định và sau đó bạn sử dụng mệnh đề LIMIT để tìm giá trị thấp nhất hoặc cao nhất. </p>
                        <p> Ví dụ 1: để chọn 3 khách hàng hàng đầu có tuổi lớn nhất, bạn có thể sử dụng câu lệnh sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_141309" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql plain">AGE </code><code class="sql keyword">DESC</code></div><div class="line number3 index2 alt2"><code class="sql plain">LIMIT 3;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-limit-trong-mysql-2.png" alt="Mệnh đề LIMIT trong MySQL" title="Mệnh đề LIMIT trong MySQL">

                        <p> Ví dụ 2: để chọn 3 khách hàng hàng đầu có tuổi nhỏ nhất, bạn có thể sử dụng câu lệnh sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_868637" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql keyword">ORDER</code> <code class="sql keyword">BY</code> <code class="sql plain">AGE ACS</code></div><div class="line number3 index2 alt2"><code class="sql plain">LIMIT 3;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-limit-trong-mysql-3.png" alt="Mệnh đề LIMIT trong MySQL" title="Mệnh đề LIMIT trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Mệnh đề LIKE trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề ORDER BY trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
