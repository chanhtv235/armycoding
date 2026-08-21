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
                    <h1 class="entry-title">Biến trong JavaScript</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="#"></a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read2">[Bài đọc] Biến toàn cục trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Một biến JavaScript đơn giản là một tên của vị trí lưu trữ. <strong>Có hai loại biến trong JavaScript</strong>: biến cục bộ (local) và biến toàn cầu (global). </p>
                        <p> Một số quy tắc trong khi khai báo biến JavaScript: </p>
                        <ol>
                            <li> Tên phải bắt đầu bằng ký tự (từ a đến z hoặc A đến Z), dấu gạch dưới (_) hoặc ký hiệu đô la ($). </li>
                            <li> Sau chữ cái đầu tiên chúng ta có thể sử dụng các chữ số (0 đến 9), ví dụ value1. </li>
                            <li> Các biến JavaScript phân biệt chữ hoa chữ thường, ví dụ x và X là các biến khác nhau. </li>
                        </ol>
                        <hr>
                        <h4> Khai báo biến JavaScript đúng </h4>
                        <div class="codeblock">
                            <div><div id="highlighter_112328" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">x = 10 ;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="js keyword">var</code> <code class="js plain">_value = </code><code class="js string">"Luffy"</code> <code class="js plain">;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h4> Khai báo biến JavaScript KHÔNG đúng </h4>
                        <div class="codeblock">
                            <div><div id="highlighter_228576" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">1value = 30;</code></div><div class="line number2 index1 alt1"><code class="js keyword">var</code> <code class="js plain">*aa = 320;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Ví dụ về biến trong JavaScript</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Biến cục bộ (local) trong JavaScript</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Biến toàn cầu (global) trong JavaScript</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Ví dụ về biến trong JavaScript </h2>
                        <p> Sau đây là một ví dụ đơn giản về biến JavaScript. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_432457" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;</code><code class="js keyword">var</code> <code class="js plain">x = 10;</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;</code><code class="js keyword">var</code> <code class="js plain">y = 20;</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;</code><code class="js keyword">var</code> <code class="js plain">z=x+y;</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;</code><code class="js plain">document.write(z);</code></div><div class="line number6 index5 alt1"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>30
</pre>
                        </div>
                        <hr>
                        <div style="height: 10px;"></div>

                        <h2 id="goto-h2-2"> Biến cục bộ (local) trong JavaScript </h2>
                        <p> Biến cục bộ trong JavaScript được khai báo bên trong một khối hoặc hàm. Biến này chỉ có thể truy cập trong phạm vi hàm hoặc khối lệnh. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_443666" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js keyword">function</code> <code class="js plain">abc(){</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">x = 10; </code><code class="js comments">// biến cục bộ</code></div><div class="line number4 index3 alt1"><code class="js plain">}</code></div><div class="line number5 index4 alt2"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Hoặc: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_743204" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js plain">If(a &lt; 10){</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">y = 20; </code><code class="js comments">// biến cục bộ</code></div><div class="line number4 index3 alt1"><code class="js plain">}</code></div><div class="line number5 index4 alt2"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <h2 id="goto-h2-3"> Biến toàn cầu (global) trong JavaScript </h2>
                        <p> Một biến JavaScript toàn cầu như tên gọi của nó có thể truy cập từ bất kỳ hàm nào. Một biến được khai báo bên ngoài hàm hoặc được khai báo với đối tượng window được gọi là biến toàn cầu. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_169369" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">data = 200; </code><code class="js comments">// biến toàn cầu</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js keyword">function</code> <code class="js plain">a() {</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">document.writeln(data);</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js keyword">function</code> <code class="js plain">b() {</code></div><div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">document.writeln(data);</code></div><div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number9 index8 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">a(); </code><code class="js comments">//gọi hàm JavaScript</code></div><div class="line number10 index9 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">b();</code></div><div class="line number11 index10 alt2"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>200
200
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"></a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read2">[Bài đọc] Biến toàn cục trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>

            </div>
        </div>
    </div>
</body>
</html>
