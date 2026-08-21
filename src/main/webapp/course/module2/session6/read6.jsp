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
                    <h1 class="entry-title">Nạp chồng phương thức trong java
                    </h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-ở-left" aria-hidden="true"></i> Tính kế thừa trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Ghi đè phương thức trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Nạp chồng phương thức (method overloading)</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Lợi ích của nạp chồng phương thức</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các cách nạp chồng phương thức</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">1. Nạp chồng phương thức: thay đổi số lượng các tham số</a></li></ul>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">2. Nạp chồng phương thức: thay đổi kiểu dữ liệu của các tham số</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Các câu hỏi về nạp chồng phương thức trong java</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Nạp chồng phương thức và sự thay đổi kiểu giá trị</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Nạp chồng phương thức (method overloading) </h2>
                        <p> <strong>Nạp chồng phương thức</strong> trong java xảy ra nếu một lớp có nhiều phương thức có tên giống nhau nhưng khác nhau về kiểu dữ liệu hoặc số lượng các tham số. </p>
                        <p> Giả sử bạn phải thực hiện tính tổng của các số đã cho với bất kỳ số lượng các đối số, nếu bạn viết phương thức a(int, int) cho 2 tham số, b(int, int, int) cho 3 tham số điều này có thể gây khó hiểu cho các lập trình viên khác về ý nghĩa của các phương thức đó vì chúng có tên khác nhau. </p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Lợi ích của nạp chồng phương thức </h2>
                        <p> Sử dụng nạp chồng phương thức giúp tăng khả năng đọc hiểu chương trình. </p>
                        <hr>

                        <h2 id="goto-h2-3"> Các cách nạp chồng phương thức </h2>
                        <p> Có 2 cách nạp chồng phương thức trong java </p>
                        <ul>
                            <li> Thay đổi số lượng các tham số </li>
                            <li> Thay đổi kiểu dữ liệu của các tham số </li>
                        </ul>
                        <div class="note"> Trong java, không thể nạp chồng phương thức bằng cách chỉ thay đổi kiểu trả về của phương thức. </div>
                        <hr>

                        <h3 id="goto-h3-1"> 1. Nạp chồng phương thức: thay đổi số lượng các tham số </h3>
                        <p> Trong ví dụ này, chúng ta cần tạo 2 phương thức, phương thức add() đầu tiên thực hiện việc tính tổng của 2 số, phương thức thứ hai thực hiện việc tính tổng của 3 số. Sử dụng phương thức static để gọi hàm thông qua tên class thay vì phải tạo thể hiên của lớp. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_527582" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Adder{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">int</code> <code class="java plain">add(</code><code class="java keyword">int</code> <code class="java plain">a,</code><code class="java keyword">int</code> <code class="java plain">b){</code><code class="java keyword">return</code> <code class="java plain">a+b;}&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">int</code> <code class="java plain">add(</code><code class="java keyword">int</code> <code class="java plain">a,</code><code class="java keyword">int</code> <code class="java plain">b,</code><code class="java keyword">int</code> <code class="java plain">c){</code><code class="java keyword">return</code> <code class="java plain">a+b+c;}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java keyword">class</code> <code class="java plain">TestOverloading1{&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args){&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(Adder.add(</code><code class="java value">11</code><code class="java plain">,</code><code class="java value">11</code><code class="java plain">));&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(Adder.add(</code><code class="java value">11</code><code class="java plain">,</code><code class="java value">11</code><code class="java plain">,</code><code class="java value">11</code><code class="java plain">));&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>22
33
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
                        <h2 id="goto-h2-4"> 2. Nạp chồng phương thức: thay đổi kiểu dữ liệu của các tham số </h2>
                        <p> Trong ví dụ này, chúng ta sẽ tạo ra 2 phương thức có kiểu dữ liệu khác nhau. Phương thức add() đầu tiên nhận 2 đổi số có kiểu giá trị là integer, phương thức thứ hai nhận 2 đổi số có kiểu giá trị là double. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_554319" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Adder{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">int</code> <code class="java plain">add(</code><code class="java keyword">int</code> <code class="java plain">a, </code><code class="java keyword">int</code> <code class="java plain">b){</code><code class="java keyword">return</code> <code class="java plain">a+b;}&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">double</code> <code class="java plain">add(</code><code class="java keyword">double</code> <code class="java plain">a, </code><code class="java keyword">double</code> <code class="java plain">b){</code><code class="java keyword">return</code> <code class="java plain">a+b;}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java keyword">class</code> <code class="java plain">TestOverloading2{&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args){&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(Adder.add(</code><code class="java value">11</code><code class="java plain">,</code><code class="java value">11</code><code class="java plain">));&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(Adder.add(</code><code class="java value">12.3</code><code class="java plain">,</code><code class="java value">12.6</code><code class="java plain">));&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>22
24.9
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-5"> Các câu hỏi về nạp chồng phương thức trong java </h2>
                        <h5> Câu hỏi 1: Tại sao không thể nạp chồng phương thức bằng cách chỉ thay đổi kiểu trả về của phương thức? </h5>
                        <p> Trong java, không thể nạp chồng phương thức bằng cách chỉ thay đổi kiểu trả về của phương thức bởi vì không biết phương thức nào sẽ được gọi. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_942606" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">class</code> <code class="java plain">Adder{&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">int</code> <code class="java plain">add(</code><code class="java keyword">int</code> <code class="java plain">a,</code><code class="java keyword">int</code> <code class="java plain">b){</code><code class="java keyword">return</code> <code class="java plain">a+b;}&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">double</code> <code class="java plain">add(</code><code class="java keyword">int</code> <code class="java plain">a,</code><code class="java keyword">int</code> <code class="java plain">b){</code><code class="java keyword">return</code> <code class="java plain">a+b;}&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java plain">}&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java keyword">class</code> <code class="java plain">TestOverloading3{&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args){&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(Adder.add(</code><code class="java value">11</code><code class="java plain">,</code><code class="java value">11</code><code class="java plain">));</code><code class="java comments">//ambiguity&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java plain">}&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Compile Time Error: method add(int,int) is already defined in class Adder
</pre>
                        </div>
                        <hr>

                        <h5> Câu hỏi 2: Có thể nạp chồng phương thức main() không? </h5>
                        <p> Có, bạn có thể nạp chồng n phương thức main. Nhưng JVM chỉ gọi phương thức main() có tham số truyền vào là một mảng String. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_972693" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestOverloading4 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"main with String[]"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"main with String"</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main() {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"main without args"</code><code class="java plain">);</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number13 index12 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>main with String[]
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-6"> Nạp chồng phương thức và sự thay đổi kiểu giá trị </h2>
                        <p> Kiểu dữ liệu của đối số truyền vào được thay đổi sang kiểu dữ liệu khác (tự động ép kiểu) nếu giá trị của đối số đó không phù hợp với kiểu dữ liệu của tham số đã được đinh nghĩa. Để hiểu khái niệm này hãy xem ảnh sau: </p>
                        <img src="https://viettuts.vn/images/java/nap-chong-trong-java-1.jpg" alt="nạp chồng phương thức trong java" title="nạp chồng phương thức trong java">
                        <p> Kiểu byte có thể được ép sang các kiểu short, int, long, float hoặc double. Kiểu dữ liệu short có thể được ép sang các kiểu int, long, float hoặc double. Kiểu dữ liệu char có thể được ép sang các kiểu int, long, float or double...</p>
                        <hr>

                        <p> Ví dụ 1: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_169220" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">OverloadingCalculation1 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">sum(</code><code class="java keyword">int</code> <code class="java plain">a, </code><code class="java keyword">long</code> <code class="java plain">b) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(a + b);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">sum(</code><code class="java keyword">int</code> <code class="java plain">a, </code><code class="java keyword">int</code> <code class="java plain">b, </code><code class="java keyword">int</code> <code class="java plain">c) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(a + b + c);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">OverloadingCalculation1 obj = </code><code class="java keyword">new</code> <code class="java plain">OverloadingCalculation1();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java comments">// kiểu integer tham số 2 sẽ được thay đổi thành kiểu long</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">obj.sum(</code><code class="java value">20</code><code class="java plain">, </code><code class="java value">20</code><code class="java plain">);&nbsp; </code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">obj.sum(</code><code class="java value">20</code><code class="java plain">, </code><code class="java value">20</code><code class="java plain">, </code><code class="java value">20</code><code class="java plain">);</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number16 index15 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>40
60
</pre>
                        </div>
                        <hr>

                        <p> Ví dụ 2: nếu không có kiểu đối số nào phù hợp, chuyển đổi kiểu sẽ không được thực hiện. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_846870" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">OverloadingCalculation2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">sum(</code><code class="java keyword">int</code> <code class="java plain">a, </code><code class="java keyword">int</code> <code class="java plain">b) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"int arg method invoked"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">sum(</code><code class="java keyword">long</code> <code class="java plain">a, </code><code class="java keyword">long</code> <code class="java plain">b) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"long arg method invoked"</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">OverloadingCalculation2 obj = </code><code class="java keyword">new</code> <code class="java plain">OverloadingCalculation2();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java comments">// phương thứ sum() có đối số int sẽ được gọi </code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">obj.sum(</code><code class="java value">20</code><code class="java plain">, </code><code class="java value">20</code><code class="java plain">); </code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>int arg method invoked
</pre>
                        </div>
                        <hr>

                        <p> Ví dụ 3: không có kiểu đối số nào phụ hợp trong phương thức và mỗi phương thức thay đổi số đối số tương tự nhau. Th này sẽ không xác định được phương thức nào được gọi. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_801288" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">OverloadingCalculation3 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">sum(</code><code class="java keyword">int</code> <code class="java plain">a, </code><code class="java keyword">long</code> <code class="java plain">b) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"a method invoked"</code><code class="java plain">);</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">void</code> <code class="java plain">sum(</code><code class="java keyword">long</code> <code class="java plain">a, </code><code class="java keyword">int</code> <code class="java plain">b) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"b method invoked"</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">OverloadingCalculation3 obj = </code><code class="java keyword">new</code> <code class="java plain">OverloadingCalculation3();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;</code><code class="java comments">// không xác định được phương thức nào được gọi</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;</code><code class="java plain">obj.sum(</code><code class="java value">20</code><code class="java plain">, </code><code class="java value">20</code><code class="java plain">);</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Compile Time Error
</pre>
                        </div>

                        <div class="note"> Một kiểu không được tự động ép sang kiểu bé hơn, ví dụ kiểu double không được ép sang bất kỳ kiểu nào khác. </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-ở-left" aria-hidden="true"></i> Tính kế thừa trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Ghi đè phương thức trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
                    
        </div>
        </div>
    </div>
    </div>
</body>
</html>
