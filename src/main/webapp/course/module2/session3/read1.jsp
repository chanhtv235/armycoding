<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Mảng và phương thức trong java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Mảng (Array) trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Interface trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Lớp Wrapper trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Mảng trong Java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Các kiểu của mảng trong java</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Tạo một mảng trong Java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Truy cập các phần tử của một mảng trong Java</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Thay đổi một phần tử mảng trong Java</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Độ dài mảng trong Java</a>
                                </li>
                                <li class="list-goto-7">
                                    <a href="#goto-h2-7">Duyệt các phần tử của mảng trong Java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Sử dụng vòng lặp for</a></li><li><a href="#goto-h3-2">Sử dụng foreach</a></li><li><a href="#goto-h3-3">So sánh for với foreach</a></li></ul>
                                </li>
                                <li class="list-goto-8">
                                    <a href="#goto-h2-8">Sắp xếp mảng</a>
                                </li>
                                <li class="list-goto-9">
                                    <a href="#goto-h2-9">Các cách khác để tạo một mảng trong Java</a>
                                </li>
                                <li class="list-goto-10">
                                    <a href="#goto-h2-10">Truyền mảng vào phương thức trong java</a>
                                </li>
                                <li class="list-goto-11">
                                    <a href="#goto-h2-11">Sao chép một mảng trong java</a>
                                </li>
                                <li class="list-goto-12">
                                    <a href="#goto-h2-12">Mảng hai chiều và đa chiều trong Java</a>
                                    <ul>
                                        <li><a href="#goto-h3-4">Khai báo mảng đa chiều trong java</a></li><li><a href="#goto-h3-5">Ví dụ về khởi tạo và gán giá trị cho mảng đa chiều trong java</a></li><li><a href="#goto-h3-6">Ví dụ khai báo và khởi tạo mảng đa chiều trong java</a></li><li><a href="#goto-h3-7">Ví dụ cộng 2 ma trận (mảng đa chiều) trong Java</a></li></ul>
                                </li>
                                <li class="list-goto-13">
                                    <a href="#goto-h2-13">Lợi thế và hạn chế của mảng trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-8">Lợi thế</a></li><li><a href="#goto-h3-9">Hạn chế</a></li></ul>
                                </li>
                                <li class="list-goto-14">
                                    <a href="#goto-h2-14">Giới thiệu Lớp Array trong Java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Mảng trong Java </h2>
                        <p> Thông thường, mảng (array) là một tập hợp các phần tử có cùng kiểu được lưu trữ gần nhau trong bộ nhớ. </p>
                        <p> Mảng trong java là một đối tượng chứa các phần tử có kiểu dữ liệu giống nhau. Mảng là một cấu trúc dữ liệu nơi lưu trữ các phần tử giống nhau. Với mảng trong java chúng ta chỉ có thể lưu trữ một tập các phần tử có số lượng phần tử cố định. </p>
                        <p> Mảng trong java lưu các phần tử theo chỉ số, chỉ số của phần tử đầu tiên là 0. </p>
                        <img src="https://viettuts.vn/images/java/array-trong-java.jpg" alt="Mảng trong java" title="Mảng trong java">
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Các kiểu của mảng trong java </h2>
                        <p> Có hai kiểu mảng trong java </p>
                        <ul>
                            <li> Mảng một chiều </li>
                            <li> Mảng đa chiều </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-3"> Tạo một mảng trong Java </h2>
                        <p> Để khai báo một mảng, khai báo loại biến với dấu ngoặc vuông []: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_477214" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">dataType[] arr;</code></div><div class="line number2 index1 alt1"><code class="java plain">dataType []arr; </code></div><div class="line number3 index2 alt2"><code class="java plain">dataType arr[];&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ví dụ chúng ta đã khai báo một biến chứa một chuỗi các chuỗi. </p>
                        <p> Để chèn giá trị vào nó, chúng ta có thể sử dụng một mảng bằng chữ - đặt các giá trị trong danh sách được phân tách bằng dấu phẩy, bên trong dấu ngoặc nhọn: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_855688" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Để tạo một mảng các số nguyên, bạn có thể viết: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_536497" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">int</code><code class="java plain">[] myNum = { </code><code class="java value">10</code><code class="java plain">, </code><code class="java value">20</code><code class="java plain">, </code><code class="java value">30</code><code class="java plain">, </code><code class="java value">40</code> <code class="java plain">};</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-4"> Truy cập các phần tử của một mảng trong Java</h2>
                        <p> Bạn truy cập một phần tử mảng bằng cách sử dụng số chỉ mục (index). </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_473869" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TruyCapArray1 {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(cars[</code><code class="java value">0</code><code class="java plain">]);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Honda
</pre>
                        </div>
                        <div class="note"> Lưu ý: Chỉ mục của mảng bắt đầu bằng 0: [0] là phần tử đầu tiên. [1] là phần tử thứ hai, v.v. </div>
                        <hr>

                        <h2 id="goto-h2-5"> Thay đổi một phần tử mảng trong Java </h2>
                        <p> Để thay đổi giá trị của một phần tử cụ thể, hãy sử dụng số chỉ mục: </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_414230" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TruyCapArray2 {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// thay đổi phần tử đầu tiên của mảng cars</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">cars[</code><code class="java value">0</code><code class="java plain">] = </code><code class="java string">"Morning"</code><code class="java plain">;</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// hiển thị phần tử đầu tiên của mảng cars</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Phần tử đầu tiên: "</code> <code class="java plain">+ cars[</code><code class="java value">0</code><code class="java plain">]);</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number11 index10 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Phần tử đầu tiên: Morning
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
                        <h2 id="goto-h2-6"> Độ dài mảng trong Java </h2>
                        <p> Để biết có bao nhiêu phần tử một mảng, sử dụng thuộc tính <b> length </b>: </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_767840" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">DodaiArray1 {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Độ dài của mảng cars là: "</code> <code class="java plain">+ cars.length);</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>4
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-7"> Duyệt các phần tử của mảng trong Java </h2>
                        <p> Có 2 các để duyệt các phần tử của mảng: </p>
                        <ul>
                            <li> Sử dụng vòng lặp for </li>
                            <li> Sử dụng foreach </li>
                        </ul>

                        <h3 id="goto-h3-1"> Sử dụng vòng lặp for </h3>
                        <p> Bạn có thể lặp qua các phần tử mảng bằng vòng lặp for và sử dụng thuộc tính length để chỉ định số lần vòng lặp sẽ chạy. Ví dụ:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_751837" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">DuyetArray1 {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">i = </code><code class="java value">0</code><code class="java plain">; i &lt; cars.length; i++) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(cars[i]);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Honda
BMW
Ford
Mazda
</pre>
                        </div>

                        <h3 id="goto-h3-2"> Sử dụng foreach </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_934014" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">DuyetArray2 {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(String car : cars) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(car);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Honda
BMW
Ford
Mazda
</pre>
                        </div>

                        <h3 id="goto-h3-3"> So sánh for với foreach </h3>
                        <p> Nếu bạn so sánh vòng lặp for và vòng lặp foreach, bạn sẽ thấy rằng phương thức foreach dễ viết hơn, nó không yêu cầu bộ đếm (sử dụng thuộc tính length) và nó dễ đọc hơn. </p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-8"> Sắp xếp mảng </h2>
                        <p> Có nhiều phương thức mảng có sẵn, ví dụ Sort(), sắp xếp một mảng theo thứ tự bảng chữ cái hoặc theo thứ tự tăng dần, ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_485405" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">import</code> <code class="java plain">java.util.Arrays;</code></div><div class="line number4 index3 alt1">&nbsp;</div><div class="line number5 index4 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">DuyetArray2 {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String[] cars = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// sap xep mangr cars theo thu tu tang dan</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Arrays.sort(cars);</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Mảng cars sau khi được sắp xếp:"</code><code class="java plain">);</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(String car : cars) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(car);</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Mảng cars sau khi được sắp xếp:
BMW
Ford
Honda
Mazda
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-9"> Các cách khác để tạo một mảng trong Java </h2>
                        <p> Trong Java, có nhiều cách khác nhau để tạo một mảng: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_287540" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// tạo một mảng có độ dài 4, thêm các phần tử sau tạo</code></div><div class="line number2 index1 alt1"><code class="java plain">String[] cars1 = </code><code class="java keyword">new</code> <code class="java plain">String[</code><code class="java value">4</code><code class="java plain">];</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java comments">// tạo một mảng không cần chỉ định số phần tử cụ thể</code></div><div class="line number5 index4 alt2"><code class="java plain">String[] cars2 = </code><code class="java keyword">new</code> <code class="java plain">String[] { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java comments">// tạo một mảng không cần chỉ định số phần tử cụ thể</code></div><div class="line number8 index7 alt1"><code class="java comments">// và không cần dùng từ khóa new</code></div><div class="line number9 index8 alt2"><code class="java plain">String[] cars3 = { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code><code class="java plain">, </code><code class="java string">"Mazda"</code> <code class="java plain">};</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Bạn có thể chọn bất kỳ cách khởi tạo nào. Trong hướng dẫn của chúng tôi, chúng tôi sẽ thường sử dụng tùy chọn cuối cùng, vì nó nhanh hơn và dễ đọc hơn. </p>
                        <p> Một trường hợp khác, nếu bạn khai báo một mảng và khởi tạo nó sau, bạn phải sử dụng từ khóa new: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_869718" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">// khai báo một mảng</code></div><div class="line number2 index1 alt1"><code class="java plain">String[] cars;</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java comments">// thêm giá trị, sử dụng từ khóa new</code></div><div class="line number5 index4 alt2"><code class="java plain">cars = </code><code class="java keyword">new</code> <code class="java plain">String[] { </code><code class="java string">"Honda"</code><code class="java plain">, </code><code class="java string">"BMW"</code><code class="java plain">, </code><code class="java string">"Ford"</code> <code class="java plain">};</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java comments">// nếu không dùng new sẽ bị lỗi</code></div><div class="line number8 index7 alt1"><code class="java plain">cars = {</code><code class="java string">"Honda"</code><code class="java plain">,</code><code class="java string">"BMW"</code><code class="java plain">,</code><code class="java string">"Ford"</code><code class="java plain">};</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-10"> Truyền mảng vào phương thức trong java </h2>
                        <p> Chúng ta có thể truyền mảng vào phương thức, điều này giúp tái sử dụng code logic để xử lý mảng bất kỳ. Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_286860" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestArray2 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">min(</code><code class="java keyword">int</code> <code class="java plain">arr[]) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">min = arr[</code><code class="java value">0</code><code class="java plain">];</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">i = </code><code class="java value">1</code><code class="java plain">; i &lt; arr.length; i++)</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">if</code> <code class="java plain">(min &gt; arr[i]) {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">min = arr[i];</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(min);</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1">&nbsp;</div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">a[] = { </code><code class="java value">33</code><code class="java plain">, </code><code class="java value">3</code><code class="java plain">, </code><code class="java value">4</code><code class="java plain">, </code><code class="java value">5</code> <code class="java plain">};</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">min(a);</code><code class="java comments">// truyền mảng tới phương thức</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number15 index14 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>3
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-11"> Sao chép một mảng trong java </h2>
                        <p> Chúng ta có thể sao chép một mảng tới mảng khác bởi phương thức arraycopy của lớp System. Cú pháp của phương thức arraycopy: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_278417" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">arraycopy(&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java plain">Object src, </code><code class="java keyword">int</code> <code class="java plain">srcPos,Object dest, </code><code class="java keyword">int</code> <code class="java plain">destPos, </code><code class="java keyword">int</code> <code class="java plain">length&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">)&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ví dụ về sao chép mảng trong java </p>
                        <div class="codeblock">
                            <div><div id="highlighter_187394" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestArrayCopyDemo {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">char</code><code class="java plain">[] copyFrom = { </code><code class="java string">'d'</code><code class="java plain">, </code><code class="java string">'e'</code><code class="java plain">, </code><code class="java string">'c'</code><code class="java plain">, </code><code class="java string">'a'</code><code class="java plain">, </code><code class="java string">'f'</code><code class="java plain">, </code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java string">'f'</code><code class="java plain">, </code><code class="java string">'e'</code><code class="java plain">, </code><code class="java string">'i'</code><code class="java plain">, </code><code class="java string">'n'</code><code class="java plain">, </code><code class="java string">'a'</code><code class="java plain">, </code><code class="java string">'t'</code><code class="java plain">, </code><code class="java string">'e'</code><code class="java plain">, </code><code class="java string">'d'</code> <code class="java plain">};</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">char</code><code class="java plain">[] copyTo = </code><code class="java keyword">new</code> <code class="java keyword">char</code><code class="java plain">[</code><code class="java value">7</code><code class="java plain">];</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.arraycopy(copyFrom, </code><code class="java value">2</code><code class="java plain">, copyTo, </code><code class="java value">0</code><code class="java plain">, </code><code class="java value">7</code><code class="java plain">);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java keyword">new</code> <code class="java plain">String(copyTo));</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>caffein
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
                        <h2 id="goto-h2-12"> Mảng hai chiều và đa chiều trong Java </h2>
                        <p> Trong TH này, dữ liệu được lưu trữ theo hàng và cột theo chỉ mục (hay còn gọi là dạng ma trận). </p>
                        <hr>

                        <h3 id="goto-h3-4"> Khai báo mảng đa chiều trong java </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_605831" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">dataType[][] arr;</code></div><div class="line number2 index1 alt1"><code class="java plain">dataType [][]arr;</code></div><div class="line number3 index2 alt2"><code class="java plain">dataType arr[][];</code></div><div class="line number4 index3 alt1"><code class="java plain">dataType []arr[];&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <h3 id="goto-h3-5"> Ví dụ về khởi tạo và gán giá trị cho mảng đa chiều trong java </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_110784" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">int</code><code class="java plain">[][] arr=</code><code class="java keyword">new</code> <code class="java keyword">int</code><code class="java plain">[</code><code class="java value">3</code><code class="java plain">][</code><code class="java value">3</code><code class="java plain">]; </code><code class="java comments">// 3 hàng 3 cột</code></div><div class="line number2 index1 alt1"><code class="java plain">arr[</code><code class="java value">0</code><code class="java plain">][</code><code class="java value">0</code><code class="java plain">]=</code><code class="java value">1</code><code class="java plain">;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">arr[</code><code class="java value">0</code><code class="java plain">][</code><code class="java value">1</code><code class="java plain">]=</code><code class="java value">2</code><code class="java plain">;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java plain">arr[</code><code class="java value">0</code><code class="java plain">][</code><code class="java value">2</code><code class="java plain">]=</code><code class="java value">3</code><code class="java plain">;&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java plain">arr[</code><code class="java value">1</code><code class="java plain">][</code><code class="java value">0</code><code class="java plain">]=</code><code class="java value">4</code><code class="java plain">;&nbsp; </code></div><div class="line number6 index5 alt1"><code class="java plain">arr[</code><code class="java value">1</code><code class="java plain">][</code><code class="java value">1</code><code class="java plain">]=</code><code class="java value">5</code><code class="java plain">;&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java plain">arr[</code><code class="java value">1</code><code class="java plain">][</code><code class="java value">2</code><code class="java plain">]=</code><code class="java value">6</code><code class="java plain">;&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java plain">arr[</code><code class="java value">2</code><code class="java plain">][</code><code class="java value">0</code><code class="java plain">]=</code><code class="java value">7</code><code class="java plain">;&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java plain">arr[</code><code class="java value">2</code><code class="java plain">][</code><code class="java value">1</code><code class="java plain">]=</code><code class="java value">8</code><code class="java plain">;&nbsp; </code></div><div class="line number10 index9 alt1"><code class="java plain">arr[</code><code class="java value">2</code><code class="java plain">][</code><code class="java value">2</code><code class="java plain">]=</code><code class="java value">9</code><code class="java plain">;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <h3 id="goto-h3-6"> Ví dụ khai báo và khởi tạo mảng đa chiều trong java </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_110051" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">TestArray3 {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number3 index2 alt2">&nbsp;</div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// khai báo và khởi tạo mảng 2 chiều</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">arr[][] = { { </code><code class="java value">1</code><code class="java plain">, </code><code class="java value">2</code><code class="java plain">, </code><code class="java value">3</code> <code class="java plain">}, { </code><code class="java value">2</code><code class="java plain">, </code><code class="java value">4</code><code class="java plain">, </code><code class="java value">5</code> <code class="java plain">}, { </code><code class="java value">4</code><code class="java plain">, </code><code class="java value">4</code><code class="java plain">, </code><code class="java value">5</code> <code class="java plain">} };</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// in mảng 2 chiều r màn hình</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">i = </code><code class="java value">0</code><code class="java plain">; i &lt; </code><code class="java value">3</code><code class="java plain">; i++) {</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">j = </code><code class="java value">0</code><code class="java plain">; j &lt; </code><code class="java value">3</code><code class="java plain">; j++) {</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.print(arr[i][j] + </code><code class="java string">" "</code><code class="java plain">);</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println();</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1">&nbsp;</div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number16 index15 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>1 2 3
2 4 5
4 4 5
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-7"> Ví dụ cộng 2 ma trận (mảng đa chiều) trong Java </h3>
                        <div class="codeblock">
                            <div><div id="highlighter_661462" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.array;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">CongMaTran {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// tao hai ma tran</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">a[][] = { { </code><code class="java value">1</code><code class="java plain">, </code><code class="java value">3</code><code class="java plain">, </code><code class="java value">4</code> <code class="java plain">}, { </code><code class="java value">3</code><code class="java plain">, </code><code class="java value">4</code><code class="java plain">, </code><code class="java value">5</code> <code class="java plain">} };</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">b[][] = { { </code><code class="java value">1</code><code class="java plain">, </code><code class="java value">3</code><code class="java plain">, </code><code class="java value">4</code> <code class="java plain">}, { </code><code class="java value">3</code><code class="java plain">, </code><code class="java value">4</code><code class="java plain">, </code><code class="java value">5</code> <code class="java plain">} };</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// tao ma tran khac de luu giu ket qua phep cong hai ma tran</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">c[][] = </code><code class="java keyword">new</code> <code class="java keyword">int</code><code class="java plain">[</code><code class="java value">2</code><code class="java plain">][</code><code class="java value">3</code><code class="java plain">];</code></div><div class="line number11 index10 alt2">&nbsp;</div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// cong va in tong hai ma tran</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">i = </code><code class="java value">0</code><code class="java plain">; i &lt; </code><code class="java value">2</code><code class="java plain">; i++) {</code></div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">for</code> <code class="java plain">(</code><code class="java keyword">int</code> <code class="java plain">j = </code><code class="java value">0</code><code class="java plain">; j &lt; </code><code class="java value">3</code><code class="java plain">; j++) {</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">c[i][j] = a[i][j] + b[i][j];</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.print(c[i][j] + </code><code class="java string">" "</code><code class="java plain">);</code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println();</code></div><div class="line number19 index18 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number21 index20 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>2 6 8
6 8 10
</pre>
                        </div>
                        <hr>

                        <h2 id="goto-h2-13"> Lợi thế và hạn chế của mảng trong java </h2>
                        <h3 id="goto-h3-8"> Lợi thế </h3>
                        <ul>
                            <li> <strong>Tối ưu code</strong>: Mảng giúp lấy hoặc sắp xếp dữ liệu dễ dàng. </li>
                            <li> <strong>Truy cập ngẫu nhiên</strong>: Chúng ta có thể lấy dữ liệu được lưu trữ ở bất kỳ vị trí nào thông qua chỉ số. </li>
                        </ul>
                        <h3 id="goto-h3-9"> Hạn chế </h3>
                        <ul>
                            <li> <strong>Giới hạn kích thước</strong>: Chúng ta phải khởi tạo kích thước của mảng trong java trước khi sử dụng. Không thể thay đổi được kích thước của nó lúc runtime. Collection framework được sử dụng trong java để giải quyết vấn đề này. </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-14"> Giới thiệu Lớp Array trong Java </h2>
                        <p>Lớp <i>java.util.Arrays</i> chứa nhiều phương thức static đa dạng để xếp thứ tự và tìm kiếm các mảng, so sánh các mảng và điền các phần tử vào mảng. </p>
                        <table class="alt">
                            <tbody><tr>
                                <th>STT</th>
                                <th>Phương thức và Miêu tả</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><b>public static int binarySearch(Object[] a, Object key)</b>
                                    <p>Tìm kiếm mảng của Object (byte, int, double, …) đã cho với giá trị đã xác định bởi sử dụng thuật toán tìm kiếm nhị phân. Mảng này phải được xếp thứ tự trước khi gọi phương thức này. Nó trả về chỉ mục của từ khóa tìm kiếm, nếu nó nằm trong danh sách, nếu không thì, bằng (-(điểm chèn + 1)).</p>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><b>public static boolean equals(long[] a, long[] a2)</b>
                                    <p>Trả về true nếu hai mảng long đã cho là cân bằng nhau. Hai mảng này được cho là cân bằng nếu cả hai mảng chứa cùng số lượng phần tử, và tất cả các cặp phần tử tương ứng của hai mảng là cân bằng. Phương thức tương tự có thể được sử dụng bởi tất cả kiểu dữ liệu gốc khác (byte, short, int, …).</p>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><b>public static void fill(int[] a, int val)</b>
                                    <p>Gán giá trị int đã cho tới mỗi phần tử của mảng int đã cho. Phương thức tương tự có thể được sử dụng bởi tất cả kiểu dữ liệu gốc khác (byte, short, int, …).</p>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><b>public static void sort(Object[] a)</b>
                                    <p>Xếp thứ tự mảng các đối tượng đã cho theo thứ tự tăng dần, theo thứ tự tự nhiên của các phần tử. Phương thức tương tự có thể được sử dụng bởi tất cả kiểu dữ liệu gốc khác (byte, short, int, …).</p>
                                </td>
                            </tr>
                            </tbody></table>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Interface trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Lớp Wrapper trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
                        </div></div>



        </div>
    </div>
    </div>
</body>
</html>
