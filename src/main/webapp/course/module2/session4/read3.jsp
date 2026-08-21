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
                <a href="${pageContext.request.contextPath}/course/module2/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4. Class và Object</a>
                <header class="entry-header">
                    <h1 class="entry-title">Constructor trong java</h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Package trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Từ khóa this trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Constructor trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Các quy tắc tạo constructor trong java</a></li><li><a href="#goto-h3-2">Các kiểu của java constructor</a></li></ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Constructor mặc định trong java</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Constructor tham số trong java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Constructor Overloading trong java</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Sự khác nhau giữa constructor và phương thức trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Constructor trong java </h2>
                        <p> Constructor trong java là một dạng đặc biệt của phương thức được sử dụng để khởi tạo các đối tượng. </p>
                        <p> Java Constructor được gọi tại thời điểm tạo đối tượng. Nó khởi tạo các giá trị để cung cấp dữ liệu cho các đối tượng, đó là lý do tại sao nó được gọi là constructor. </p>

                        <h3 id="goto-h3-1"> Các quy tắc tạo constructor trong java </h3>
                        <p> Có 2 quy tắc cơ bản cho việc tạo constructor: </p>
                        <ol>
                            <li> Tên constructor phải giống tên lớp chứa nó. </li>
                            <li> Constructor không có kiểu trả về tường minh. </li>
                        </ol>

                        <h3 id="goto-h3-2"> Các kiểu của java constructor </h3>
                        <p> Có 2 kiểu của constructor </p>
                        <ol>
                            <li> Constructor mặc định (không có tham số truyền vào) </li>
                            <li> Constructor tham số </li>
                        </ol>
                        <div style="width: 100%; min-height: 100px; overflow: hidden;">
                            <img class="alignleft wp-image-179 size-full" src="/images/java/cac-kieu-java-constructor.jpg" alt="các kiểu constructor trong java">
                        </div>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Constructor mặc định trong java </h2>
                        <p> Một constructor mà không có tham số được gọi là constructor mặc định. </p>
                        <p> Cú pháp của constructor mặc định: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_672610" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">&lt;class_name&gt;() {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// code</code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Ví dụ về constructor mặc định: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_856967" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Bike1 {&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Bike1() {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Bike is created"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Bike1 b=</code><code class="java keyword">new</code> <code class="java plain">Bike1();&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Output: </p>
                        <div class="codeblock3">
                            <pre>Bike is created</pre>
                        </div>

                        <div class="note"> Quy tắc: Nếu không có constructor trong một lớp, trình biên dịch sẽ tự động tạo một constructor mặc định trong lớp đó. </div>
                        <div style="width: 100%; min-height: 100px; overflow: hidden;">
                            <img class="alignleft wp-image-179 size-full" src="/images/java/tu-dong-tao-constructor-mac-dinh.jpg" alt="các kiểu constructor trong java">
                        </div>

                        <h4> Mục đích của constructor mặc định là gì? </h4>
                        <p> Constructor mặc định cung cấp các giá trị mặc định như 0, null, (tùy thuộc vào kiểu dữ liệu) ... tới đối tượng được khởi tạo. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_754748" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Student3{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">id;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">display() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(id+</code><code class="java string">" "</code><code class="java plain">+name);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student3 s1=</code><code class="java keyword">new</code> <code class="java plain">Student3();&nbsp; </code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student3 s2=</code><code class="java keyword">new</code> <code class="java plain">Student3();&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.display();&nbsp; </code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.display();&nbsp; </code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number15 index14 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Output: </p>
                        <div class="codeblock3">
                            <pre>0 null <br>0 null</pre>
                        </div>

                        <p> <strong>Giải thích</strong>: Trong ví dụ trên, bạn không tạo bất kỳ constructor nào, vì vậy trình biên dịch tự động tạo một constructor mặc định cho bạn. Giá trị 0 và null được cung cấp bởi constructor mặc định đó. </p>

                        <h2 id="goto-h2-3">  Constructor tham số trong java </h2>
                        <p> Một constructor có tham số truyền vào được gọi là constructor tham số. </p>
                        <p> Constructor tham số được sử dụng để cung cấp các giá trị khác nhau cho các đối tượng khác nhau. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_378312" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Student4{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">id;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student4(</code><code class="java keyword">int</code> <code class="java plain">i,String n) {&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">id = i;&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">name = n;&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">display() {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(id+</code><code class="java string">" "</code><code class="java plain">+name);</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {&nbsp; </code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student4 s1 = </code><code class="java keyword">new</code> <code class="java plain">Student4(</code><code class="java value">111</code><code class="java plain">,</code><code class="java string">"Viet"</code><code class="java plain">);&nbsp; </code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student4 s2 = </code><code class="java keyword">new</code> <code class="java plain">Student4(</code><code class="java value">222</code><code class="java plain">,</code><code class="java string">"Tuts"</code><code class="java plain">);&nbsp; </code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.display();&nbsp; </code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.display();&nbsp; </code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number19 index18 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Output: </p>
                        <div class="codeblock3">
<pre>111 Viet
222 Tuts
</pre>
                        </div>


                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Constructor Overloading trong java </h2>
                        <p> Constructor Overloading là một kỹ thuật trong Java. Bạn có thể tạo nhiều constructor trong cùng một lớp với danh sách tham số truyền vào khác nhau. Trình biên dịch phân biệt các constructor này thông qua số lượng và kiểu của các tham số truyền vào. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_621334" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Student5 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">int</code> <code class="java plain">id;</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;</code><code class="java plain">String name;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">int</code> <code class="java plain">age;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">Student5(</code><code class="java keyword">int</code> <code class="java plain">i, String n) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">id = i;</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">name = n;</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;</code><code class="java plain">Student5(</code><code class="java keyword">int</code> <code class="java plain">i, String n, </code><code class="java keyword">int</code> <code class="java plain">a) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">id = i;</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">name = n;</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">age = a;</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number16 index15 alt1">&nbsp;</div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">display() {</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(id + </code><code class="java string">" "</code> <code class="java plain">+ name + </code><code class="java string">" "</code> <code class="java plain">+ age);</code></div><div class="line number19 index18 alt2"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number20 index19 alt1">&nbsp;</div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">Student5 s1 = </code><code class="java keyword">new</code> <code class="java plain">Student5(</code><code class="java value">111</code><code class="java plain">, </code><code class="java string">"Viet"</code><code class="java plain">);</code></div><div class="line number23 index22 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">Student5 s2 = </code><code class="java keyword">new</code> <code class="java plain">Student5(</code><code class="java value">222</code><code class="java plain">, </code><code class="java string">"Tuts"</code><code class="java plain">, </code><code class="java value">25</code><code class="java plain">);</code></div><div class="line number24 index23 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">s1.display();</code></div><div class="line number25 index24 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">s2.display();</code></div><div class="line number26 index25 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number27 index26 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Output: </p>
                        <div class="codeblock3">
<pre>111 Viet 0
222 Tuts 25
</pre>
                        </div>

                        <h2 id="goto-h2-5"> Sự khác nhau giữa constructor và phương thức trong java </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th> <strong>Constructor</strong> </th>
                                <th> <strong>Phương thức</strong> </th>
                            </tr>
                            <tr>
                                <td> Constructor được sử dụng để khởi tạo trạng thái của một đối tượng. </td>
                                <td> Phương thức được sử dụng để thể hiện hành động của một đối tượng. </td>
                            </tr>
                            <tr>
                                <td> Constructor không có kiểu trả về. </td>
                                <td> Phương thức có kiểu trả về. </td>
                            </tr>
                            <tr>
                                <td> Constructor được gọi ngầm. </td>
                                <td> Phương thức được gọi tường minh. </td>
                            </tr>
                            <tr>
                                <td> Trình biên dịch Java tạo ra constructor mặc định nếu bạn không có constructor nào. </td>
                                <td> Phương thức không được tạo ra bởi trình biên dịch Java. </td>
                            </tr>
                            <tr>
                                <td> Tên của constructor phải giống tên lớp. </td>
                                <td> Tên phương thức có thể giống hoặc khác tên lớp. </td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Package trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Từ khóa this trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
