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
                <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8.Cấu trúc mảng</a>
                <header class="entry-header">
                    <h1 class="entry-title">Mảng (Array) trong JavaScript
                    </h1>
                    <div class="entry-content" style="height: auto !important;">
                        <div><hr>
                            <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i></a></div>
                            <div class="nxt-btn"><a href="#"> <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                            <div class="clearer"></div>
                            <hr>

                            <p> <strong>Mảng (Array) trong JavaScript</strong> là một đối tượng đại diện cho một tập hợp các loại phần tử tương tự. </p>
                            <p> Có 3 cách để tạo mảng trong JavaScript: </p>
                            <ol>
                                <li> Theo mảng chữ. </li>
                                <li> Bằng cách tạo thể hiện của Array (sử dụng từ khóa new). </li>
                                <li> Bằng cách sử dụng Constructor của đối tượng Array (sử dụng từ khóa new). </li>
                            </ol>
                            <hr>

                            <div class="goto-wrapper mom_list">
                                <p>Nội dung chính </p>
                                <ul id="go-to-detail">
                                    <li class="list-goto-1">
                                        <a href="#goto-h2-1">Tạo mảng trong JavaScript theo mảng chữ</a>
                                    </li>
                                    <li class="list-goto-2">
                                        <a href="#goto-h2-2">Bằng cách tạo thể hiện của Array</a>
                                    </li>
                                    <li class="list-goto-3">
                                        <a href="#goto-h2-3">Bằng cách sử dụng Constructor của đối tượng Array</a>
                                    </li>
                                </ul>
                            </div>
                            <h2 id="goto-h2-1"> Tạo mảng trong JavaScript theo mảng chữ </h2>
                            <p> Cú pháp tạo mảng bằng cách sử dụng mảng chữ được đưa ra dưới đây: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_466360" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code>&nbsp; <code class="js plain">arrayname = [value1, value2 ..... valueN];</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Như bạn có thể thấy, các giá trị được chứa bên trong [] và được phân tách bằng dấu phẩy (dấu phẩy). </p>
                            <p> Ví dụ đơn giản về tạo và sử dụng mảng trong JavaScript. </p>
                            <div class="codeblock">
                                <div><div id="highlighter_334230" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">emp = [ </code><code class="js string">"Java"</code><code class="js plain">, </code><code class="js string">"PHP"</code><code class="js plain">, </code><code class="js string">"C++"</code> <code class="js plain">];</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">for</code> <code class="js plain">(i = 0; i &lt; emp.length; i++) {</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">document.write(emp[i] + </code><code class="js string">"&lt;br/&gt;"</code><code class="js plain">);</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number6 index5 alt1"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Thuộc tính .length trả về độ dài của một mảng. </p>
                            <p> Kết quả: </p>
                            <div class="codeblock3">
<pre>Java
PHP
C++
</pre>
                            </div>
                            <hr>
                            <div style="height: 10px"></div>
                            <h2 id="goto-h2-2"> Bằng cách tạo thể hiện của Array </h2>
                            <p> Cú pháp tạo mảng trực tiếp được đưa ra dưới đây: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_57963" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">arrayname = </code><code class="js keyword">new</code> <code class="js plain">Array();</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Ở đây, từ khóa <strong>new</strong> được sử dụng để tạo ra thể hiện của mảng. </p>
                            <p> Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_681128" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">i;</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">emp = </code><code class="js keyword">new</code> <code class="js plain">Array();</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">emp[0] = </code><code class="js string">"Java"</code><code class="js plain">;</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">emp[1] = </code><code class="js string">"PHP"</code><code class="js plain">;</code></div><div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">emp[2] = </code><code class="js string">"C++"</code><code class="js plain">;</code></div><div class="line number7 index6 alt2">&nbsp;</div><div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">for</code> <code class="js plain">(i = 0; i &lt; emp.length; i++) {</code></div><div class="line number9 index8 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">document.write(emp[i] + </code><code class="js string">"&lt;br&gt;"</code><code class="js plain">);</code></div><div class="line number10 index9 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number11 index10 alt2"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Kết quả: </p>
                            <div class="codeblock3">
<pre>Java
PHP
C++
</pre>
                            </div>
                            <hr>

                            <h2 id="goto-h2-3"> Bằng cách sử dụng Constructor của đối tượng Array </h2>
                            <p> Ở đây, bạn cần tạo ra thể hiện của mảng bằng cách truyền các đối số trong hàm tạo để chúng ta không phải cung cấp giá trị một cách rõ ràng. </p>
                            <p> Ví dụ về việc tạo đối tượng bằng cách sử dụng Constructor của đối tượng Array. </p>
                            <div class="codeblock">
                                <div><div id="highlighter_82689" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;script&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">var</code> <code class="js plain">emp = </code><code class="js keyword">new</code> <code class="js plain">Array(</code><code class="js string">"Java"</code><code class="js plain">, </code><code class="js string">"PHP"</code><code class="js plain">, </code><code class="js string">"C++"</code><code class="js plain">);</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">for</code> <code class="js plain">(i = 0; i &lt; emp.length; i++) {</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">document.write(emp[i] + </code><code class="js string">"&lt;br&gt;"</code><code class="js plain">);</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number6 index5 alt1"><code class="js plain">&lt;/script&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Kết quả: </p>
                            <div class="codeblock3">
<pre>Java
PHP
C++
</pre>
                            </div>

                            <hr>
                            <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> </a></div>
                            <div class="nxt-btn"><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                            <div class="clearer"></div>
                            <hr></div>

                    </div>
                </header>

            </div>
        </div>
    </div>
</body>
</html>
