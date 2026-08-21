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
                <a href="${pageContext.request.contextPath}/course/module2/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Kế thừa trong Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Ghi đè phương thức trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Nạp chồng phương thức trong java
                        </a></div>
                        <div class="nxt-btn"><a href="#"> Overloading vs overriding trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Ghi đè phương thức (method overriding)</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Sử dụng ghi đè phương thức trong java</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các nguyên tắc ghi đè phương thức trong java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Ví dụ ghi đè phương thức trong java</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Ví dụ thực tế về ghi đè phương thức trong java</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Câu hỏi về ghi đè phương thức trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Ghi đè phương thức (method overriding) </h2>
                        <p> <strong>Ghi đè phương thức</strong> trong java xảy ra nếu lớp con có phương thức giống lớp cha. </p>
                        <p> Nói cách khác, nếu lớp con cung cấp sự cài đặt cụ thể cho phương thức đã được cung cấp bởi một lớp cha của nó được gọi là ghi đè phương thức (method overriding) trong java. </p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Sử dụng ghi đè phương thức trong java </h2>
                        <ul>
                            <li> Ghi đè phương thức được sử dụng để cung cấp cài đặt đặc biệt của một phương thức mà đã được định nghĩa ở lớp cha. </li>
                            <li> Ghi đè phương thức được sử dụng cho đa hình runtime. </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-3"> Các nguyên tắc ghi đè phương thức trong java </h2>
                        <ol>
                            <li> Phương thức phải có tên giống với lớp cha. </li>
                            <li> Phương thức phải có tham số giống với lớp cha. </li>
                            <li> Lớp con và lớp cha có mối quan hệ kế thừa. </li>
                        </ol>
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Ví dụ ghi đè phương thức trong java </h2>
                        <p> Trong ví dụ này, chúng ta định nghĩa phương thức run() trong lớp con giống như đã được định nghĩa trong lớp cha, nhưng được cài đặt rõ ràng trong lớp con. Tên và tham số của phương thức là giống nhau, 2 lớp cha và con có quan hệ kế thừa. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_362749" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Vehicle {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">run() {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Vehicle is running"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2"><code class="java plain">}</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Bike2 </code><code class="java keyword">extends</code> <code class="java plain">Vehicle {</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">run() {</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Bike is running safely"</code><code class="java plain">);</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2">&nbsp;</div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Bike2 obj = </code><code class="java keyword">new</code> <code class="java plain">Bike2();</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.run();</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number16 index15 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Bike is running safely
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-5"> Ví dụ thực tế về ghi đè phương thức trong java </h2>
                        <p> Giả sử Bank là một lớp cung cấp chức năng xem thông tin tỷ lệ lãi suất. Nhưng mỗi ngân hàng có một lãi xuất khác nhau, ví dụ các ngân hàng SBI, ICICI và AXIS có tỷ lệ lãi suất lần lượt là 8%, 7% và 9%. </p>
                        <img src="https://viettuts.vn/images/java/ghi-de-phuong-thuc-trong-java1.png" alt="ghi đè phương thức trong java" title="ghi đè phương thức trong java">
                        <p> Dưới đây là cài đặt cho ví dụ trên: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_763998" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div><div class="line number28 index27 alt1">28</div><div class="line number29 index28 alt2">29</div><div class="line number30 index29 alt1">30</div><div class="line number31 index30 alt2">31</div><div class="line number32 index31 alt1">32</div><div class="line number33 index32 alt2">33</div><div class="line number34 index33 alt1">34</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Bank {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">getRateOfInterest() {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">return</code> <code class="java value">0</code><code class="java plain">;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2"><code class="java plain">}</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java keyword">class</code> <code class="java plain">SBI </code><code class="java keyword">extends</code> <code class="java plain">Bank {</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">getRateOfInterest() {</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">return</code> <code class="java value">8</code><code class="java plain">;</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2"><code class="java plain">}</code></div><div class="line number12 index11 alt1">&nbsp;</div><div class="line number13 index12 alt2"><code class="java keyword">class</code> <code class="java plain">ICICI </code><code class="java keyword">extends</code> <code class="java plain">Bank {</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">getRateOfInterest() {</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">return</code> <code class="java value">7</code><code class="java plain">;</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number17 index16 alt2"><code class="java plain">}</code></div><div class="line number18 index17 alt1">&nbsp;</div><div class="line number19 index18 alt2"><code class="java keyword">class</code> <code class="java plain">AXIS </code><code class="java keyword">extends</code> <code class="java plain">Bank {</code></div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">getRateOfInterest() {</code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">return</code> <code class="java value">9</code><code class="java plain">;</code></div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number23 index22 alt2"><code class="java plain">}</code></div><div class="line number24 index23 alt1">&nbsp;</div><div class="line number25 index24 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Test2 {</code></div><div class="line number26 index25 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number27 index26 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">SBI s = </code><code class="java keyword">new</code> <code class="java plain">SBI();</code></div><div class="line number28 index27 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">ICICI i = </code><code class="java keyword">new</code> <code class="java plain">ICICI();</code></div><div class="line number29 index28 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">AXIS a = </code><code class="java keyword">new</code> <code class="java plain">AXIS();</code></div><div class="line number30 index29 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"SBI Rate of Interest: "</code> <code class="java plain">+ s.getRateOfInterest());</code></div><div class="line number31 index30 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"ICICI Rate of Interest: "</code> <code class="java plain">+ i.getRateOfInterest());</code></div><div class="line number32 index31 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"AXIS Rate of Interest: "</code> <code class="java plain">+ a.getRateOfInterest());</code></div><div class="line number33 index32 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number34 index33 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>SBI Rate of Interest: 8
ICICI Rate of Interest: 7
AXIS Rate of Interest: 9
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-6"> Câu hỏi về ghi đè phương thức trong java </h2>
                        <h5> Có ghi đè được phương thức static không? </h5>
                        <p> Không, phương thức static không thể ghi đè được, bằng chứng là đa hình runtime, vấn đề này sẽ được học trong bài sau. </p>

                        <h5> Tại sao không ghi đè được phương thức static? </h5>
                        <p> Vì phương thức static được ràng buộc với class còn phương thức instance được ràng buộc với đối tượng. Static thuộc về vùng nhớ class còn instance thuộc về vùng nhớ heap. </p>

                        <h5> Có ghi đè phương thức main được không? </h5>
                        <p> Không, vì main là phương thức static. </p>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Nạp chồng phương thức trong java
                        </a></div>
                        <div class="nxt-btn"><a href="#"> Overloading vs overriding trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
                    
        </div>
        </div>
    </div>
    </div>
</body>
</html>
