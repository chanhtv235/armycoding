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
                <a href="${pageContext.request.contextPath}/course/module1/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5.Biến, kiểu dữ liệu và toán tử</a>
                <header class="entry-header">
                    <h1 class="entry-title">Toán tử trong JavaScript</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn">
                            <a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read3">[Bài đọc] Kiểu dữ liệu trong JavaScript</a>
                        </div>
                        <div class="nxt-btn">
                            <a href="#"></a>
                        </div>
                        <div class="clearer"></div>
                        <hr>

                        <p><strong> Các toán tử trong JavaScript </strong>là các ký hiệu được sử dụng để thực hiện các phép toán trên các toán hạng. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_537843" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">sum = 10 + 20;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ở đây, + là toán tử số học và = là toán tử gán. </p>
                        <p> Các loại toán tử sau trong JavaScript: </p>
                        <ol>
                            <li> Toán tử số học. </li>
                            <li> Toán tử so sánh (quan hệ). </li>
                            <li> Toán tử bit. </li>
                            <li> Toán tử logic. </li>
                            <li> Toán tử gán. </li>
                            <li> Các toán tử đặc biệt. </li>
                        </ol>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Toán tử số học.</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Toán tử so sánh.</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Toán tử logic.</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Toán tử gán.</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Các toán tử đặc biệt.</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Toán tử số học. </h2>
                        <p> Toán tử số học được sử dụng để thực hiện các phép toán số học trên các toán hạng. Các toán tử sau đây được gọi là toán tử số học JavaScript. </p>
                        <table class="alt">
                            <tbody><tr><th width="10%">Toán tử</th><th width="45%">Mô tả</th><th width="45%">Ví dụ</th></tr>
                            <tr><td>+</td><td>Phép cộng</td><td>10+20 = 30</td></tr>
                            <tr><td>-</td><td>Phép trừ</td><td>20-10 = 10</td></tr>
                            <tr><td>*</td><td>Phép nhân</td><td>10*20 = 200</td></tr>
                            <tr><td>/</td><td>Phép chia lấy phần nguyên</td><td> 20/10 = 2</td></tr>
                            <tr><td>%</td><td>Phép chia lấy phần dư</td><td>20%10 = 0</td></tr>
                            <tr><td>++</td><td>Tăng lên 1 đơn vị</td><td>var a=10; a++; bây giờ a = 11</td></tr>
                            <tr><td>--</td><td>Giảm đi 1 đơn vị</td><td>var a=10; a--; bây giờ a = 9</td></tr>
                            </tbody></table>
                        <hr>
                        <div style="height: 10px;"></div>

                        <h2 id="goto-h2-2"> Toán tử so sánh (quan hệ). </h2>
                        <p> Toán tử so sánh JavaScript so sánh hai toán hạng. Các toán tử so sánh như sau: </p>
                        <table class="alt">
                            <tbody><tr><th width="10%">Toán tử</th><th width="45%">Mô tả</th><th width="45%">Ví dụ</th></tr>
                            <tr><td>==</td><td>So sánh bằng</td><td>10==20 = false</td></tr>
                            <tr><td>===</td><td>Giống hệt nhau (bằng và cùng kiểu dữ liệu)</td><td>10==20 = false</td></tr>
                            <tr><td>!=</td><td>Không bằng</td><td>10!=20 = true</td></tr>
                            <tr><td>!==</td><td>Không giống hệt nhau</td><td> 20!==20 = false</td></tr>
                            <tr><td>&gt;</td><td>Lớn hơn</td><td>20&gt;10 = true</td></tr>
                            <tr><td>&gt;=</td><td>Lớn hơn hoặc bằng</td><td>20&gt;=10 = true</td></tr>
                            <tr><td>&lt;</td><td>Nhỏ hơn</td><td>20&lt;10 = false</td></tr>
                            <tr><td>&lt;=</td><td>Nhỏ hơn hoặc bằng</td><td>20&lt;=10 = false</td></tr>
                            </tbody></table>
                        <hr>

                        <h2 id="goto-h2-3"> Toán tử bit. </h2>
                        <p> Các toán tử bit thực hiện các thao tác bit trên các toán hạng. Các toán tử như sau: </p>
                        <table class="alt">
                            <tbody><tr><th width="10%">Toán tử</th><th width="45%">Mô tả</th><th width="45%">Ví dụ</th></tr>
                            <tr><td>&amp;</td><td>điều kiện AND</td><td>(10==20 &amp; 20==33) = false</td></tr>
                            <tr><td>|</td><td>điều kiện OR</td><td>(10==20 | 20==33) = false</td></tr>
                            <tr><td>^</td><td>điều kiện XOR</td><td>(10==20 ^ 20==33) = false</td></tr>
                            <tr><td>~</td><td>điều kiện NOT</td><td> (~10) = -10</td></tr>
                            <tr><td>&lt;&lt;</td><td>Dịch trái</td><td>(10&lt;&lt;2) = 40</td></tr>
                            <tr><td>&gt;&gt;</td><td>Dịch phải</td><td>(10&gt;&gt;2) = 2</td></tr>
                            <tr><td>&gt;&gt;&gt;</td><td>Dịch phải với Zero</td><td>(10&gt;&gt;&gt;2) = 2</td></tr>
                            </tbody></table>
                        <hr>
                        <div style="height: 10px;"></div>
                        <h2 id="goto-h2-4"> Toán tử logic. </h2>
                        <p> Các toán tử sau được gọi là toán tử logic trong JavaScript. </p>
                        <table class="alt">
                            <tbody><tr><th width="10%">Toán tử</th><th width="45%">Mô tả</th><th width="45%">Ví dụ</th></tr>
                            <tr><td>&amp;&amp;</td><td>Logic AND</td><td>(10==20 &amp;&amp; 20==33) = false</td></tr>
                            <tr><td>||</td><td>Logic OR</td><td>(10==20 || 20==33) = false</td></tr>
                            <tr><td>!</td><td>Logic Not</td><td>!(10==20) = true</td></tr>
                            </tbody></table>
                        <hr>

                        <h2 id="goto-h2-5"> Toán tử gán. </h2>
                        <p> Các toán tử sau được gọi là toán tử gán trong JavaScript. </p>
                        <table class="alt">
                            <tbody><tr><th width="10%">Toán tử</th><th width="45%">Mô tả</th><th width="45%">Ví dụ</th></tr>
                            <tr><td>=</td><td>Gán</td><td>10+10 = 20</td></tr>
                            <tr><td>+=</td><td>Cộng và gán</td><td>var a=10; a+=20; bây giờ a = 30</td></tr>
                            <tr><td>-=</td><td>Trừ và gán</td><td>var a=20; a-=10; bây giờ a = 10</td></tr>
                            <tr><td>*=</td><td>Nhân và gán</td><td>var a=10; a*=20; bây giờ a = 200</td></tr>
                            <tr><td>/=</td><td>Chia lấy phần nguyên và gán</td><td>var a=10; a/=2; bây giờ a = 5</td></tr>
                            <tr><td>%=</td><td>Chia lấy phần dư và gán</td><td>var a=10; a%=2; bây giờ a = 0</td></tr>
                            </tbody></table>
                        <hr>

                        <h2 id="goto-h2-6"> Các toán tử đặc biệt. </h2>
                        <p> Các toán tử sau được gọi là các toán tử đặc biệt trong JavaScript. </p>
                        <table class="alt">
                            <tbody><tr><th width="10%">Toán tử</th><th>Mô tả</th></tr>
                            <tr><td>(?:)</td><td>Toán tử điều kiện trả về giá trị dựa trên điều kiện. Nó giống như if-else.</td></tr>
                            <tr><td>,</td><td>Cho phép nhiều biểu thức được đánh giá như một câu lệnh đơn.</td></tr>
                            <tr><td>delete</td><td>Toán tử delete xóa một thuộc tính của đối tượng.</td></tr>
                            <tr><td>in</td><td>Toán tử in kiểm tra nếu đối tượng có thuộc tính đã cho.</td></tr>
                            <tr><td>instanceof</td><td>Kiểm tra nếu đối tượng là một thể hiện của kiểu dữ liệu đã cho.</td></tr>
                            <tr><td>new</td><td>Tạo một thể hiện của môt đối tượng.</td></tr>
                            <tr><td>typeof</td><td>Kiểm tra kiểu đối tượng.</td></tr>
                            <tr><td>void</td><td>Nó loại bỏ giá trị trả về của biểu thức.</td></tr>
                            <tr><td>yield</td><td>Kiểm tra những gì được trả về trong một trình tạo bởi trình lặp của trình tạo.</td></tr>
                            </tbody></table>

                        <hr>
                        <div class="pre-btn">
                            <a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read3">[Bài đọc] Kiểu dữ liệu trong JavaScript</a>
                        </div>
                        <div class="nxt-btn">
                            <a href="#"></a>
                        </div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
