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
                <a href="${pageContext.request.contextPath}/course/module2/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5. Static và Access Modifier</a>
                <header class="entry-header">
                    <h1 class="entry-title">Access Modifier trong Java</h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Từ khóa static trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Lớp abstract trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Có hai loại Access Modifier trong Java, đó là: <strong>Access Modifier</strong> và <strong>Non-access Modifier</strong>. </p><p>
                        </p><p> Access Modifer trong Java xác định phạm vi có thể truy cập của biến, phương thức, constructor hoặc lớp. </p>
                        <p> Trong java, có 4 phạm vi truy cập của <strong>Access Modifier</strong> như sau:</p>
                        <ol>
                            <li> <strong>private </strong></li>
                            <li> <strong>default </strong></li>
                            <li> <strong>protected </strong></li>
                            <li> <strong>public </strong></li>
                        </ol>
                        <p> Ngoài ra, còn có nhiều <strong>Non-access Modifier</strong> như static, abstract, synchronized, native, volatile, transient,... <br> Bài này chúng ta sẽ tìm hiểu về các Access Modifier. </p>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Tổng quan về Access Modifier trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">1. Phạm vi truy cập private</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">2. Phạm vi truy cập default</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">3. Phạm vi truy cập protected</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">4. Phạm vi truy cập public</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Tổng quan về Access Modifier trong java </h2>
                        <p> Bảng dưới đây mô tả khả năng truy cập của các Access Modifier trong java: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Access Modifier</th>
                                <th>Trong lớp</th>
                                <th>Trong package</th>
                                <th>Ngoài package bởi lớp con</th>
                                <th>Ngoài package</th>
                            </tr>
                            <tr>
                                <td>Private</td>
                                <td>Y</td>
                                <td>N</td>
                                <td>N</td>
                                <td>N</td>
                            </tr>
                            <tr>
                                <td>Default</td>
                                <td>Y</td>
                                <td>Y</td>
                                <td>N</td>
                                <td>N</td>
                            </tr>
                            <tr>
                                <td>Protected</td>
                                <td>Y</td>
                                <td>Y</td>
                                <td>Y</td>
                                <td>N</td>
                            </tr>
                            <tr>
                                <td>Public</td>
                                <td>Y</td>
                                <td>Y</td>
                                <td>Y</td>
                                <td>Y</td>
                            </tr>
                            </tbody>
                        </table>
                        <p> Hình ảnh minh họa: </p>
                        <img src="https://viettuts.vn/images/java/access-modifier-trong-java.png" alt="Ảnh minh họa access modifier trong java">
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> 1. Phạm vi truy cập private </h2>
                        <p> Private Access Modifier chỉ được truy cập trong phạm vi lớp. </p>
                        <h5> Ví dụ về private access modifier trong java </h5>
                        <p> Trong ví dụ, chúng ta tạo 2 lớp A và Simple. Lớp A chứa biến và phương thức được khai bao là private. Chúng ta cố gắng truy cập chúng từ bên ngoài lớp A. Điều này dẫn đến Compile time error: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_686322" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">private</code> <code class="java keyword">int</code> <code class="java plain">data = </code><code class="java value">40</code><code class="java plain">;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">private</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello java"</code><code class="java plain">);</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number7 index6 alt2"><code class="java plain">}</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Simple {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A obj = </code><code class="java keyword">new</code> <code class="java plain">A();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(obj.data);</code><code class="java comments">// Compile Time Error</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg();</code><code class="java comments">// Compile Time Error</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h4> Vai trò của Private Constructor </h4>
                        <p> Nếu bạn tạo bất kỳ constructor là private trong lớp, bạn sẽ không thể tạo instance của class bên ngoài nó. Ví dụ:
                        </p><div class="codeblock">
                            <div><div id="highlighter_827482" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">private</code> <code class="java plain">A() {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code><code class="java comments">//private constructor</code></div><div class="line number4 index3 alt1">&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello java"</code><code class="java plain">);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java plain">}</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Simple {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A obj = </code><code class="java keyword">new</code> <code class="java plain">A();</code><code class="java comments">//Compile Time Error</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <div class="note"> Chú ý: Một lớp không thể là private hoặc protected, ngoại trừ lớp lồng nhau. </div>
                        <hr>

                        <h2 id="goto-h2-3"> 2. Phạm vi truy cập default </h2>
                        <p> Nếu bạn không khai báo modifier nào, thì nó chính là trường hợp mặc định. Default Access Modifier là chỉ được phép truy cập trong cùng package. </p>
                        <p> Ví dụ về Default Access Modifier trong Java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_880763" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Lưu file với tên A.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.demo;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="codeblock">
                            <div><div id="highlighter_331616" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Lưu file với tên B.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.mypack;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">import</code> <code class="java plain">vn.viettuts.demo.*;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">B {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A obj = </code><code class="java keyword">new</code> <code class="java plain">A(); </code><code class="java comments">// Compile Time Error&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code><code class="java comments">// Compile Time Error&nbsp; </code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Trong ví dụ trên, phạm vi truy cập của lớp A và phương thức của msg() của nó là mặc định nên chúng không thể được truy cập từ bên ngoài package. </p>
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> 3. Phạm vi truy cập protected </h2>
                        <p> Protected access modifier được truy cập bên trong package và bên ngoài package nhưng phải kế thừa. </p>
                        <p> Protected access modifier có thể được áp dụng cho biến, phương thức, constructor. Nó không thể áp dụng cho lớp. </p>
                        <p> Ví dụ về protected access modifier trong Java: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_954510" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Lưu file với tên A.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.demo;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">protected</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="codeblock">
                            <div><div id="highlighter_365301" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Lưu file với tên B.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.mypack;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">import</code> <code class="java plain">vn.viettuts.demo.*;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">B </code><code class="java keyword">extends</code> <code class="java plain">A {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">B obj = </code><code class="java keyword">new</code> <code class="java plain">B();&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg(); </code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Hello
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-5"> 4. Phạm vi truy cập public </h2>
                        <p> Public access modifier được truy cập ở mọi nơi. </p>
                        <p> Ví dụ về public access modifier trong java: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_835089" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Lưu file với tên A.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.demo;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="codeblock">
                            <div><div id="highlighter_599549" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Lưu file với tên B.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.mypack;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">import</code> <code class="java plain">vn.viettuts.demo.*;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">B {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A obj = </code><code class="java keyword">new</code> <code class="java plain">A();</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg();</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Hello
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Từ khóa static trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Lớp abstract trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
        </div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
