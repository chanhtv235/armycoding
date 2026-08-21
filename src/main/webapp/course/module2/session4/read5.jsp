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
                    <h1 class="entry-title">Package trong java
                    </h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Lớp và đối tượng trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Constructor trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Một <strong>package (gói) trong java</strong> là một nhóm các kiểu tương tự của các lớp, giao diện và các package con .
                        </p><p> <strong>Package trong java</strong> có thể được phân loại theo hai hình thức, package được dựng sẵn và package do người dùng định nghĩa. </p>
                        <p> Có rất nhiều package được dựng sẵn như java, lang, AWT, javax, swing, net, io, util, sql, ... </p>
                        <p> Trong bài này, <strong>chúng ta sẽ học</strong>: </p>
                        <ul>
                            <li> Chi tiết về việc tạo và sử dụng các package người dùng định nghĩa. </li>
                            <li> Ví dụ cách tổ chức package chuyên nghiệp trong java. </li>
                        </ul>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Lợi thế của việc sử dụng package trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ về java package</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Biên dịch java package</a></li><li><a href="#goto-h3-2">Run java package</a></li></ul>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Truy cập package từ package khác</a>
                                    <ul>
                                        <li><a href="#goto-h3-3">1. Sử dụng packagename.*</a></li><li><a href="#goto-h3-4">2. Sử dụng packagename.classname</a></li><li><a href="#goto-h3-5">3. Sử dụng tên đầy đủ</a></li></ul>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Package con trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-6">Ví dụ về Subpackage</a></li></ul>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Ví dụ cách tổ chức package chuyên nghiệp trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Lợi thế của việc sử dụng package trong java </h2>
                        <ol>
                            <li> Package được sử dụng để phân loại lớp và interface giúp dễ dàng bảo trì. </li>
                            <li> Package cung cấp bảo vể truy cập </li>
                            <li> Package khắc phục được việc đặt trùng tên. </li>
                        </ol>
                        <img src="https://viettuts.vn/images/java/package-trong-java-1.jpg" alt="Package trong java" title="Package trong java">
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Ví dụ về java package </h2>
                        <p> Từ khóa <strong>package </strong>được sử dụng để tạo một package trong java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_962395" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">//Save file Simple.java</code></div><div class="line number2 index1 alt1"><code class="java keyword">package</code> <code class="java plain">mypack;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Simple {&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Learn java package"</code><code class="java plain">);</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number7 index6 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <h3 id="goto-h3-1"> Biên dịch java package </h3>
                        <p> Nếu bạn không sử dụng IDE, bạn cần thực hiện theo cú pháp dưới đây: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_517448" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">javac -d directory javafilename&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_97782" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">javac -d . Simple.java&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Lệnh <strong>-d</strong> được sử dụng để xách định nơi lưu trữ file .class sau khi biên dịch. Bạn có thể sử dụng bất kỳ tên thư mục nào như /home (Trong Linux OS), D:/temp (Trong Window OS). Nếu bạn muốn giữ các package này trong thư mục hiện tại ban sử dụng dấu chấm (.). </p>
                        <hr>

                        <h3 id="goto-h3-2"> Run java package </h3>
                        <p> Để run java package, bạn cần phải sử dụng tên đầy đủ. Ví dụ mypack.Simple. </p>
                        <p> <strong>Compile:</strong> javac -d . Simple.java </p>
                        <p> <strong>Run:</strong> java mypack.Simple </p>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Learn java package
</pre>
                        </div>
                        <p> Dấu chấm (.) biển diễn thư mục hiện tại. </p>
                        <hr>

                        <h2 id="goto-h2-3"> Truy cập package từ package khác </h2>
                        <p> Có 3 cách để truy cập package từ package bên ngoài: </p>
                        <ul>
                            <li> Khai báo import package.*; </li>
                            <li> Khai báo import package.classname; </li>
                            <li> Sử dụng tên đầy đủ. </li>
                        </ul>
                        <hr>

                        <h3 id="goto-h3-3"> 1. Sử dụng packagename.* </h3>
                        <p> Nếu bạn sử dụng packagename.*. Thì tất cả các lớp và các interface của các gói này sẽ có thể truy cập, nhưng gói con của gói này thì không được truy cập. </p>
                        <p> Từ khóa import được sử dụng để truy cập các lớp và interface của gói khác từ gói hiện tại. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_638170" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">pack;</code></div><div class="line number2 index1 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="codeblock">
                            <div><div id="highlighter_675425" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">mypack;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">import</code> <code class="java plain">pack.*;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">class</code> <code class="java plain">B {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A obj = </code><code class="java keyword">new</code> <code class="java plain">A();</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg();</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Hello
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-4"> 2. Sử dụng packagename.classname </h3>
                        <p> Nếu bạn khai báo import package.classname thì chỉ được truy cập tới lớp đã được khai báo của package này. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_155369" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">pack;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java plain">} </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <div class="codeblock">
                            <div><div id="highlighter_10449" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">mypack;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">import</code> <code class="java plain">pack.A;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code>&nbsp;</div><div class="line number4 index3 alt1"><code class="java keyword">class</code> <code class="java plain">B {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A obj = </code><code class="java keyword">new</code> <code class="java plain">A();</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg();</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Hello
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-5"> 3. Sử dụng tên đầy đủ </h3>
                        <p> Nếu bạn sử dụng tên đầy đủ thì chỉ được truy cập tới lớp đã được khai báo của package này. Bạn không cần phải sử dụng đến từ khóa import. Nhưng bạn cần phải sử dụng tên đầy đủ mỗi khi bạn truy cập vào các lớp hoặc interface. </p>
                        <p> Cách này thường được sử dụng khi 2 package có tên lớp giống nhau. Ví dụ, 2 package java.util và java.sql chứa lớp có tên giống nhau là lớp Date</p>

                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_436137" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">pack;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">A {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">msg() {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello"</code><code class="java plain">);</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number6 index5 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="codeblock">
                            <div><div id="highlighter_915510" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">mypack;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">class</code> <code class="java plain">B{&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]){&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">pack.A obj = </code><code class="java keyword">new</code> <code class="java plain">pack.A(); </code><code class="java comments">//Sử dụng tên đầy đủ</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">obj.msg();&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Hello
</pre>
                        </div>

                        <div class="note">
                            <strong>Note</strong>:
                            Nếu bạn import một package thì package con của package đó không được import. <br>
                            Thứ tự của chương trình phải là package-&gt;import-&gt;class.
                        </div>
                        <img src="https://viettuts.vn/images/java/thu-tu-cua-package.jpg" alt="thứ tự của package trong java" title="thứ tự của package trong java">
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Package con trong java </h2>
                        <p> Package bên trong một package khác được gọi là <strong>subpackage</strong> hay package con trong java. </p>
                        <p> Ví dụ, Sun Microsystem đã định nghĩa một gói có tên <b>java</b> chứa nhiều lớp như System, String, Reader, Writer, Socket, ... Các lớp này đại diện cho một nhóm cụ thể ví dụ như các lớp Reader và Writer cho các hoạt động Input/Output, Socket và ServerSocket các lớp xử lý mạng, ... Vì vậy, Sun đã phân loại lại gói java thành các gói phụ như lang, net, io, ... Và đặt các lớp liên quan đến Input/Output trong gói io, các lớp Server và ServerSocket trong các gói net. </p>
                        <div class="note"> Tiêu chuẩn để định nghĩa tên package trong java là <b>domain.company.package</b> ví dụ như: vn.viettuts.action hoặc org.sssit.dao. </div>
                        <hr>

                        <h3 id="goto-h3-6"> Ví dụ về Subpackage </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_714207" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.core;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Simple {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Hello subpackage"</code><code class="java plain">);</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number7 index6 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> <strong>Compile</strong>: javac -d . Simple.java </p>
                        <p> <strong>Run</strong>: java vn.viettuts.core.Simple </p>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Hello subpackage
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-5"> Ví dụ cách tổ chức package chuyên nghiệp trong java </h2>
                        <p> Các ví dụ ở trên cung cấp cho bạn cách để compile và run một lớp bên trong package do người dụng định nghĩa một cách thủ công. Khi đi làm về java trong môi trường thực tế, bạn sẽ phải học và sử dụng các IDE như eclipse, netbean, ... Những IDE này cung cấp cho bạn cách tạo và biên dịch cả một dự án đơn giản hơn rất nhiều. Khi đó bạn không cần phải nhớ các lệnh compile và run như ở trên. </p>
                        <p> Dưới dây là ví dụ cách tổ chức package chuyên nghiệp cho một dự án java web trên eclipse: </p>
                        <img src="https://viettuts.vn/images/java/vi-du-cach-to-chuc-package-chuyen-nghiep-trong-java.png" alt="Ví dụ cách tổ chức package chuyên nghiệp trong java" title="Ví dụ cách tổ chức package chuyên nghiệp trong java">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Lớp và đối tượng trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Constructor trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
        </div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
