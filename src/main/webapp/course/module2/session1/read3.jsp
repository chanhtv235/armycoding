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
                <a href="/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Biến trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Sự khác nhau giữa JVM, JRE và JDK </a></div>
                        <div class="nxt-btn"><a href="#"> Ép kiểu trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Trong java, biến là tên của vùng nhớ. <strong>Có 3 kiểu biến trong java</strong>, bao gồm biến local (biến địa phương), biến instance (biến toàn cục) và biến static. </p>
                        <img src="https://viettuts.vn/images/java/cac-kieu-bien-trong-java.png" alt="Các kiểu biến trong java">
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Khai báo biến trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">1. Biến local trong java</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">2. Biến biến instance (biến toàn cục) trong java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">3. Biến static trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Khai báo biến trong java </h2>
                        <p> <strong>Cú pháp khai báo biến:</strong> </p>
                        <div class="codeblock">
                            <div><div id="highlighter_488267" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">DataType varName [ = value] [, varName2] [ = value2]...;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Trong đó, DataType là kiểu dữ liệu của biến, varName là tên biến. </p>
                        <p> <strong>Quy tắc đặt tên biến trong java:</strong> </p>
                        <ul>
                            <li>Chỉ được bắt đầu bằng một ký tự(chữ), hoặc một dấu gạch dưới(_), hoặc một ký tự dollar($) </li>
                            <li>Tên biến không được chứa khoảng trắng </li>
                            <li>Bắt đầu từ ký tự thứ hai, có thể dùng ký tự(chữ), dấu gạch dưới(_), hoặc ký tự dollar($)</li>
                            <li>Không được trùng với các từ khóa</li>
                            <li>Có phân biệt chữ hoa và chữ thường </li>
                        </ul>
                        <p> <strong>Ví dụ về khai báo biến trong java:</strong></p>
                        <div class="codeblock">
                            <div><div id="highlighter_590235" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.bienvadulieu;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Bien {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">float</code> <code class="java plain">PI = </code><code class="java value">3</code><code class="java plain">.14f;&nbsp;&nbsp; </code><code class="java comments">// Đây là biến static</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">n;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code><code class="java comments">// Đây là biến instance</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java plain">Bien () {</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">char</code> <code class="java plain">c = </code><code class="java string">'c'</code><code class="java plain">;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code><code class="java comments">// Đây là biến local</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number10 index9 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
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
                        <h2 id="goto-h2-2"> 1. Biến local trong java </h2>
                        <ul>
                            <li>Biến local được khai báo trong các phương thức, hàm contructor hoặc trong các block.</li>
                            <li>Biến local được tạo bên trong các phương thức, contructor, block và sẽ bị phá hủy khi kết thúc các phương thức, contructor và block.</li>
                            <li>Không được sử dụng "access modifier" khi khai báo biến local.</li>
                            <li>Các biến local được lưu trên vùng nhớ stack của bộ nhớ.</li>
                            <li>Bạn cần khởi tạo giá trị mặc định cho biến local trước khi có thể sử dụng.</li>
                        </ul>

                        <p> <strong>Ví dụ 1:</strong> Khởi tạo biến local: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_773380" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.bienvadulieu;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Bien {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">sayHello() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">n = </code><code class="java value">10</code><code class="java plain">;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code><code class="java comments">// Đây là biến local</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Gia tri cua n la: "</code> <code class="java plain">+ n);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Bien bienLocal = </code><code class="java keyword">new</code> <code class="java plain">Bien();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">bienLocal.sayHello();</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Gia tri cua n la: 10
</pre>
                        </div>

                        <p> <strong>Ví dụ 2:</strong> Không khởi tạo biến local: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_97589" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.bienvadulieu;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Bien {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">sayHello() {</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">n;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code><code class="java comments">// Đây là biến local</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Gia tri cua n la: "</code> <code class="java plain">+ n);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Bien bienLocal = </code><code class="java keyword">new</code> <code class="java plain">Bien();</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">bienLocal.sayHello();</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Exception in thread "main" java.lang.Error: Unresolved compilation problem: 
    The local variable n may not have been initialized
</pre>
                        </div>
                        <div class="note"> Khi không khởi tạo biến local, chương trình java sẽ báo lỗi khi biên dịch. </div>
                        <hr>

                        <h2 id="goto-h2-3"> 2. Biến biến instance (biến toàn cục) trong java </h2>
                        <ul>
                            <li>Biến instance được khai báo trong một lớp(class), bên ngoài các phương thức, constructor và các block.</li>
                            <li>Biến instance được lưu trong bộ nhớ heap.</li>
                            <li>Biến instance được tạo khi một đối tượng được tạo bằng việc sử dụng từ khóa “new” và sẽ bị phá hủy khi đối tượng bị phá hủy.</li>
                            <li>Biến instance có thể được sử dụng bởi các phương thức, constructor, block, ... Nhưng nó phải được sử dụng thông qua một đối tượng cụ thể.</li>
                            <li>Bạn được phép sử dụng "access modifier" khi khai báo biến instance, mặc định là "default".</li>
                            <li>Biến instance có giá trị mặc định phụ thuộc vào kiểu dữ liệu của nó. Ví dụ nếu là kiểu int, short, byte thì giá trị mặc định là 0, kiểu double thì là 0.0d, ... Vì vậy, bạn sẽ không cần khởi tạo giá trị cho biến instance trước khi sử dụng.</li>
                            <li>Bên trong class mà bạn khai báo biến instance, bạn có thể gọi nó trực tiếp bằng tên khi sử dụng ở khắp nới bên trong class đó.</li>
                        </ul>

                        <p> Ví dụ về biến instance trong java: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_225031" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div><div class="line number28 index27 alt1">28</div><div class="line number29 index28 alt2">29</div><div class="line number30 index29 alt1">30</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.bienvadulieu;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Sinhvien {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// biến instance "ten" kiểu String, có giá trị mặc định là null</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java plain">String ten;</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// biến instance "tuoi" kiểu Integer, có giá trị mặc định là 0</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">private</code> <code class="java keyword">int</code> <code class="java plain">tuoi;</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// sử dụng biến ten trong một constructor</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java plain">Sinhvien(String ten) {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">this</code><code class="java plain">.ten = ten;</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1">&nbsp;</div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// sử dụng biến tuoi trong phương thức setTuoi</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">setTuoi(</code><code class="java keyword">int</code> <code class="java plain">tuoi) {</code></div><div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">this</code><code class="java plain">.tuoi = tuoi;</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number19 index18 alt2">&nbsp;</div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">showStudent() {</code></div><div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Ten&nbsp; : "</code> <code class="java plain">+ ten);</code></div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Tuoi : "</code> <code class="java plain">+ tuoi);</code></div><div class="line number23 index22 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number24 index23 alt1">&nbsp;</div><div class="line number25 index24 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number26 index25 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">Sinhvien sv = </code><code class="java keyword">new</code> <code class="java plain">Sinhvien(</code><code class="java string">"Nguyen Van A"</code><code class="java plain">);</code></div><div class="line number27 index26 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">sv.setTuoi(</code><code class="java value">21</code><code class="java plain">);</code></div><div class="line number28 index27 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">sv.showStudent();</code></div><div class="line number29 index28 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number30 index29 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Ten  : Nguyen Van A
Tuoi : 21
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
                        <h2 id="goto-h2-4"> 3. Biến static trong java </h2>
                        <ul>
                            <li>Biến static được khai báo trong một class với từ khóa "static", phía bên ngoài các phương thức, constructor và block.</li>
                            <li>Sẽ chỉ có duy nhất một bản sao của các biến static được tạo ra, dù bạn tạo bao nhiêu đối tượng từ lớp tương ứng.</li>
                            <li>Biến static được lưu trữ trong bộ nhớ static riêng.</li>
                            <li>Biến static được tạo khi chương trình bắt đầu chạy và chỉ bị phá hủy khi chương trình dừng.</li>
                            <li>Giá trị mặc định của biến static phụ thuộc vào kiểu dữ liệu bạn khai báo tương tự biến instance.</li>
                            <li>Biến static được truy cập thông qua tên của class chứa nó, với cú pháp: TenClass.tenBien.</li>
                            <li>Trong class, các phương thức sử dụng biến static bằng cách gọi tên của nó khi phương thức đó cũng được khai báo với từ khóa "static". </li>
                        </ul>

                        <p> Ví dụ về biến static trong java: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_590276" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">package</code> <code class="java plain">vn.viettuts.bienvadulieu;</code></div><div class="line number2 index1 alt1">&nbsp;</div><div class="line number3 index2 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Sinhvien {</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// biến static 'ten'</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java plain">String ten = </code><code class="java string">"Nguyen Van A"</code><code class="java plain">;</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>&nbsp;</div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// biến static 'tuoi'</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">int</code> <code class="java plain">tuoi = </code><code class="java value">21</code><code class="java plain">;</code></div><div class="line number9 index8 alt2">&nbsp;</div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// Sử dụng biến static bằng cách gọi trực tiếp</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Ten : "</code> <code class="java plain">+ ten);</code></div><div class="line number13 index12 alt2">&nbsp;</div><div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java comments">// Sử dụng biến static bằng cách gọi thông qua tên class</code></div><div class="line number15 index14 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"Ten : "</code> <code class="java plain">+ Sinhvien.tuoi);</code></div><div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number17 index16 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Ten : Nguyen Van A
Ten : 21
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Sự khác nhau giữa JVM, JRE và JDK </a></div>
                        <div class="nxt-btn"><a href="#"> Ép kiểu trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;</a></div>
                        <div class="clearer"></div>
                        <hr>
                </div>

        </div>
    </div>
    </div>
</body>
</html>
