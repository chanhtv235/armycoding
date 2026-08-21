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
                <a href="${pageContext.request.contextPath}/course/module2/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Abstract class và Interface</a>
                <header class="entry-header">
                    <h1 class="entry-title">Lớp abstract trong java</h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Access Modifier trong Java </a></div>
                        <div class="nxt-btn"><a href="#"> Interface trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Một lớp được khai báo với từ khóa abstract là lớp abstract trong Java. Lớp abstract có nghĩa là lớp trừu tượng, nó có thể có các phương thức abstract hoặc non-abtract. </p>
                        <p> Trước khi tìm hiểu về lớp trừu tượng trong Java, bạn cần hiểu tính trừu tượng trong Java là gì. </p>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Tính trừu tượng trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Các cách để đạt được sự trừu tượng hóa</a></li></ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Phương thức trừu tượng trong Java</a>
                                    <ul>
                                        <li><a href="#goto-h3-2">Ví dụ về lớp trừu tượng và phương thức trừu tượng trong Java</a></li></ul>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Kế thừa lớp Abstract trong Java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Tính trừu tượng trong java </h2>
                        <p> Tính trừu tượng là một tiến trình ẩn các cài đặt chi tiết và chỉ hiển thị tính năng tới người dùng. </p>
                        <p> Nói cách khác, nó chỉ hiển thị các thứ quan trọng tới người dùng và ẩn các chi tiết nội tại, ví dụ: để gửi tin nhắn, người dùng chỉ cần soạn text và gửi tin. Bạn không biết tiến trình xử lý nội tại về phân phối tin nhắn. </p>
                        <p> Tính trừu tượng giúp bạn trọng tâm hơn vào đối tượng thay vì quan tâm đến cách nó thực hiện. </p>

                        <h3 id="goto-h3-1"> Các cách để đạt được sự trừu tượng hóa </h3>
                        <p> Có 2 cách để đạt được sự trừu tượng hóa trong java </p>
                        <ol>
                            <li>Sử dụng lớp abstract</li>
                            <li>Sử dụng interface</li>
                        </ol>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Phương thức trừu tượng trong Java </h2>
                        <p> Một phương thức được khai báo là abstract và không có trình triển khai thì đó là phương thức trừu tượng. </p>
                        <p>Nếu bạn muốn một lớp chứa một phương thức cụ thể nhưng bạn muốn triển khai thực sự phương thức đó để được quyết định bởi các lớp con, thì bạn có thể khai báo phương thức đó trong lớp cha ở dạng abstract.</p>
                        <p> Từ khóa abstract được sử dụng để khai báo một phương thức dạng abstract. Một phương thức abstract không có thân phương thức. </p>
                        <p> Phương thức abstract sẽ không có định nghĩa, được theo sau bởi dấu chấm phảy, không có dấu ngoặc nhọn theo sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_356735" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// Khai bao phuong thuc voi tu khoa abstract va khong co than phuong thuc</code></div><div class="line number2 index1 alt1"><code class="java keyword">abstract</code> <code class="java keyword">void</code> <code class="java plain">printStatus();</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h3 id="goto-h3-2"> Ví dụ về lớp trừu tượng và phương thức trừu tượng trong Java </h3>
                        <p> Trong ví dụ này, Bike là lớp trừu tượng chỉ chứa một phương thức trừu tượng là run. Trình triển khai của nó được cung cấp bởi lớp Honda. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_382333" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">abstract</code> <code class="java keyword">class</code> <code class="java plain">Bike{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java keyword">abstract</code> <code class="java keyword">void</code> <code class="java plain">run();&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java keyword">class</code> <code class="java plain">Honda4 </code><code class="java keyword">extends</code> <code class="java plain">Bike{&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">run() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"running safely.."</code><code class="java plain">);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {&nbsp; </code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Bike obj = </code><code class="java keyword">new</code> <code class="java plain">Honda4();&nbsp; </code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.run();&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number13 index12 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>running safely..
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-3"> Kế thừa lớp Abstract trong Java </h2>
                        <p> Trong ví dụ này, Shape là lớp trừu tượng, trình triển khai của nó được cung cấp bởi lớp Rectangle và lớp Circle. Hai lớp này kế thừa lớp trừu tượng Shape. </p>
                        <p> TestAbstraction1.java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_752223" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// lop truu tuong Shape</code></div><div class="line number2 index1 alt1"><code class="java keyword">abstract</code> <code class="java keyword">class</code> <code class="java plain">Shape{&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">abstract</code> <code class="java keyword">void</code> <code class="java plain">draw();&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java comments">//Trong tinh huong nay, trinh trien khai duoc cung cap boi ai do, </code></div><div class="line number6 index5 alt1"><code class="java comments">// vi du: nguoi su dung cuoi cung nao do&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java keyword">class</code> <code class="java plain">Rectangle </code><code class="java keyword">extends</code> <code class="java plain">Shape{&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java keyword">void</code> <code class="java plain">draw(){</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Ve hinh chu nhat"</code><code class="java plain">);</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number11 index10 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number13 index12 alt2"><code class="java keyword">class</code> <code class="java plain">Circle1 </code><code class="java keyword">extends</code> <code class="java plain">Shape{&nbsp; </code></div><div class="line number14 index13 alt1"><code class="java keyword">void</code> <code class="java plain">draw(){</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Ve hinh tron"</code><code class="java plain">);</code></div><div class="line number16 index15 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number17 index16 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number19 index18 alt2"><code class="java comments">//Trong tinh huong nay, phuong thuc duoc goi boi lap trinh vien hoac nguoi dung&nbsp; </code></div><div class="line number20 index19 alt1"><code class="java keyword">class</code> <code class="java plain">TestAbstraction1{&nbsp; </code></div><div class="line number21 index20 alt2"><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {&nbsp; </code></div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java comments">// Trong tinh huong nay, doi tuong duoc cung cap thong qua phuong thuc, </code></div><div class="line number23 index22 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java comments">// chang han nhu getShape()&nbsp; </code></div><div class="line number24 index23 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">Shape s=</code><code class="java keyword">new</code> <code class="java plain">Circle1();</code></div><div class="line number25 index24 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">s.draw();&nbsp; </code></div><div class="line number26 index25 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number27 index26 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Ve hinh tron
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Access Modifier trong Java </a></div>
                        <div class="nxt-btn"><a href="#"> Interface trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
