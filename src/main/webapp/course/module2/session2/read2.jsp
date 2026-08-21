<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module2/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Vòng lặp trong java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Vòng lặp while trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Vòng lặp for trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Vòng lặp do-while trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Vòng lặp while trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Vòng lặp while vô tận</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Vòng lặp while trong java </h2>
                        <p> <strong>Vòng lặp while trong java</strong> được sử dụng để lặp một phần của chương trình một vài lần. Nếu số lần lặp không được xác định trước thì vòng lặp lặp while được khuyến khích sử dụng trong trường hợp này. </p>

                        <p> Cú pháp: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_346056" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">while</code><code class="java plain">(condition) {&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// Khối lệnh được lặp lại cho đến khi condition = False</code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <img src="https://viettuts.vn//images/java/menh-de-while-trong-java.png" alt="Vòng lặp while trong java" title="Mệnh đề while trong java">

                        <p> Ví dụ về vòng lặp while trong java: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_229107" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">WhileExample1 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">i = </code><code class="java value">1</code><code class="java plain">;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java keyword">while</code> <code class="java plain">(i &lt;= </code><code class="java value">10</code><code class="java plain">) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(i);</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">i++;</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>1
2
3
4
5
6
7
8
9
10
</pre>
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
                        <h2 id="goto-h2-2"> Vòng lặp while vô tận </h2>
                        <p> Nếu bạn để điều kiện lặp là True thì vòng lặp while sẽ chạy đến vô tận... Đến khi bạn stop chương trình đối với mỗi IDE(Eclipse, Netbean...) hoặc bấm Ctrl + C khi chạy bằng command. </p>
                        <p> Ví dụ về vòng lặp while vô tận trong java: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_856868" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">WhileExample2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java keyword">while</code> <code class="java plain">(</code><code class="java keyword">true</code><code class="java plain">) {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Vòng lặp while vô tận..."</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number7 index6 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Vòng lặp while vô tận...
Vòng lặp while vô tận...
Vòng lặp while vô tận...
Vòng lặp while vô tận...
Vòng lặp while vô tận...
Ctrl + C
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Vòng lặp for trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Vòng lặp do-while trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;</a></div>
                        <div class="clearer"></div>
                        <hr>


              
        </div>
                </div>
            </div>
    </div>
    </div>
</body>
</html>
