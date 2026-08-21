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
                <header class="entry-header"><h1>Khối lệnh try-catch trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Xử lý ngoại lệ (Exception Handling) trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Đa khối lệnh catch trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Khối lệnh try trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Cú pháp của khối lệnh try-catch trong java</a></li><li><a href="#goto-h3-2">Cú pháp của khối lệnh try-finally trong java</a></li></ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Khối lệnh catch trong java</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Vấn đề không có ngoại lệ xử lý</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Giải quyết bằng xử lý ngoại lệ</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Khối lệnh try trong java </h2>
                        <p> Khối lệnh try trong java được sử dụng để chứa một đoạn code có thế xảy ra một ngoại lệ. Nó phải được khai báo trong phương thức. </p>
                        <p> Sau một khối lệnh try bạn phải khai báo khối lệnh catch hoặc finally hoặc cả hai. </p>

                        <h3 id="goto-h3-1"> Cú pháp của khối lệnh try-catch trong java </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_893341" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">try</code> <code class="java plain">{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// code có thể ném ra ngoại lệ</code></div><div class="line number3 index2 alt2"><code class="java plain">} </code><code class="java keyword">catch</code><code class="java plain">(Exception_class_Name ref) {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// code xử lý ngoại lệ</code></div><div class="line number5 index4 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h3 id="goto-h3-2"> Cú pháp của khối lệnh try-finally trong java </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_695606" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">try</code> <code class="java plain">{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// code có thể ném ra ngoại lệ</code></div><div class="line number3 index2 alt2"><code class="java plain">} </code><code class="java keyword">finally</code> <code class="java plain">{</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// code trong khối này luôn được thực thi</code></div><div class="line number5 index4 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Khối lệnh catch trong java </h2>
                        <p> Khối catch trong java được sử dụng để xử lý các Exception. Nó phải được sử dụng sau khối try. </p>
                        <p> Bạn có thể sử dụng nhiều khối catch với một khối try duy nhất. </p>

                        <h2 id="goto-h2-3"> Vấn đề không có ngoại lệ xử lý </h2>
                        <div class="codeblock">
                            <div><div id="highlighter_673932" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestTryCatch1 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">data = </code><code class="java value">50</code> <code class="java plain">/ </code><code class="java value">0</code><code class="java plain">;&nbsp; </code><code class="java comments">// ném ra ngoại lê ở đây</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"rest of the code..."</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Output: </p>
                        <div class="codeblock3">
<pre>Exception in thread "main" java.lang.ArithmeticException: / by zero
 at vn.tpv.exception1.TestTryCatch1.main(TestTryCatch1.java:5)
</pre>
                        </div>

                        <p> Trong ví dụ trên, phần còn lại của code không được thực thi (dòng chữ "rest of the code..." không được in ra màn hình). Tất cả các lệnh không được thực thi sau khi xảy ra ngoại lệ. </p>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Giải quyết bằng xử lý ngoại lệ </h2>
                        <div class="codeblock">
                            <div><div id="highlighter_395825" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestTryCatch2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">try</code> <code class="java plain">{</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">data = </code><code class="java value">50</code> <code class="java plain">/ </code><code class="java value">0</code><code class="java plain">;</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">} </code><code class="java keyword">catch</code> <code class="java plain">(ArithmeticException e) {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(e);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"rest of the code..."</code><code class="java plain">);</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Output: </p>
                        <div class="codeblock3">
<pre>java.lang.ArithmeticException: / by zero
rest of the code...
</pre>
                        </div>
                        <p> Trong ví dụ này, phần còn lại của code được thực thi nghĩa là dòng chữ "rest of the code..." được in ra màn hình. </p>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Xử lý ngoại lệ (Exception Handling) trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Đa khối lệnh catch trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
