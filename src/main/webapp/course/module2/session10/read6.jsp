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
                <a href="${pageContext.request.contextPath}/course/module2/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 10. Exception (Ngoại lệ) trong java</a>
                <header class="entry-header"><h1>Từ khóa throw trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Khối lệnh finally trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Từ khóa throws trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Từ khóa throw trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ về từ khóa throw trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Từ khóa throw trong java </h2>
                        <p> <strong>Từ khoá throw trong java</strong> được sử dụng để ném ra một ngoại lệ cụ thể. </p>
                        <p> Chúng ta có thể ném một trong hai ngoại lệ checked hoặc unchecked trong java bằng từ khóa <em>throw</em>. Từ khóa throw chủ yếu được sử dụng để ném ngoại lệ tùy chỉnh (ngoại lệ do người dùng tự định nghĩa). Chúng ta sẽ học ngoại lệ tùy chỉnh trong bài sau. </p>
                        <p> Cú pháp từ khóa throw:
                        </p><div class="codeblock">
                            <div><div id="highlighter_877694" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">throw</code> <code class="java plain">exception;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ví dụ về throw IOException. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_258597" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">throw</code> <code class="java keyword">new</code> <code class="java plain">IOException(</code><code class="java string">"File không tồn tại"</code><code class="java plain">);</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-2"> Ví dụ về từ khóa throw trong java </h2>
                        <p> Ví dụ 1: throw ra ngoại lệ nhưng không xử lý </p>
                        <p> Trong ví dụ này, chúng ta tạo ra phương thức validate() với tham số truyền vào là giá trị integer. Nếu tuổi dưới 18, chúng ta ném ra ngoại lệ ArithmeticException nếu không in ra một thông báo "welcome". </p>
                        <div class="codeblock">
                            <div><div id="highlighter_147401" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestThrow1 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">validate(</code><code class="java keyword">int</code> <code class="java plain">age) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">if</code> <code class="java plain">(age &lt; </code><code class="java value">18</code><code class="java plain">)</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">throw</code> <code class="java keyword">new</code> <code class="java plain">ArithmeticException(</code><code class="java string">"not valid"</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">else</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"welcome"</code><code class="java plain">);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">validate(</code><code class="java value">13</code><code class="java plain">);</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"rest of the code..."</code><code class="java plain">);</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number13 index12 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Output: </p>
                        <div class="codeblock3">
<pre>Exception in thread "main" java.lang.ArithmeticException: not valid
</pre>
                        </div>
                        <p> Ví dụ 1: throw ra ngoại lệ nhưng có xử lý </p>
                        <div class="codeblock">
                            <div><div id="highlighter_610920" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestThrow2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">validate(</code><code class="java keyword">int</code> <code class="java plain">age) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">try</code> <code class="java plain">{</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">if</code> <code class="java plain">(age &lt; </code><code class="java value">18</code><code class="java plain">)</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">throw</code> <code class="java keyword">new</code> <code class="java plain">ArithmeticException(</code><code class="java string">"not valid"</code><code class="java plain">);</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">else</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"welcome"</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">} </code><code class="java keyword">catch</code> <code class="java plain">(ArithmeticException ex) {</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(ex.getMessage());</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number12 index11 alt1">&nbsp;</div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">validate(</code><code class="java value">13</code><code class="java plain">);</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"rest of the code..."</code><code class="java plain">);</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number17 index16 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Output: </p>
                        <div class="codeblock3">
<pre>not valid
rest of the code...
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Khối lệnh finally trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Từ khóa throws trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>

        </div>
        </div>
    </div>
    </div>
</body>
</html>
