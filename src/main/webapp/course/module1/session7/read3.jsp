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
                <a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7.Cấu trúc lặp</a>
                <header class="entry-header">
                    <h1 class="entry-title">Vòng lặp do-while trong JavaScript</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=7&fileName=read2">[Bài đọc] Vòng lặp while trong JavaScript</a></div>
                        <div class="nxt-btn"><a href="#"></a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> <strong>Vòng lặp do-while trong JavaScript</strong> được sử dụng để lặp một phần của chương trình một vài lần. Tương tự như vòng lặp while, ngoại trừ do-while thực hiện lệnh ít nhất một lần ngay cả khi điều kiện là False - nghĩa là thực hiện trước sau đó mới kiểm tra điều kiện.  </p>
                        <p> Cú pháp: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_854782" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">do</code> <code class="js plain">{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js comments">// Khối lệnh được thực thi</code></div><div class="line number3 index2 alt2"><code class="js plain">} </code><code class="js keyword">while</code><code class="js plain">(condition);&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Lưu đồ thuật toán của vòng lặp do-while trong JavaScript: </p>
                        <img src="https://viettuts.vn/images/js/vong-lap-do-while-trong-javascript.png" alt="Vòng lặp do-while trong JavaScript" title="Vòng lặp do-while trong JavaScript">
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Ví dụ vòng lặp do-while trong JavaScript</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Ví dụ vòng lặp do-while trong JavaScript </h2>
                        <p> Ví dụ sau cho phép bạn nhập một số nguyên cho hạng mục number, click "Do-While Loop", chương trình sẽ in ra tổng của các số từ 1 đến number, trong trường hợp bạn nhập 0 hoặc không nhập gì chương trình vẫn sin ra number = 1: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_789428" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">html</code><code class="xml plain">&gt;</code></div><div class="line number2 index1 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">head</code><code class="xml plain">&gt;</code></div><div class="line number3 index2 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">script</code> <code class="xml color1">type</code><code class="xml plain">=</code><code class="xml string">"text/javascript"</code><code class="xml plain">&gt;</code></div><div class="line number4 index3 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">function doWhileLoop() {</code></div><div class="line number5 index4 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">var sum = 0;</code></div><div class="line number6 index5 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">var number = document.getElementById("number").value;</code></div><div class="line number7 index6 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">var i = 1;</code></div><div class="line number8 index7 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">do {</code></div><div class="line number9 index8 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">sum = sum + i;</code></div><div class="line number10 index9 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">i++;</code></div><div class="line number11 index10 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">} while (i &lt;= number)</code></div><div class="line number12 index11 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">document.getElementById("demo").innerHTML = sum;</code></div><div class="line number13 index12 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">}</code></div><div class="line number14 index13 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">script</code><code class="xml plain">&gt;</code></div><div class="line number15 index14 alt2"><code class="xml plain">&lt;/</code><code class="xml keyword">head</code><code class="xml plain">&gt;</code></div><div class="line number16 index15 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">body</code><code class="xml plain">&gt;</code></div><div class="line number17 index16 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">Number:</code></div><div class="line number18 index17 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">input</code> <code class="xml color1">type</code><code class="xml plain">=</code><code class="xml string">"text"</code> <code class="xml color1">id</code><code class="xml plain">=</code><code class="xml string">"number"</code> <code class="xml color1">name</code><code class="xml plain">=</code><code class="xml string">"number"</code> <code class="xml plain">/&gt;</code></div><div class="line number19 index18 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">input</code> <code class="xml color1">type</code><code class="xml plain">=</code><code class="xml string">"button"</code> <code class="xml color1">onclick</code><code class="xml plain">=</code><code class="xml string">"doWhileLoop()"</code> <code class="xml color1">value</code><code class="xml plain">=</code><code class="xml string">"Do-While Loop"</code> <code class="xml plain">/&gt;</code></div><div class="line number20 index19 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div><div class="line number21 index20 alt2"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">span</code> <code class="xml color1">id</code><code class="xml plain">=</code><code class="xml string">"demo"</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">span</code><code class="xml plain">&gt;</code></div><div class="line number22 index21 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div><div class="line number23 index22 alt2"><code class="xml plain">&lt;/</code><code class="xml keyword">body</code><code class="xml plain">&gt;</code></div><div class="line number24 index23 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">html</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <iframe onload="resizeFrame(this)" class="result" src="https://viettuts.vn/example-php/javascript/vidu-do-while.html" height="150px" width="100%"></iframe>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=7&fileName=read2">[Bài đọc] Vòng lặp while trong JavaScript</a></div>
                        <div class="nxt-btn"><a href="#"></a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
