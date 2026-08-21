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
                    <h1 class="entry-title">Từ khóa static trong java</h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Từ khóa final trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Access Modifier trong Java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> <strong>Từ khóa static trong Java</strong> được sử dụng chính để quản lý bộ nhớ. Chúng ta có thể áp dụng từ khóa static với các biến, các phương thức, các khối, các lớp lồng nhau(nested class). Từ khóa static thuộc về lớp chứ không thuộc về instance(thể hiện) của lớp. </p>

                        <p> Trong java, Static có thể là: </p>
                        <ol>
                            <li><strong>Biến static:</strong> Khi bạn khai báo một biến là static, thì biến đó được gọi là biến tĩnh, hay biến static.</li>
                            <li><strong>Phương thức static:</strong> Khi bạn khai báo một phương thức là static, thì phương thức đó gọi là phương thức static.</li>
                            <li><strong>Khối static:</strong> Được sử dụng để khởi tạo thành viên dữ liệu static.</li>
                        </ol>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">1. Biến static trong Java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Lợi thế của biến static</a></li><li><a href="#goto-h3-2">Chương trình đếm số không sử dụng biến static trong java</a></li><li><a href="#goto-h3-3">Chương trình đếm số có sử dụng biến static trong java</a></li></ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">2. Phương thức static trong Java</a>
                                    <ul>
                                        <li><a href="#goto-h3-4">Sự hạn chế của phương thức static</a></li></ul>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">3. Khối static trong Java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> 1. Biến static trong Java </h2>
                        <p> Khi bạn khai báo một biến là static, thì biến đó được gọi là biến tĩnh, hay biến static. </p>
                        <ol>
                            <li> Biến static có thể được sử dụng để tham chiếu thuộc tính chung của tất cả đối tượng (mà không là duy nhất cho mỗi đối tượng), ví dụ như tên công ty của nhân viên, tên trường học của các sinh viên, ... </li>
                            <li> Biến static lấy bộ nhớ chỉ một lần trong Class Area tại thời gian tải lớp đó. </li>
                        </ol>
                        <hr>
                        <h3 id="goto-h3-1"> Lợi thế của biến static </h3>
                        <p> Sử dụng biến static giúp chương trình của bạn sử dụng bộ nhớ hiệu quả hơn (tiết kiệm bộ nhớ). </p>
                        <p> Vấn đề khi không sử dụng biến static </p>
                        <div class="codeblock">
                            <div><div id="highlighter_669368" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Student{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">rollno;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String college=</code><code class="java string">"Bưu Chính Viễn Thông"</code><code class="java plain">;&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java plain">} </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Giả sử có 1000 sinh viên trong trường đại học, bây giờ instance của các dữ liệu thành viên sẽ sự dụng bộ nhớ mỗi khi đối tượng được tạo. Tất cả sinh viên có rollno và name là thuộc tính riêng. Tuy nhiên, college là thuộc tính chung của tất cả đối tượng. Nếu chúng ta tạo nó là static, thì trường này sẽ chỉ sử dụng bộ nhớ một lần để lưu biến này. </p>

                        <div class="note"> Ghi chú: Thuộc tính static trong Java được chia sẻ tới tất cả đối tượng. </div>

                        <p> Ví dụ về biến static trong java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_156936" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Student8 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">rollno;</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java plain">String college = </code><code class="java string">"Bưu Chính Viễn Thông"</code><code class="java plain">;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student8(</code><code class="java keyword">int</code> <code class="java plain">r, String n) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">rollno = r;</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">name = n;</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">display() {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(rollno + </code><code class="java string">" - "</code> <code class="java plain">+ name + </code><code class="java string">" - "</code> <code class="java plain">+ college);</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1">&nbsp;</div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student8 s1 = </code><code class="java keyword">new</code> <code class="java plain">Student8(</code><code class="java value">111</code><code class="java plain">, </code><code class="java string">"Thông"</code><code class="java plain">);</code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student8 s2 = </code><code class="java keyword">new</code> <code class="java plain">Student8(</code><code class="java value">222</code><code class="java plain">, </code><code class="java string">"Minh"</code><code class="java plain">);</code></div><div class="line number18 index17 alt1">&nbsp;</div><div class="line number19 index18 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.display();</code></div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.display();</code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number22 index21 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>111 - Thông - Bưu Chính Viễn Thông
222 - Minh - Bưu Chính Viễn Thông
</pre>
                        </div>
                        <hr>
                        <h3 id="goto-h3-2"> Chương trình đếm số không sử dụng biến static trong java </h3>
                        <p> Trong ví dụ dưới đây, chúng ta tạo một biến instance có tên count mà được tăng lên trong constructor. Khi biến instance này lấy bộ nhớ tại thời điểm tạo đối tượng, mỗi đối tượng sẽ có bản sao của biến instance đó, nếu nó được tăng lên, nó sẽ không ảnh hướng đến các đối tượng khác. Vì thế mỗi đối tượng sẽ có giá trị 1 trong biến count. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_576756" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Counter1 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">count = </code><code class="java value">0</code><code class="java plain">; </code><code class="java comments">// sẽ lấy bộ nhớ khi instance được tạo ra</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter1() {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">count++;</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(count);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter1 c1 = </code><code class="java keyword">new</code> <code class="java plain">Counter1();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter1 c2 = </code><code class="java keyword">new</code> <code class="java plain">Counter1();</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter1 c3 = </code><code class="java keyword">new</code> <code class="java plain">Counter1();</code></div><div class="line number14 index13 alt1">&nbsp;</div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number16 index15 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>1
1
1
</pre>
                        </div>
                        <hr>
                        <h3 id="goto-h3-3"> Chương trình đếm số có sử dụng biến static trong java </h3>
                        <p> Như bạn đã thấy ở trên, biến static sẽ lấy bộ nhớ chỉ một lần, nếu bất cứ đối tượng nào thay đổi giá trị của biến static, nó sẽ vẫn ghi nhớ giá trị của nó. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_176589" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Counter2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">int</code> <code class="java plain">count = </code><code class="java value">0</code><code class="java plain">; </code><code class="java comments">// sẽ lấy bộ nhớ chỉ một lần</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter2() {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">count++;</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(count);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter2 c1 = </code><code class="java keyword">new</code> <code class="java plain">Counter2();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter2 c2 = </code><code class="java keyword">new</code> <code class="java plain">Counter2();</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Counter2 c3 = </code><code class="java keyword">new</code> <code class="java plain">Counter2();</code></div><div class="line number14 index13 alt1">&nbsp;</div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number16 index15 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>1
2
3
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
                        <h2 id="goto-h2-2"> 2. Phương thức static trong Java </h2>
                        <p> Nếu bạn áp dụng từ khóa static với bất cứ phương thức nào, thì phương thức đó được gọi là phương thức static. </p>
                        <ol>
                            <li> Một phương thức static thuộc lớp chứ không phải đối tượng của lớp. </li>
                            <li> Một phương thức static gọi mà không cần tạo một instance của một lớp. </li>
                            <li> Phương thức static có thể truy cập biến static và có thể thay đổi giá trị của nó. </li>
                        </ol>

                        <p> Ví dụ về phương thức static trong Java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_566344" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div><div class="line number28 index27 alt1">28</div><div class="line number29 index28 alt2">29</div><div class="line number30 index29 alt1">30</div><div class="line number31 index30 alt2">31</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Student9 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">rollno;</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String name;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java plain">String college = </code><code class="java string">"Bưu Chính Viễn Thông"</code><code class="java plain">;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">change() {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// Thay đổi thuộc tính static (thuộc tính chung của tất cả các đối tượng)</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">college = </code><code class="java string">"Đại Học Công Nghệ"</code><code class="java plain">;</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student9(</code><code class="java keyword">int</code> <code class="java plain">r, String n) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">rollno = r;</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">name = n;</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2">&nbsp;</div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">display() {</code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(rollno + </code><code class="java string">" - "</code> <code class="java plain">+ name + </code><code class="java string">" - "</code> <code class="java plain">+ college);</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number19 index18 alt2">&nbsp;</div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student9.change();</code></div><div class="line number22 index21 alt1">&nbsp;</div><div class="line number23 index22 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student9 s1 = </code><code class="java keyword">new</code> <code class="java plain">Student9(</code><code class="java value">111</code><code class="java plain">, </code><code class="java string">"Thông"</code><code class="java plain">);</code></div><div class="line number24 index23 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student9 s2 = </code><code class="java keyword">new</code> <code class="java plain">Student9(</code><code class="java value">222</code><code class="java plain">, </code><code class="java string">"Minh"</code><code class="java plain">);</code></div><div class="line number25 index24 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Student9 s3 = </code><code class="java keyword">new</code> <code class="java plain">Student9(</code><code class="java value">333</code><code class="java plain">, </code><code class="java string">"Anh"</code><code class="java plain">);</code></div><div class="line number26 index25 alt1">&nbsp;</div><div class="line number27 index26 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s1.display();</code></div><div class="line number28 index27 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s2.display();</code></div><div class="line number29 index28 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">s3.display();</code></div><div class="line number30 index29 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number31 index30 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>111 - Thông - Đại Học Công Nghệ
222 - Minh - Đại Học Công Nghệ
333 - Anh - Đại Học Công Nghệ
</pre>
                        </div>
                        <hr>
                        <h3 id="goto-h3-4"> Sự hạn chế của phương thức static </h3>
                        <p> Có hai hạn chế chính đối với phương thức static. Đó là: </p>
                        <ol>
                            <li> Phương thức static không thể sử dụng biến non-static hoặc gọi trực tiếp phương thức non-static. </li>
                            <li> Từ khóa this và super không thể được sử dụng trong ngữ cảnh static. </li>
                        </ol>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_958847" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">a = </code><code class="java value">40</code><code class="java plain">;</code><code class="java comments">// non static</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(a);</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number7 index6 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Compile Time Error
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-3"> 3. Khối static trong Java </h2>
                        <ol>
                            <li> Được sử dụng để khởi tạo thành viên dữ liệu static. </li>
                            <li> Nó được thực thi trước phương thức main tại lúc tải lớp. </li>
                        </ol>
                        <p> Ví dụ về khối static trong Java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_113335" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java plain">{</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Khối static: hello !"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Main: hello !"</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Khối static: hello !
Main: hello !
</pre>
                        </div>
                        <hr>

                        <p> <strong>Câu hỏi:</strong> Tại sao phương thức main trong Java là static? </p>
                        <p> Bởi vì không cần thiết phải tạo đối tượng để gọi phương thức static. Nếu nó là phương thức non-static, JVM đầu tiên tạo đối tượng và sau đó gọi phương thức main() mà có thể gây ra vấn đề về cấp phát bộ nhớ bộ nhớ phụ. </p>
                        <hr>

                        <p> <strong>Câu hỏi:</strong> Chúng ta có thể thực thi một chương trình mà không có phương thức main()? </p>
                        <p> Có, một trong các cách đó là khối static trong phiên bản trước của JDK. Không phải là JDK 1.7 </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_495870" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A3 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java plain">{</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"static block is invoked"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.exit(</code><code class="java value">0</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: (TH &lt; jdk7) </p>
                        <div class="codeblock3">
<pre>static block is invoked
</pre>
                        </div>
                        <p> Kết quả: (TH &gt;= jdk7) </p>
                        <div class="codeblock3">
<pre>Error: Main method not found in class A3, please define the main method as:
public static void main(String[] args)
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Từ khóa final trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Access Modifier trong Java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

        </div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
