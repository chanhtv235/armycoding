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
                <a href="/course/module2/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Java collection framework</a>

                <header class="entry-header">
                    <h1 class="entry-title">Sự khác nhau giữa ArrayList và LinkedList</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="/java-collection/linkedlist-trong-java"><i
                                class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> LinkedList trong java </a>
                        </div>
                        <div class="nxt-btn"><a href="/java-collection/list-trong-java"> List trong java <i
                                class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Sự khác nhau giữa ArrayList và LinkedList</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ về ArrayList và LinkedList trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h4 id="goto-h2-1"> Sự khác nhau giữa ArrayList và LinkedList </h4>
                        <p> Cả hai lớp ArrayList và LinkedList đều được implements từ giao tiếp List và duy trì thứ tự
                            của phần tử được thêm vào. Cả hai lớp này đều là lớp không đồng bộ (non-synchronized). </p>
                        <p> Có vài sự khác nhau giữa ArrayList và LinkedList được đưa ra như trong bảng dưới đây: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>ArrayList</th>
                                <th>LinkedList</th>
                            </tr>
                            <tr>
                                <td>1) ArrayList nội bộ sử dụng <strong> mảng động </strong> để lưu trữ các phần tử.
                                </td>
                                <td>LinkedList nội bộ sử dụng <strong> danh sách liên kết doubly </strong> để lưu trữ
                                    các phần tử.
                                </td>
                            </tr>
                            <tr>
                                <td>2) Thao tác với ArrayList là <strong> chậm </strong> bởi vì nó sử dụng nội bộ mảng.
                                    Nếu bất kỳ phần tử nào được xoá khỏi mảng, tất cả các bit được chuyển trong bộ nhớ.
                                </td>
                                <td> Thao tác với LinkedList là <strong>nhanh hơn </strong> so với ArrayList bởi vì nó
                                    sử dụng danh sách liên kết doubly do đó không cần chuyển đổi bit nào trong bộ nhớ.
                                </td>
                            </tr>
                            <tr>
                                <td>3) <a href="/java-collection/arraylist-trong-java">Lớp ArrayList trong java</a> chỉ
                                    có thể <strong> hoạt động như một list </strong> vì nó chỉ implements giao tiếp
                                    List.
                                </td>
                                <td><a href="/java-collection/linkedlist-trong-java">Lớp LinkedList trong java</a> có
                                    thể <strong>hoạt động như một list và queue(hàng đợi)</strong> vì nó implements các
                                    giao tiếp List và Deque.
                                </td>
                            </tr>
                            <tr>
                                <td>4) ArrayList là <strong>tốt hơn trong việc lưu trữ và truy cập</strong> dữ liệu.
                                </td>
                                <td>LinkedList là <strong>tốt hơn trong việc thao tác</strong> dữ liệu.</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async=""
                                    src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;"
                                 data-ad-layout="in-article" data-ad-format="fluid"
                                 data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>
                        <br>
                        <h4 id="goto-h2-2"> Ví dụ về ArrayList và LinkedList trong java </h4>
                        <p> Dưới đây là ví dụ đơn giản về việc sử dụng ArrayList và LinkedList trong java </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_321553" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                                <div class="line number24 index23 alt1">24</div>
                                                <div class="line number25 index24 alt2">25</div>
                                                <div class="line number26 index26 alt1">26</div>
                                                <div class="line number27 index26 alt2">27</div>
                                                <div class="line number28 index28 alt2">28</div>
                                                <div class="line number29 index26 alt2">29</div>
                                                <div class="line number30 index26 alt2">30</div>
                                                <div class="line number31 index26 alt2">31</div>
                                                <div class="line number32 index26 alt2">32</div>
                                                <div class="line number33 index26 alt2">33</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code class="java keyword">import</code>
                                                        <code class="language-java language-html">java.util.ArrayList;</code></div>
                                                    <div class="line number2 index1 alt1"><code class="java keyword">import</code>
                                                        <code class="language-java language-html">java.util.LinkedList;</code></div>
                                                    <div class="line number3 index2 alt2"><code class="java keyword">import</code>
                                                        <code class="language-java language-html">java.util.List;</code></div>
                                                    <div class="line number4 index3 alt1">&nbsp;</div>
                                                    <div class="line number5 index4 alt2"><code class="java keyword">public</code>
                                                        <code class="java keyword">class</code> <code
                                                                class="language-java language-html">ArraylistAndLinkedListExample
                                                            {</code></div>
                                                    <div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="java keyword">public</code> <code
                                                            class="java keyword">static</code> <code
                                                            class="java keyword">void</code> <code class="language-java language-html">main(String
                                                        args[]) {</code></div>
                                                    <div class="line number7 index6 alt2">&nbsp;</div>
                                                    <div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="java comments">// create arrayList</code></div>
                                                    <div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">List&lt;String&gt; arrayList
                                                        = </code><code class="java keyword">new</code> <code
                                                            class="language-java language-html">ArrayList&lt;String&gt;();</code></div>
                                                    <div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="java comments">// add object in arraylist</code>
                                                    </div>
                                                    <div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">arrayList.add(</code><code
                                                            class="java string">"Java"</code><code
                                                            class="language-java language-html">);</code></div>
                                                    <div class="line number12 index11 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">arrayList.add(</code><code
                                                            class="java string">"C++"</code><code
                                                            class="language-java language-html">);</code></div>
                                                    <div class="line number13 index12 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">arrayList.add(</code><code
                                                            class="java string">"PHP"</code><code
                                                            class="language-java language-html">);</code></div>
                                                    <div class="line number14 index13 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">arrayList.add(</code><code
                                                            class="java string">"Python"</code><code class="language-java language-html">);</code>
                                                    </div>
                                                    <div class="line number15 index14 alt2">&nbsp;</div>
                                                    <div class="line number16 index15 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="java comments">// create linkedlist</code></div>
                                                    <div class="line number17 index16 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">List&lt;String&gt; linkedList
                                                        = </code><code class="java keyword">new</code> <code
                                                            class="language-java language-html">LinkedList&lt;String&gt;();</code></div>
                                                    <div class="line number18 index17 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="java comments">// aadd object in linkedlist</code>
                                                    </div>
                                                    <div class="line number19 index18 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">linkedList.add(</code><code
                                                            class="java string">"Hiberante"</code><code
                                                            class="language-java language-html">);</code></div>
                                                    <div class="line number20 index19 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">linkedList.add(</code><code
                                                            class="java string">"Struts2"</code><code
                                                            class="language-java language-html">);</code></div>
                                                    <div class="line number21 index20 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">linkedList.add(</code><code
                                                            class="java string">"Spring"</code><code class="language-java language-html">);</code>
                                                    </div>
                                                    <div class="line number22 index21 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">linkedList.add(</code><code
                                                            class="java string">"Mybatis"</code><code
                                                            class="language-java language-html">);</code></div>
                                                    <div class="line number23 index22 alt2">&nbsp;</div>
                                                    <div class="line number24 index23 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">System.out.println(</code><code
                                                            class="java string">"arraylist: "</code> <code
                                                            class="language-java language-html">+ arrayList);</code></div>
                                                    <div class="line number25 index24 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">System.out.println(</code><code
                                                            class="java string">"linkedlist: "</code> <code
                                                            class="language-java language-html">+ linkedList);</code></div>
                                                    <div class="line number26 index25 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="language-java language-html">}</code></div>
                                                    <div class="line number27 index26 alt2"><code
                                                            class="language-java language-html">}</code></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Output: </p>
                        <div class="codeblock3">
    <pre>arraylist: [Java, C++, PHP, Python]
    linkedlist: [Hiberante, Struts2, Spring, Mybatis]
    </pre>
                        </div>
                        <hr>

                    </div>

</body>
</html>
