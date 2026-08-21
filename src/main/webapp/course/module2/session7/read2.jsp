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
                    <h1 class="entry-title">Interface trong java
                    </h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Lớp abstract trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Abstract class và Interface <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Một <strong>Interface trong Java</strong> là một bản thiết kế của một lớp. Nó chỉ có các phương thức trừu tượng. Interface là một kỹ thuật để thu được tính trừu tượng hoàn toàn và đa kế thừa trong Java. Interface trong Java cũng biễu diễn mối quan hệ IS-A. Nó không thể được khởi tạo giống như lớp trừu tượng. </p>
                        <div class="note"> Java Compiler thêm từ khóa public và abstract trước phương thức của interface và các từ khóa public, static và final trước các thành viên dữ liệu. </div>
                        <p> Nói cách khác, các trường của Interface là public, static và final theo mặc định và các phương thức là public và abstract.</p>
                        <p>Một Interface trong Java là một tập hợp các phương thức trừu tượng (abstract). Một class triển khai một interface, do đó kế thừa các phương thức abstract của interface.</p>
                        <p>Một interface không phải là một lớp. Viết một interface giống như viết một lớp, nhưng chúng có 2 định nghĩa khác nhau. Một lớp mô tả các thuộc tính và hành vi của một đối tượng. Một interface chứa các hành vi mà một class triển khai.</p>
                        <p>Trừ khi một lớp triển khai interface là lớp trừu tượng abstract, còn lại tất cả các phương thức của interface cần được định nghĩa trong class. </p>
                        <p> Một interface tương tự với một class bởi những điểm sau đây: </p>
                        <ul>
                            <li>Một interface được viết trong một file với định dạng .java, với tên của interface giống tên của file.</li>
                            <li>Bytecode của interface được lưu trong file có định dạng .class.</li>
                            <li>Khai báo interface trong một package, những file bytecode tương ứng cũng có cấu trúc thư mục có cùng tên package.</li>
                        </ul>

                        <p> Một interface khác với một class ở một số điểm sau đây: </p>
                        <ul>
                            <li>Bạn không thể khởi tạo một interface.</li>
                            <li>Một interface không chứa bất cứ hàm Contructor nào.</li>
                            <li>Tất cả các phương thức của interface đều là abstract.</li>
                            <li>Một interface không thể chứa một trường nào trừ các trường vừa static và final.</li>
                            <li>Một interface không thể kế thừa từ lớp, nó được triển khai bởi một lớp.</li>
                            <li>Một interface có thể kế thừa từ nhiều interface khác.</li>
                        </ul>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Ví dụ đơn giản về Interface trong Java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Đa kế thừa trong Java bởi Interface</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Kế thừa Interface trong Java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Marker (hay Tagging) Interface trong Java là gì?</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Interface lồng nhau trong Java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Ví dụ đơn giản về Interface trong Java </h2>
                        <p> Trong ví dụ này, Printable Interface chỉ có một phương thức, trình triển khai của nó được cung cấp bởi lớp A. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_968825" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">interface</code> <code class="java plain">printable {&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">void</code> <code class="java plain">print();&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number5 index4 alt2"><code class="java keyword">class</code> <code class="java plain">A6 </code><code class="java keyword">implements</code> <code class="java plain">printable {&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">print() {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]){&nbsp; </code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A6 obj = </code><code class="java keyword">new</code> <code class="java plain">A6();&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.print();&nbsp; </code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1"><code class="java plain">}&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Khi ghi đè các phương thức được định nghĩa trong interface, có một số qui tắc sau: </p>
                        <ul>
                            <li> Các checked exception không nên được khai báo trong phương thức implements, thay vào đó nó nên được khai báo trong phương thức interface hoặc các lớp phụ được khai báo bởi phương thức interface.</li>
                            <li> Signature (ký số) của phương thức interface và kiểu trả về nên được duy trì khi ghi đè phương thức (overriding method).</li>
                            <li> Một lớp triển khai chính nó có thể là abstract và vì thế các phương thức interface không cần được triển khai.</li>
                        </ul>

                        <p> Khi triển khai interface, có vài quy tắc sau: </p>
                        <li> Một lớp có thể triển khai một hoặc nhiều interface tại một thời điểm.</li>
                        <li> Một lớp chỉ có thể kế thừa một lớp khác, nhưng được triển khai nhiều interface.</li>
                        <li> Một interface có thể kế thừa từ một interface khác, tương tự cách một lớp có thể kế thừa lớp khác.</li>

                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Đa kế thừa trong Java bởi Interface </h2>
                        <p> Nếu một lớp triển khai đa kế thừa, hoặc một Interface kế thừa từ nhiều Interface thì đó là đa kế thừa. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_574970" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">interface</code> <code class="java plain">Printable {&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">print();&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number5 index4 alt2"><code class="java keyword">interface</code> <code class="java plain">Showable{&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">show();&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number9 index8 alt2"><code class="java keyword">class</code> <code class="java plain">A7 </code><code class="java keyword">implements</code> <code class="java plain">Printable,Showable {&nbsp; </code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">print() {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">show() {</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Welcome"</code><code class="java plain">);</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]){&nbsp; </code></div><div class="line number19 index18 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A7 obj = </code><code class="java keyword">new</code> <code class="java plain">A7();&nbsp; </code></div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.print();&nbsp; </code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.show();&nbsp; </code></div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number23 index22 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> <strong>Câu hỏi</strong>: Đa kế thừa không được hỗ trợ thông qua lớp trong Java nhưng là có thể bởi Interface, tại sao? </p>
                        <p> Như đa thảo luận trong chương về tính kế thừa, đa kế thừa không được hỗ trợ thông qua lớp. Nhưng nó được hỗ trợ bởi Interface bởi vì không có tính lưỡng nghĩa khi trình triển khai được cung cấp bởi lớp Implementation. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_149683" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">interface</code> <code class="java plain">Printable{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">print();&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java keyword">interface</code> <code class="java plain">Showable{&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">print();&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number8 index7 alt1"><code class="java keyword">class</code> <code class="java plain">TestTnterface1 </code><code class="java keyword">implements</code> <code class="java plain">Printable,Showable{&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">print() {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {&nbsp; </code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">TestTnterface1 obj = </code><code class="java keyword">new</code> <code class="java plain">TestTnterface1();&nbsp; </code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.print();&nbsp; </code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number17 index16 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Trong ví dụ trên, Printable và Showable interface có cùng các phương thức nhưng trình triển khai của nó được cung cấp bởi lớp TestInterface1, vì thế không có tính lưỡng nghĩa ở đây. </p>
                        <hr>

                        <h2 id="goto-h2-3"> Kế thừa Interface trong Java </h2>
                        <p> Một lớp triển khai Interface nhưng một Interface kế thừa từ Interface khác. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_769488" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">interface</code> <code class="java plain">Printable{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">print();&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java keyword">interface</code> <code class="java plain">Showable </code><code class="java keyword">extends</code> <code class="java plain">Printable{&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">show();&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java keyword">class</code> <code class="java plain">Testinterface2 </code><code class="java keyword">implements</code> <code class="java plain">Showable{&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">print() {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">show() {</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Welcome"</code><code class="java plain">);</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]){&nbsp; </code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Testinterface2 obj = </code><code class="java keyword">new</code> <code class="java plain">Testinterface2();&nbsp; </code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.print();&nbsp; </code></div><div class="line number19 index18 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.show();&nbsp; </code></div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number21 index20 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-4"> Marker (hay Tagging) Interface trong Java là gì? </h2>
                        <p> Đó là một Interface mà không có thành viên nào. Ví dụ: Serializable, Cloneable, Remote, … Chúng được sử dụng để cung cấp một số thông tin thiết yếu tới JVM để mà JVM có thể thực hiện một số hoạt động hữu ích. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_379677" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">interface</code> <code class="java plain">Serializable {&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Có hai mục đích thiết kế chủ yếu của tagging interface là: </p>
                        <ul>
                            <li> Tạo một cha chung: Như với EventListener interface, mà được kế thừa bởi hàng tá các interface khác trong Java API, bạn có thể sử dụng một tagging interface để tạo một cha chung cho một nhóm interface. Ví dụ, khi một interface kế thừa EventListener, thì JVM biết rằng interface cụ thể này đang được sử dụng trong một event. </li>
                            <li> Thêm một kiểu dữ liệu tới một class: Đó là khái niệm tagging. Một class mà triển khai một tagging interface không cần định nghĩa bất kỳ phương thức nào, nhưng class trở thành một kiểu interface thông qua tính đa hình (polymorphism).</li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-5"> Interface lồng nhau trong Java </h2>
                        <div class="note">
                            Một Interface có thể có Interface khác, đó là lồng Interface. Chúng ta sẽ tìm hiểu chi tiết trong chương về Lồng các lớp trong Java. Ví dụ:
                        </div>
                        <div class="codeblock">
                            <div><div id="highlighter_508438" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">interface</code> <code class="java plain">printable{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">print();&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">interface</code> <code class="java plain">MessagePrintable{&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">msg();&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Lớp abstract trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Abstract class và Interface <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
