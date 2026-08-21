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
                    <h1 class="entry-title">Mệnh đề LIKE trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="/#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Câu lệnh DELETE trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề LIMIT trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>Mệnh đề <b>LIKE</b> trong MySQL được sử dụng để so sánh một giá trị với các giá trị tương tự sử dụng toán tử ký tự đại diện (wildcard). Có hai ký tự đại diện được sử dụng kết hợp với toán tử LIKE.</p>
                        <ul class="list">
                            <li>Phần trăm (%)</li>
                            <li>Dấu gạch dưới (_)</li>
                        </ul>
                        <p> Dấu phần trăm (%) thể hiện không, một hoặc nhiều ký tự. Dấu gạch (_) dưới đại diện cho một số hoặc một ký tự. Những ký hiệu này có thể được sử dụng trong sự kết hợp. </p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ mệnh đề Like trong MySQL</a>
                                    <ul>
                                        <li>
                                            <a href="#goto-h3-1">Ví dụ sử dụng mệnh đề LIKE trong câu lệnh</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1">Cú pháp</h2>
                        <p>Cú pháp cơ bản của '%' và '_' là như sau:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_731208" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number2 index1 alt1"><code class="sql keyword">WHERE</code> <code class="sql keyword">column</code> <code class="sql color1">LIKE</code> <code class="sql string">'XXXX%'</code><code class="sql color1">or</code> <code class="sql keyword">SELECT</code> <code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number3 index2 alt2"><code class="sql keyword">WHERE</code> <code class="sql keyword">column</code> <code class="sql color1">LIKE</code> <code class="sql string">'%XXXX%'</code><code class="sql plain">orSELECT </code><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number4 index3 alt1"><code class="sql keyword">WHERE</code> <code class="sql keyword">column</code> <code class="sql color1">LIKE</code> <code class="sql string">'XXXX_'</code><code class="sql plain">orSELECT </code><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number5 index4 alt2"><code class="sql keyword">WHERE</code> <code class="sql keyword">column</code> <code class="sql color1">LIKE</code> <code class="sql string">'_XXXX'</code><code class="sql plain">orSELECT </code><code class="sql keyword">FROM</code> <code class="sql plain">table_name</code></div><div class="line number6 index5 alt1"><code class="sql keyword">WHERE</code> <code class="sql keyword">column</code> <code class="sql color1">LIKE</code> <code class="sql string">'_XXXX_'</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Bạn có thể kết hợp N điều kiện bằng cách sử dụng các toán tử AND hoặc OR. Ở đây, XXXX có thể là bất kỳ giá trị số hay chuỗi nào.</p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Ví dụ mệnh đề Like trong MySQL </h2>
                        <p>Bảng dưới đây có một vài ví dụ cho thấy mệnh đề WHERE có mệnh đề LIKE với toán tử '%' và '_' khác nhau:</p>
                        <table class="alt">
                            <tbody><tr>
                                <th>No.</th>
                                <th>Câu lệnh và mô tả</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><p><b>WHERE SALARY LIKE '200%'</b></p>
                                    <p>Tìm bất kỳ giá trị nào bắt đầu bằng 200.</p></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><p><b>WHERE SALARY LIKE '%200%'</b></p>
                                    <p>Tìm bất kỳ giá trị nào có 200 vị trí bất kỳ.</p></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><p><b>WHERE SALARY LIKE '_00%'</b></p>
                                    <p>Tìm bất kỳ giá trị nào có 00 ở vị trí thứ hai và thứ ba.</p></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><p><b>WHERE SALARY LIKE '2_%_%'</b></p>
                                    <p>Tìm bất kỳ giá trị nào bắt đầu bằng 2 và có ít nhất 3 ký tự.</p></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td><p><b>WHERE SALARY LIKE '%2'</b></p>
                                    <p>Tìm bất kỳ giá trị nào kết thúc bằng 2.</p></td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td><p><b>WHERE SALARY LIKE '_2%3'</b></p>
                                    <p>Tìm bất kỳ giá trị nào có vị trí 2 ở vị trí thứ hai và kết thúc bằng 3.</p></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td><p><b>WHERE SALARY LIKE '2___3'</b></p>
                                    <p>Tìm bất kỳ giá trị nào trong số năm chữ số bắt đầu bằng 2 và kết thúc bằng 3.</p></td>
                            </tr>
                            </tbody></table>

                        <h3 id="goto-h3-1"> Ví dụ sử dụng mệnh đề LIKE trong câu lệnh </h3>
                        <p> Giả sử bảng CUSTOMERS có các bản ghi như hình dưới đây.</p>
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
                        <p>Ví dụ hiển thị tất cả các bản ghi từ bảng CUSTOMERS, với điều kiện SALARY bắt đầu với 200.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_454999" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql keyword">WHERE</code> <code class="sql plain">SALARY </code><code class="sql color1">LIKE</code> <code class="sql string">'200%'</code><code class="sql plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p>Câu lệnh trên sẽ tạo ra kết quả sau:</p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-menh-de-like-trong-mysql.png" alt="Mệnh đề LIKE trong MySQL" title="Mệnh đề LIKE trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="/#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Câu lệnh DELETE trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề LIMIT trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
