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
                    <h1 class="entry-title">Lớp và đối tượng trong java</h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Lập trình hướng đối tượng(OOPs) trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Package trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Trong bài này chúng ta sẽ học về lớp và đối tượng trong java. Trong phương pháp lập trình hướng đối tượng, chúng ta thiết kế chương trình bằng việc sử dụng các lớp và đối tượng. </p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Đối tượng</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Lớp</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các ví dụ đơn giản về lớp và đối tượng trong java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Có những cách nào để tạo đối tượng trong java?</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Đối tượng Annonymous trong java</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Sự khác nhau giữa lớp và đối tượng trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Đối tượng </h2>
                        <p> Một thực thể có trạng thái và hành vi được gọi là đối tượng. Ví dụ như máy pha cà phê, xe đạp, cái quạt... </p>
                        <p> Một đối tượng có ba đặc điểm: </p>
                        <ul>
                            <li> Trạng thái: Đại diện cho dữ liệu (giá trị) của một đối tượng. </li>
                            <li> Hành vi: Đại diện cho hành vi (chức năng) của một đối tượng như gửi tiền, rút tiền, ... </li>
                            <li> Danh tính: Danh tính của một đối tượng thường được cài đặt thông qua một ID duy nhất. ID này được ẩn đối với user bên ngoài. Tuy nhiên nó được sử dụng trong nội bộ máy ảo JVM để định danh từng đối tượng. </li>
                        </ul>
                        <p> Ví dụ: Bút chì là một đối tượng. Tên của nó là A, màu trắng, ... được gọi là trạng thái. Nó được sử dụng để viết, viết được gọi là hành vi. </p>
                        <p><strong> Đối tượng(Object) là một thể hiện của một lớp(Class)</strong>. Lớp là một mẫu hoặc thiết kế từ đó các đối tượng được tạo ra. Vì vậy, đối tượng là các thể hiện (kết quả) của một lớp. </p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Lớp </h2>
                        <p> Một lớp là một nhóm đối tượng có các thuộc tính chung. Nó là một mẫu hoặc thiết kế từ đó các đối tượng được tạo ra. </p>
                        <p> Một lớp trong java có thể chứa: </p>
                        <ul>
                            <li> Thành viên dữ liệu </li>
                            <li> Constructor </li>
                            <li> Phương thức </li>
                            <li> Khối lệnh </li>
                            <li> Lớp và Interface </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-3"> Các ví dụ đơn giản về lớp và đối tượng trong java </h2>
                        <p> Ví dụ 1: </p>
                        <p> Trong ví dụ này, chúng tôi đã tạo ra một lớp Student có hai thành viên dữ liệu id và name. Chúng ta tạo ra các đối tượng của lớp Student bởi từ khóa new và in giá trị của các đối tượng. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_613656" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Student {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">id; </code><code class="java comments">// thành viên dữ liệu</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name; </code><code class="java comments">// thành viên dữ liệu</code></div><div class="line number4 index3 alt1">&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student student1 = </code><code class="java keyword">new</code> <code class="java plain">Student(); </code><code class="java comments">// tạo một đối tượng student1</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(student1.id);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(student1.name);</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>0 null
</pre>
                        </div>
                        <hr>

                        <p> Ví dụ 2: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_501074" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Student2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">id;</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;</code></div><div class="line number4 index3 alt1">&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// phương thức insertRecord</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">insertRecord(</code><code class="java keyword">int</code> <code class="java plain">id, String name) { </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">this</code><code class="java plain">.id = id;</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">this</code><code class="java plain">.name = name;</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// phương thức displayInformation</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">displayInformation() {</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(id + </code><code class="java string">" "</code> <code class="java plain">+ name);</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2">&nbsp;</div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student2 s1 = </code><code class="java keyword">new</code> <code class="java plain">Student2();</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student2 s2 = </code><code class="java keyword">new</code> <code class="java plain">Student2();</code></div><div class="line number19 index18 alt2">&nbsp;</div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.insertRecord(</code><code class="java value">111</code><code class="java plain">, </code><code class="java string">"Viet"</code><code class="java plain">);</code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.insertRecord(</code><code class="java value">222</code><code class="java plain">, </code><code class="java string">"Tuts"</code><code class="java plain">);</code></div><div class="line number22 index21 alt1">&nbsp;</div><div class="line number23 index22 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.displayInformation();</code></div><div class="line number24 index23 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.displayInformation();</code></div><div class="line number25 index24 alt2">&nbsp;</div><div class="line number26 index25 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number27 index26 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Viet
Tuts
</pre>
                        </div>
                        <hr>

                        <p> Ví dụ 3: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_307777" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Student3 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">id;</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;</code></div><div class="line number4 index3 alt1">&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// constructor</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java plain">Student3(</code><code class="java keyword">int</code> <code class="java plain">id, String name) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">this</code><code class="java plain">.id = id;</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">this</code><code class="java plain">.name = name;</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// phương thức displayInformation</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">displayInformation() {</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(id + </code><code class="java string">" "</code> <code class="java plain">+ name);</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2">&nbsp;</div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student3 s1 = </code><code class="java keyword">new</code> <code class="java plain">Student3(</code><code class="java value">111</code><code class="java plain">, </code><code class="java string">"Viet"</code><code class="java plain">);</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student3 s2 = </code><code class="java keyword">new</code> <code class="java plain">Student3(</code><code class="java value">222</code><code class="java plain">, </code><code class="java string">"Tuts"</code><code class="java plain">);</code></div><div class="line number19 index18 alt2">&nbsp;</div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.displayInformation();</code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.displayInformation();</code></div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number23 index22 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Viet
Tuts
</pre>
                        </div>
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Có những cách nào để tạo đối tượng trong java? </h2>
                        <p> Có vài cách để tạo đối tượng trong java, đó là: </p>
                        <ol>
                            <li> Sử dụng từ khóa new </li>
                            <li> Sử dụng phương thức newInstance() </li>
                            <li> Sử dụng phương thức clone() </li>
                            <li> Sử dụng phương thức factory,... </li>
                        </ol>
                        <p> Chúng ta sẽ học những cách tạo đối tượng này trong các bài sau. </p>
                        <hr>

                        <h2 id="goto-h2-5"> Đối tượng Annonymous trong java </h2>
                        <p> Annonymous nghĩa là vô danh. Một đối tượng không có tham chiếu gọi là đối tượng Annonymous. </p>
                        <p> Nếu bạn sử dụng đối tượng 1 lần duy nhất, thì lựa chọn tạo đối tượng Annonymous là tốt nhất trong trường hợp này. </p>

                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_192981" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Calculation {</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">fact(</code><code class="java keyword">int</code> <code class="java plain">n) {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">giaithua = </code><code class="java value">1</code><code class="java plain">;</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">i = </code><code class="java value">1</code><code class="java plain">; i &lt;= n; i++) {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">giaithua = giaithua * i;</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Giai thừa của "</code> <code class="java plain">+ n + </code><code class="java string">"&nbsp; là: "</code> <code class="java plain">+ giaithua);</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// gọi phương thức của đối tượng annonymous</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">new</code> <code class="java plain">Calculation().fact(</code><code class="java value">5</code><code class="java plain">);</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Giai thừa của 5  là: 120
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-6"> Sự khác nhau giữa lớp và đối tượng trong java </h2>
                        <p> Sự khác nhau giữa lớp và đối tượng trong java được thống kê trong bảng sau:
                        </p><table class="alt">
                            <thead>
                            <tr>
                                <td><strong>No</strong></td>
                                <td width="45%"><strong>Đối tượng</strong></td>
                                <td width="45%"><strong>Lớp</strong></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td> 1. </td>
                                <td> Đối tượng là thể hiện của 1 lớp. </td>
                                <td> Lớp là một khuân mẫu hay thiết kế để tạo ra các đối tượng. </td>
                            </tr>
                            <tr>
                                <td> 2. </td>
                                <td> Đối tượng là 1 thực thể trong thế giới thực như Bút chì, Xe đạp, ... </td>
                                <td> Lớp là một nhóm các đối tượng tương tự nhau. </td>
                            </tr>
                            <tr>
                                <td> 3. </td>
                                <td> Đối tượng là 1 thực thể vật lý </td>
                                <td> Lớp là 1 thực thể logic </td>
                            </tr>
                            <tr>
                                <td> 4. </td>
                                <td> Đối tượng được tạo ra chủ yếu từ từ khóa new. <br> Ví dụ: Student s1=new Student(); </td>
                                <td> Lớp được khai báo bằng việc sử dụng từ khóa class. <br> Ví dụ: class Student{} </td>
                            </tr>
                            <tr>
                                <td> 5. </td>
                                <td> Đối tượng có thể được tạo nhiều lần. </td>
                                <td> Lớp được khai báo 1 lần duy nhất. </td>
                            </tr>
                            <tr>
                                <td> 6. </td>
                                <td> Đối tượng được cấp bộ nhớ khi nó được tạo ra. </td>
                                <td> Lớp không được cấp bộ nhớ khi nó được tạo ra. </td>
                            </tr>
                            <tr>
                                <td> 7. </td>
                                <td> Có rất nhiều cách để tạo ra đối tượng trong java như từ khóa new, phương thức newInstance(), phương thức clone(), phương thức factory và deserialization. </td>
                                <td> Chỉ có một cách để định nghĩa lớp trong java sử dụng từ khoá class. </td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Lập trình hướng đối tượng(OOPs) trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Package trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
        </div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
