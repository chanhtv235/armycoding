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
                <a href="${pageContext.request.contextPath}/course/module1/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4.Tổng quan về Javascript</a>
                <header class="entry-header">
                    <h1 class="entry-title">Nhúng JavaScript vào HTML</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read1">[Bài đọc] JavaScript là gì?</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read3">[Bài đọc] Cú pháp trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Bạn có thể khai báo lệnh JavaScript ở bất cứ nơi nào trong tài liệu HTML một cách linh hoạt. Tuy nhiên, các cách được ưu tiên nhất để <strong>nhúng JavaScript vào HTML</strong> như sau: </p>
                        <ul>
                            <li>Trong thẻ HTML &lt;head&gt;...&lt;/head&gt;</li>
                            <li>Trong thẻ HTML &lt;body&gt;...&lt;/body&gt;</li>
                            <li>Liên kết với file .js từ bên ngoài, đường dẫn của file .js được khai báo trong thẻ HTML &lt;head&gt;...&lt;/head&gt;</li>
                        </ul>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Trong thẻ HTML &lt;head&gt;...&lt;/head&gt;</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Trong thẻ HTML &lt;body&gt;...&lt;/body&gt;</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Liên kết với file .js từ bên ngoài</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1">Trong thẻ HTML &lt;head&gt;...&lt;/head&gt;</h2>
                        <p> Nếu bạn muốn có một script chạy trên một số sự kiện, như khi người sử dụng nhấp chuột vào nơi nào đó, thì khi đó bạn sẽ đặt script đó trong Head như sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_634171" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;html&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;head&gt;</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;script type=</code><code class="js string">"text/javascript"</code><code class="js plain">&gt;</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;!--</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">function</code> <code class="js plain">sayHello() {</code></div><div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">alert(</code><code class="js string">"Hello World"</code><code class="js plain">)</code></div><div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js comments">//--&gt;</code></div><div class="line number9 index8 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;/script&gt;</code></div><div class="line number10 index9 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;/head&gt;</code></div><div class="line number11 index10 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;body&gt;</code></div><div class="line number12 index11 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;input type=</code><code class="js string">"button"</code> <code class="js plain">onclick=</code><code class="js string">"sayHello()"</code> <code class="js plain">value=</code><code class="js string">"Hello!"</code> <code class="js plain">/&gt;</code></div><div class="line number13 index12 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;/body&gt;</code></div><div class="line number14 index13 alt1"><code class="js plain">&lt;/html&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <iframe onload="resizeFrame(this)" class="result" src="https://viettuts.vn/example-php/javascript/js_header.html" height="70px" width="100%"></iframe>
                        <hr>
                        <div style="height: 10px"></div>
                        </div><br>
                        <h2 id="goto-h2-2">Trong thẻ HTML &lt;body&gt;...&lt;/body&gt;</h2>
                        <p> Nếu bạn cần một script để chạy khi tải trang để tạo nội dung trong trang, thì khi đó. Trong trường hợp này, bạn sẽ không có bất kỳ hàm nào được định nghĩa bởi sử dụng JavaScript. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_685685" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;html&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;head&gt;</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;/head&gt;</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;body&gt;</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;script type=</code><code class="js string">"text/javascript"</code><code class="js plain">&gt;</code></div><div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;!--</code></div><div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">document.write(</code><code class="js string">"Hello JavaScript!"</code><code class="js plain">);</code></div><div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js comments">//--&gt;</code></div><div class="line number9 index8 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;/script&gt;</code></div><div class="line number10 index9 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;p&gt; Ví dụ nhúng JavaScript và thẻ HTML body &lt;/p&gt;</code></div><div class="line number11 index10 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;/body&gt;</code></div><div class="line number12 index11 alt1"><code class="js plain">&lt;/html&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <iframe onload="resizeFrame(this)" class="result" src="https://viettuts.vn/example-php/javascript/js_body.html" height="100px" width="100%"></iframe>
                        <p> Cách này ít được sử dụng vì JavaScript và JQuery cung cấp nhiều hàm để thực hiện việc chèn nội dung vào HTML. </p>
                        <hr>

                        <h2 id="goto-h2-3"> Liên kết với file .js từ bên ngoài </h2>
                        <p>Liên kết với file .js từ bên ngoài, đường dẫn của file .js được khai báo trong thẻ HTML &lt;head&gt;...&lt;/head&gt; </p>
                        <p> Phương pháp này giúp tái sử dụng code và bảo trì dễ dàng hơn. </p>
                        <h5> Ví dụ </h5>
                        <p> Tạo file JavaScript common.js có nội dung như sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_4234" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">function</code> <code class="js plain">sayHello() {</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">alert(</code><code class="js string">"Hello World!"</code><code class="js plain">)</code></div><div class="line number3 index2 alt2"><code class="js plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Nhúng file common.js vào trang HTML như sau, sau đó chúng ta có thể sử dụng hàm sayHello():  </p>
                        <div class="codeblock">
                            <div><div id="highlighter_411902" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;html&gt;</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;head&gt;</code></div><div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;script type=</code><code class="js string">"text/javascript"</code> <code class="js plain">src=</code><code class="js string">"common.js"</code> <code class="js plain">&gt;&lt;/script&gt;</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;/head&gt;</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;body&gt;</code></div><div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">&lt;input type=</code><code class="js string">"button"</code> <code class="js plain">onclick=</code><code class="js string">"sayHello()"</code> <code class="js plain">value=</code><code class="js string">"Hello!"</code> <code class="js plain">/&gt;</code></div><div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;/body&gt;</code></div><div class="line number8 index7 alt1"><code class="js plain">&lt;/html&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <iframe onload="resizeFrame(this)" class="result" src="https://viettuts.vn/example-php/javascript/vidu3.html" height="70px" width="100%"></iframe>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read1">[Bài đọc] Tổng quan JavaScript</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read3">[Bài đọc] Cú pháp trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr></div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
