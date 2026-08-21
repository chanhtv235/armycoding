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
                    <h1 class="entry-title">Biến toàn cầu trong javascript</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read1">[Bài đọc] Biến trong JavaScript</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read3">[Bài đọc] Kiểu dữ liệu trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> <strong>Một biến toàn cầu JavaScript</strong> được khai báo bên ngoài hàm hoặc được khai báo với đối tượng window. Nó có thể được truy cập từ bất kỳ hàm nào. </p>
                        <p> Ví dụ về biến toàn cầu trong JavaScript. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_183325" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;!</code><code class="xml keyword">DOCTYPE</code> <code class="xml plain">html&gt;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">html</code><code class="xml plain">&gt;</code></div><div class="line number4 index3 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">head</code><code class="xml plain">&gt;</code></div><div class="line number5 index4 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">meta</code> <code class="xml color1">charset</code><code class="xml plain">=</code><code class="xml string">"utf-8"</code><code class="xml plain">&gt;</code></div><div class="line number6 index5 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">title</code><code class="xml plain">&gt;Ví dụ biến toàn cầu trong JavaScript&lt;/</code><code class="xml keyword">title</code><code class="xml plain">&gt;</code></div><div class="line number7 index6 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">script</code><code class="xml plain">&gt;</code></div><div class="line number8 index7 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">var value = 50; //biến toàn cầu</code></div><div class="line number9 index8 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">function a() {</code></div><div class="line number10 index9 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">alert(value);</code></div><div class="line number11 index10 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">}</code></div><div class="line number12 index11 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">function b() {</code></div><div class="line number13 index12 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">alert(value);</code></div><div class="line number14 index13 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">}</code></div><div class="line number15 index14 alt2"><code class="xml plain">&lt;/</code><code class="xml keyword">script</code><code class="xml plain">&gt;</code></div><div class="line number16 index15 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">head</code><code class="xml plain">&gt;</code></div><div class="line number17 index16 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">body</code><code class="xml plain">&gt;</code></div><div class="line number18 index17 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">input</code> <code class="xml color1">type</code><code class="xml plain">=</code><code class="xml string">"button"</code> <code class="xml color1">value</code><code class="xml plain">=</code><code class="xml string">"Button1"</code> <code class="xml color1">onclick</code><code class="xml plain">=</code><code class="xml string">"a();"</code> <code class="xml plain">/&gt;</code></div><div class="line number19 index18 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">input</code> <code class="xml color1">type</code><code class="xml plain">=</code><code class="xml string">"button"</code> <code class="xml color1">value</code><code class="xml plain">=</code><code class="xml string">"Button2"</code> <code class="xml color1">onclick</code><code class="xml plain">=</code><code class="xml string">"b();"</code> <code class="xml plain">/&gt;</code></div><div class="line number20 index19 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">body</code><code class="xml plain">&gt;</code></div><div class="line number21 index20 alt2"><code class="xml plain">&lt;/</code><code class="xml keyword">html</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <hr>
                        <input type="button" value="Button1" onclick="a();" />
                        <input type="button" value="Button2" onclick="b();" />
                        <script>
                            var value = 50; //biến toàn cầu
                            function a() {
                                alert(value);
                            }
                            function b() {
                                alert(value);
                            }
                        </script>
                        <hr>
                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Khai báo biến toàn cầu JavaScript trong hàm</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Nội bộ của biến toàn cục trong JavaScript</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Khai báo biến toàn cầu JavaScript trong hàm </h2>
                        <p> Để khai báo các biến toàn cầu JavaScript bên trong hàm, bạn cần sử dụng <strong>đối tượng window</strong>. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_543197" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">window.value = 90;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Bây giờ nó có thể được khai báo bên trong bất kỳ hàm nào và có thể được truy cập từ bất kỳ hàm nào. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_388819" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js keyword">function</code> <code class="js plain">m() {</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js comments">// khai báo biến toàn cầu theo đối tượng window</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">window.value = 100;</code></div><div class="line number5 index4 alt2"><code class="js plain">}</code></div><div class="line number6 index5 alt1"><code class="js keyword">function</code> <code class="js plain">n() {</code></div><div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js comments">// truy cập biến toàn cầu từ hàm khác</code></div><div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">alert(window.value);</code></div><div class="line number9 index8 alt2"><code class="js plain">}</code></div><div class="line number10 index9 alt1"><code class="js plain">m();</code></div><div class="line number11 index10 alt2"><code class="js plain">n();</code></div><div class="line number12 index11 alt1"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>
                        <div style="height: 10px;"></div>
                        <h2 id="goto-h2-2"> Nội bộ của biến toàn cục trong JavaScript </h2>
                        <p> Khi bạn khai báo một biến bên ngoài hàm, nó được thêm vào trong đối tượng window bởi hệ thống JavaScript. Vì vậy, bạn cũng có thể truy cập nó thông qua đối tượng window. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_843231" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">value = 50;</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">function</code> <code class="js plain">a() {</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">alert(window.value); </code><code class="js comments">//truy cập biến toàn cầu</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number6 index5 alt1"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read1">[Bài đọc] Biến trong JavaScript</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read3">[Bài đọc] Kiểu dữ liệu trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
