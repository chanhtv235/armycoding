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
                    <h1 class="entry-title">Sự khác nhau giữa Abstract class và Interface</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Interface trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Tính đóng gói trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Sự khác nhau giữa Abstract class và Interface</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ về abstract class và interface trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Sự khác nhau giữa Abstract class và Interface </h2>
                        <p> Abstract class và interface đều được sử dụng để có được sự trừu tượng mà ở đó chúng ta có thể khai báo các phương thức trừu tượng. Nhưng có một vài sự khác nhau giữa abstract class và interface được liệt kê trong bảng sau: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th> Abstract class </th>
                                <th> Interface </th>
                            </tr>
                            <tr>
                                <td> 1) Abstract class có phương thức <strong>abstract </strong>(không có thân hàm) và phương thức <strong>non-abstract</strong> (có thân hàm). </td>
                                <td> Interface chỉ có phương thức <strong>abstract</strong>. Từ java 8, nó có thêm <strong>các phương thức default và static</strong>. </td>
                            </tr>
                            <tr>
                                <td> 2) Abstract class <strong>không hỗ trợ đa kế thừa</strong>.</td>
                                <td> Interface <strong>có hỗ trợ đa kế thừa</strong> </td>
                            </tr>
                            <tr>
                                <td> 3) Abstract class có các biến <strong>final, non-final, static and non-static</strong>. </td>
                                <td> Interface chỉ có các biến <strong>static và final</strong>.</td>
                            </tr>
                            <tr>
                                <td> 4) Abstract class <strong>có thể cung cấp nội dung cài đặt cho phương thức của interface</strong>. </td>
                                <td> Interface <strong>không thể cung cấp nội dung cài đặt cho phương thức của abstract class</strong>. </td>
                            </tr>
                            <tr>
                                <td> 5) Từ khóa <strong>abstract</strong> được sử dụng để khai báo abstract class. </td>
                                <td> Từ khóa <strong>interface</strong> được sử dụng để khai báo interface.</td>
                            </tr>
                            <tr>
                                <td> 6) Ví dụ: <br>
                                    public abstract class Shape { <br>
                                    public abstract void draw(); <br>
                                    } </td>
                                <td> Ví dụ: <br>
                                    public interface Drawable { <br>
                                    void draw(); <br>
                                    } </td>
                            </tr>
                            </tbody>
                        </table>

                        <p> Đơn giản để hiểu, đó là abstract class có được trừu tượng 1 phần (0 tới 100%), còn interface có được trừu tường toàn phần (100%). </p>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Ví dụ về abstract class và interface trong java </h2>
                        <p> Ví dụ sau là sự kết hợp giữa abstract class và interface. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_415313" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div><div class="line number28 index27 alt1">28</div><div class="line number29 index28 alt2">29</div><div class="line number30 index29 alt1">30</div><div class="line number31 index30 alt2">31</div><div class="line number32 index31 alt1">32</div><div class="line number33 index32 alt2">33</div><div class="line number34 index33 alt1">34</div><div class="line number35 index34 alt2">35</div><div class="line number36 index35 alt1">36</div><div class="line number37 index36 alt2">37</div><div class="line number38 index37 alt1">38</div><div class="line number39 index38 alt2">39</div><div class="line number40 index39 alt1">40</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java comments">//tạo interface có 4 phương thức</code></div><div class="line number2 index1 alt1"><code class="java keyword">interface</code> <code class="java plain">A {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">void</code> <code class="java plain">a();</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">abstract</code> <code class="java keyword">void</code> <code class="java plain">b();</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">c();</code></div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">abstract</code> <code class="java keyword">void</code> <code class="java plain">d();</code></div><div class="line number7 index6 alt2"><code class="java plain">}</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="java comments">// tạo abstract class cung cấp cài đặt cho một phương thức của interface A</code></div><div class="line number10 index9 alt1"><code class="java keyword">abstract</code> <code class="java keyword">class</code> <code class="java plain">B </code><code class="java keyword">implements</code> <code class="java plain">A {</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">c() {</code></div><div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"I am C"</code><code class="java plain">);</code></div><div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number14 index13 alt1"><code class="java plain">}</code></div><div class="line number15 index14 alt2">&nbsp;</div><div class="line number16 index15 alt1"><code class="java comments">// tạo subclass của abstract class B, cung cấp cài đặt cho các phương thức còn lại</code></div><div class="line number17 index16 alt2"><code class="java keyword">class</code> <code class="java plain">M </code><code class="java keyword">extends</code> <code class="java plain">B {</code></div><div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">a() {</code></div><div class="line number19 index18 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"I am a"</code><code class="java plain">);</code></div><div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number21 index20 alt2">&nbsp;</div><div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">b() {</code></div><div class="line number23 index22 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"I am b"</code><code class="java plain">);</code></div><div class="line number24 index23 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number25 index24 alt2">&nbsp;</div><div class="line number26 index25 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">void</code> <code class="java plain">d() {</code></div><div class="line number27 index26 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"I am d"</code><code class="java plain">);</code></div><div class="line number28 index27 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number29 index28 alt2"><code class="java plain">}</code></div><div class="line number30 index29 alt1">&nbsp;</div><div class="line number31 index30 alt2"><code class="java comments">// tạo lớp Test5 để gọi các phương thức của interface A</code></div><div class="line number32 index31 alt1"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Test5 {</code></div><div class="line number33 index32 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String args[]) {</code></div><div class="line number34 index33 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">A a = </code><code class="java keyword">new</code> <code class="java plain">M();</code></div><div class="line number35 index34 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">a.a();</code></div><div class="line number36 index35 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">a.b();</code></div><div class="line number37 index36 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">a.c();</code></div><div class="line number38 index37 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">a.d();</code></div><div class="line number39 index38 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number40 index39 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Output: </p>
                        <div class="codeblock3">
<pre>I am a
I am b
I am C
I am d
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Interface trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Tính đóng gói trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
                </div>

        </div>
    </div>
    </div>
</body>
</html>
