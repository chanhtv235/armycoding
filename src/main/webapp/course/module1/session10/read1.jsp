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
                <a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 10.Lập trình OOP</a>
                <header class="entry-header">
                    <h1 class="entry-title">Hàm (function) trong JavaScript
                    </h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Kiểu dữ liệu trong JavaScript </a></div>
                        <div class="nxt-btn"><a href="#"> Sự kiện (Event) trong JavaScript <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Hàm (function) trong JavaScript là gì?</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Cú pháp của hàm (function) trong JavaScript</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Ví dụ về hàm JavaScript</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Return - trả về giá trị cho hàm</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Hàm được sử dụng làm giá trị biến</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Hàm (function) trong JavaScript là gì? </h2>
                        <ul>
                            <li> Hàm trong JavaScript là một chương trình con được thiết kế để thực hiện một công việc cụ thể. </li>
                            <li> Hàm trong JavaScript được thực thi khi chúng được gọi từ một hàm khác, từ một sự kiện hoặc gọi từ chính nó. </li>
                            <li> Hàm trong JavaScript luôn trả về một giá trị, nếu không định nghĩa giá trị cụ thể, hàm sẽ trả về undefined. </li>
                            <li> Hàm trong JavaScript có thể có 0 hoặc nhiều tham số. </li>
                        </ul>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Cú pháp của hàm (function) trong JavaScript </h2>
                        <p> Một hàm JavaScript được khai báo với từ khóa <strong>function</strong>, theo sau là <strong>name</strong>, theo sau là 0 hoặc nhiều tham số được khai báo bên trong <strong>()</strong>. </p>
                        <p> Tên hàm có thể chứa các ký tự chữ cái, chữ số, dấu gạch dưới, và ký tự dô la (giống như <a href="/javascript/bien-trong-javascript">quy tắc đặt tên biến</a>). </p>
                        <p> Các lệnh được thực hiện bởi hàm được đặt bên trong dấu ngoặc nhọn:<strong> {}</strong> </p>
                        <div class="codeblock">
                            <div><div id="highlighter_314746" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">function</code> <code class="js plain">name(tham_so_1, tham_so_2, tham_so_3) {</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js comments">// các lệnh</code></div><div class="line number3 index2 alt2"><code class="js plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Các <strong>tham số</strong> được liệt kê bên trong dấu ngoặc đơn () trong định nghĩa hàm. </p>
                        <p> <strong>Đối số</strong> hàm là các <strong>giá trị</strong> nhận được bởi hàm khi nó được gọi. </p>
                        <p> Bên trong hàm, các đối số (các tham số) hoạt động như các biến cục bộ (local). </p>
                        <hr>

                        <h2 id="goto-h2-3"> Ví dụ về hàm JavaScript </h2>
                        <div class="codeblock">
                            <div><div id="highlighter_366694" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js plain">&lt;html&gt;</code></div><div class="line number2 index1 alt1"><code class="js plain">&lt;head&gt;</code></div><div class="line number3 index2 alt2"><code class="js plain">&lt;script type=</code><code class="js string">"text/javascript"</code><code class="js plain">&gt;</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">function</code> <code class="js plain">showMessage() {</code></div><div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">alert(</code><code class="js string">"Hello JavaScritp! this is a message."</code><code class="js plain">);</code></div><div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js plain">}</code></div><div class="line number7 index6 alt2"><code class="js plain">&lt;/script&gt;</code></div><div class="line number8 index7 alt1"><code class="js plain">&lt;/head&gt;</code></div><div class="line number9 index8 alt2"><code class="js plain">&lt;body&gt;</code></div><div class="line number10 index9 alt1"><code class="js spaces">&nbsp;&nbsp;</code><code class="js plain">&lt;input type=</code><code class="js string">"button"</code> <code class="js plain">onclick=</code><code class="js string">"showMessage()"</code> <code class="js plain">value=</code><code class="js string">"Show Message"</code> <code class="js plain">/&gt;</code></div><div class="line number11 index10 alt2"><code class="js plain">&lt;/body&gt;</code></div><div class="line number12 index11 alt1"><code class="js plain">&lt;/html&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <iframe onload="resizeFrame(this)" class="result" src="https://viettuts.vn/example-php/javascript/vidu-ham-trong-javascript-1.html" height="70px" width="100%"></iframe>
                        <hr>
                        <div style="height: 10px"></div>
                        <h2 id="goto-h2-4"> Return - trả về giá trị cho hàm </h2>
                        <p> Khi JavaScript chạy đến câu lệnh <strong>return</strong>, hàm sẽ ngừng thực thi và trả về giá trị sau lệnh "return". </p>
                        <p> Ví dụ: Tính tích của 2 số và trả về kết quả. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_846150" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">x = myFunction(4, 3);</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="js keyword">function</code> <code class="js plain">myFunction(a, b) {</code></div><div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">return</code> <code class="js plain">a * b;</code></div><div class="line number5 index4 alt2"><code class="js plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>12
</pre>
                        </div>
                        <hr>

                        <p> Tại sao nên sử dụng hàm trong JavaScript
                        </p><p> Bạn có thể sử dụng lại mã nguồn: Viết mã một lần và sử dụng nó nhiều lần. </p>
                        <p> Bạn có thể sử dụng cùng một mã nhiều lần với các đối số khác nhau, để tạo ra các kết quả khác nhau. </p>
                        <p> Ví dụ: Chuyển đổi Fahrenheit (độ F) thành Celsius (độ C):
                        </p><div class="codeblock">
                            <div><div id="highlighter_394048" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">function</code> <code class="js plain">toCelsius(fahrenheit) {</code></div><div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="js keyword">return</code> <code class="js plain">(5/9) * (fahrenheit-32);</code></div><div class="line number3 index2 alt2"><code class="js plain">}</code></div><div class="line number4 index3 alt1"><code class="js plain">document.getElementById(</code><code class="js string">"demo"</code><code class="js plain">).innerHTML = toCelsius(60);</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <h2 id="goto-h2-5"> Hàm được sử dụng làm giá trị biến </h2>
                        <p> Các hàm có thể được sử dụng giống như cách bạn sử dụng các biến, trong tất cả các công thức, tác vụ. </p>
                        <p> Ví dụ: Thay vì sử dụng một biến để lưu trữ giá trị trả về của một hàm: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_929846" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">x = toCelsius(60);</code></div><div class="line number2 index1 alt1"><code class="js keyword">var</code> <code class="js plain">text = </code><code class="js string">"The temperature is "</code> <code class="js plain">+ x + </code><code class="js string">" Celsius"</code><code class="js plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Bạn có thể sử dụng hàm trực tiếp, dưới dạng giá trị biến: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_362959" class="syntaxhighlighter  js"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="js keyword">var</code> <code class="js plain">text = </code><code class="js string">"The temperature is "</code> <code class="js plain">+ toCelsius(60) + </code><code class="js string">" Celsius"</code><code class="js plain">;</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Kiểu dữ liệu trong JavaScript </a></div>
                        <div class="nxt-btn"><a href="#"> Sự kiện (Event) trong JavaScript <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>

                </div>

            </div>
        </div>
    </div>
</body>
</html>
