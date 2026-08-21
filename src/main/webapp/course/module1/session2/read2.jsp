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
                <a href="${pageContext.request.contextPath}/course/module1/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Git và Html</a>
                <header class="entry-header">
                    <h1 class="entry-title">Định dạng trong HTML</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div class="entry-content" style="height: auto !important;">
                        <div>
                            <hr>
                            <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read1">[Bài đọc] HTML là gì?</a></div>
                            <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read3">[Bài đọc] Thuộc tính style trong HTML</a></div>
                            <div class="clearer"></div>
                            <hr>

                            <div class="goto-wrapper mom_list">
                                <p>Nội dung chính </p>
                                <ul id="go-to-detail">
                                    <li class="list-goto-1">
                                        <a href="#goto-h2-1">Định dạng trong HTML</a>
                                    </li>
                                    <li class="list-goto-2">
                                        <a href="#goto-h2-2">1. Chữ đậm trong HTML</a>
                                    </li>
                                    <li class="list-goto-3">
                                        <a href="#goto-h2-3">2. Chữ nghiêng trong HTML</a>
                                    </li>
                                    <li class="list-goto-4">
                                        <a href="#goto-h2-4">3. Chữ bị ngạch chân trong HTML</a>
                                    </li>
                                    <li class="list-goto-5">
                                        <a href="#goto-h2-5">4. Đánh dấu văn bản trong HTML</a>
                                    </li>
                                    <li class="list-goto-6">
                                        <a href="#goto-h2-6">5. Chữ bị kẻ ngang trong HTML</a>
                                    </li>
                                    <li class="list-goto-7">
                                        <a href="#goto-h2-7">6. Chữ đơn cách.</a>
                                    </li>
                                    <li class="list-goto-8">
                                        <a href="#goto-h2-8">7. Hiển thị văn bản bên trên văn bản khác.</a>
                                    </li>
                                    <li class="list-goto-9">
                                        <a href="#goto-h2-9">8. Hiển thị văn bản bên dưới văn bản khác.</a>
                                    </li>
                                    <li class="list-goto-10">
                                        <a href="#goto-h2-10">9. Chữ bị xóa trong HTML</a>
                                    </li>
                                    <li class="list-goto-11">
                                        <a href="#goto-h2-11">10. Chèn chữ trong HTML</a>
                                    </li>
                                    <li class="list-goto-12">
                                        <a href="#goto-h2-12">11. Chữ to trong HTML</a>
                                    </li>
                                    <li class="list-goto-13">
                                        <a href="#goto-h2-13">12. Chữ nhỏ trong HTML</a>
                                    </li>
                                </ul>
                            </div>
                            <h2 id="goto-h2-1"> Định dạng trong HTML </h2>
                            <p> Định dạng HTML là một quá trình định dạng văn bản để có giao diện trông đẹp mắt hơn. Có nhiều thẻ định dạng trong HTML. Các thẻ này được sử dụng để làm cho văn bản đậm, nghiêng hoặc gạch chân. Có 12 lựa chọn định dạng văn bản có sẵn trong HTML. </p>

                            <h2 id="goto-h2-2">1. Chữ đậm trong HTML </h2>
                            <p> Sử dụng thẻ &lt;b&gt;............&lt;/b&gt; để hiển thị chữ đậm. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_819019" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;&lt;</code><code class="xml keyword">b</code><code class="xml plain">&gt; Đây là đoạn văn có chữ đậm.&lt;/</code><code class="xml keyword">b</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre><b> Đây là đoạn văn có chữ đậm.</b>
</pre>
                            </div>
                            <div style="height: 10px"></div>
                            <h2 id="goto-h2-3">2. Chữ nghiêng trong HTML </h2>
                            <p> Sử dụng thẻ &lt;i&gt;............&lt;/i&gt; để hiển thị chữ nghiêng. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_772214" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;&lt;</code><code class="xml keyword">b</code><code class="xml plain">&gt; Đây là đoạn văn có chữ nghiêng.&lt;/</code><code class="xml keyword">b</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre><i> Đây là đoạn văn có chữ nghiêng.</i>
</pre>
                            </div>

                            <h2 id="goto-h2-4">3. Chữ bị ngạch chân trong HTML </h2>
                            <p> Sử dụng thẻ &lt;u&gt;............&lt;/u&gt; để hiển thị chữ bị ngạch chân. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_874997" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt; &lt;</code><code class="xml keyword">u</code><code class="xml plain">&gt; Đây là đoạn văn có chữ bị ngạch chân.&lt;/</code><code class="xml keyword">u</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre><u> Đây là đoạn văn có chữ bị ngạch chân. </u>
</pre>
                            </div>

                            <div style="height: 10px"></div>
                            <h2 id="goto-h2-5">4. Đánh dấu văn bản trong HTML </h2>
                            <p> Sử dụng thẻ &lt;mark&gt;............&lt;/mark&gt; để đánh dấu văn bản. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_596428" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;Đánh dấu chữ &lt;</code><code class="xml keyword">mark</code><code class="xml plain">&gt; Test &lt;/</code><code class="xml keyword">mark</code><code class="xml plain">&gt; &lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>Đánh dấu chữ <mark> Test </mark>
</pre>
                            </div>

                            <h2 id="goto-h2-6"> 5. Chữ bị kẻ ngang trong HTML </h2>
                            <p> Sử dụng thẻ &lt;strike&gt;............&lt;/strike&gt; để hiển thị chữ bị kẻ ngang. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_435607" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;&lt;</code><code class="xml keyword">strike</code><code class="xml plain">&gt; Đây là đoạn văn có chữ bị kẻ ngang.&lt;/</code><code class="xml keyword">strike</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre><strike> Đây là đoạn văn có chữ bị kẻ ngang. </strike>
</pre>
                            </div>

                            <div style="height: 10px"></div>
                            <h2 id="goto-h2-7"> 6. Chữ đơn cách. </h2>
                            <p> Sử dụng thẻ &lt;tt&gt;............&lt;/tt&gt; để hiển thị từng ký tự trong văn bản với độ rộng bằng nhau. </p>
                            <div class="codeblock">
                                <div><div id="highlighter_848885" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;Hello &lt;</code><code class="xml keyword">tt</code><code class="xml plain">&gt; Các ký tự có độ rộng bằng nhau. &lt;/</code><code class="xml keyword">tt</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>Hello <tt> Các ký tự có độ rộng bằng nhau. </tt>
</pre>
                            </div>

                            <h2 id="goto-h2-8"> 7. Hiển thị văn bản bên trên văn bản khác. </h2>
                            <p> Sử dụng thẻ &lt;sup&gt;............&lt;/sup&gt; để hiển thị văn bản bên trên một văn bản khác. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_426211" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;2&lt;</code><code class="xml keyword">sup</code><code class="xml plain">&gt;3 &lt;/</code><code class="xml keyword">sup</code><code class="xml plain">&gt; = 8&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>2<sup>3 </sup> = 8
</pre>
                            </div>

                            <div style="height: 10px"></div>

                            <h2 id="goto-h2-9"> 8. Hiển thị văn bản bên dưới văn bản khác. </h2>
                            <p> Sử dụng thẻ &lt;sub&gt;............&lt;/sub&gt; để hiển thị văn bản bên dưới một văn bản khác. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_622635" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;Hello &lt;</code><code class="xml keyword">sub</code><code class="xml plain">&gt; chữ bên dưới &lt;/</code><code class="xml keyword">sub</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>Hello <sub> chữ bên dưới </sub>
</pre>
                            </div>

                            <h2 id="goto-h2-10"> 9. Chữ bị xóa trong HTML </h2>
                            <p> Sử dụng thẻ &lt;del&gt;............&lt;/del&gt; để hiển thị chữ bị xóa. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_186466" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;Hello &lt;</code><code class="xml keyword">del</code><code class="xml plain">&gt; Đây là chữ đã bị xóa.&lt;/</code><code class="xml keyword">del</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>Hello <del> Đây là chữ đã bị xóa.</del>
</pre>
                            </div>

                            <div style="height: 10px"></div>

                            <h2 id="goto-h2-11"> 10. Chèn chữ trong HTML </h2>
                            <p> Sử dụng thẻ &lt;ins&gt;............&lt;/ins&gt; để hiển thị chữ được chèn vào. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_120653" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;&lt;</code><code class="xml keyword">del</code><code class="xml plain">&gt; Chữ bị xóa &lt;/</code><code class="xml keyword">del</code><code class="xml plain">&gt; &lt;</code><code class="xml keyword">ins</code><code class="xml plain">&gt; Đây là chữ được chèn vào.&lt;/</code><code class="xml keyword">ins</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre><del> Chữ bị xóa </del> <ins> Đây là chữ được chèn vào.</ins>
</pre>
                            </div>

                            <h2 id="goto-h2-12"> 11. Chữ to trong HTML </h2>
                            <p> Sử dụng thẻ &lt;big&gt;............&lt;/big&gt; để hiển thị chữ to hơn. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_327867" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;Hello &lt;</code><code class="xml keyword">big</code><code class="xml plain">&gt; Chữ to hơn. &lt;/</code><code class="xml keyword">big</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>Hello <big> Chữ to hơn. </big>
</pre>
                            </div>

                            <h2 id="goto-h2-13"> 12. Chữ nhỏ trong HTML </h2>
                            <p> Sử dụng thẻ &lt;small&gt;............&lt;/small&gt; để hiển thị chữ nhỏ hơn. Ví dụ: </p>
                            <div class="codeblock">
                                <div><div id="highlighter_459447" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code><code class="xml plain">&gt;Hello &lt;</code><code class="xml keyword">small</code><code class="xml plain">&gt; Chữ nhỏ hơn. &lt;/</code><code class="xml keyword">small</code><code class="xml plain">&gt;&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                            </div>
                            <p> Output: </p>
                            <div class="codeblock3">
<pre>Hello <small> Chữ nhỏ hơn. </small>
</pre>
                            </div>

                            <hr>
                            <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read1">[Bài đọc] HTML là gì?</a></div>
                            <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read3">[Bài đọc] Thuộc tính style trong HTML</a></div>
                            <div class="clearer"></div>
                            <hr>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
