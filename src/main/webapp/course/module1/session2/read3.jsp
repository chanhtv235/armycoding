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
                    <h1 class="entry-title">Thuộc tính style trong html</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read2">[Bài đọc] Định dạng trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read4">[Bài đọc] Đoạn văn trong HTM</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">HTML Style</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">color của HTML Style</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">This is Green Color</a></li><li><a href="#goto-h3-2">This is Red Color</a></li></ul>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">background-color của HTML Style</a>
                                    <ul>
                                        <li><a href="#goto-h3-3">This is yellow background</a></li><li><a href="#goto-h3-4">This is red background</a></li></ul>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">font-family của HTML Style</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">font-size của HTML Style</a>
                                    <ul>
                                        <li><a href="#goto-h3-5">This is 200% h3 tag</a></li></ul>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">text-align của HTML Style</a>
                                    <ul>
                                        <li>
                                            <a href="#goto-h3-6">This text is located at right side</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> HTML Style </h2>
                        <p> Thuộc tính style trong HTML được sử dụng để thay đổi hoặc thêm kiểu cách (style) cho các thành phần HTML đang tồn tại. Có các style mặc định cho các thành phần HTML như màu nền là trắng, văn bản là đen... </p>
                        <p> Thuộc tính style có thể áp dụng cho bất kỳ thẻ HTML nào. Để áp dụng style trên thẻ HTML, bạn cần có kiến thức cơ bản về các property của css như color, background-color, text-align, font-family, font-size... </p>
                        <p> Cú pháp của thuộc tính style </p>
                        <div class="codeblock">
                            <div><div id="highlighter_65867" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">style = "property:value"</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h2 id="goto-h2-2"> color của HTML Style </h2>
                        <p> Đặc tính color được sử dụng để định nghĩa màu văn bản. </p>
                        <p> Ví dụ về color </p>
                        <div class="codeblock">
                            <div><div id="highlighter_363017" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">h3</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"color:green"</code><code class="xml plain">&gt;This is Green Color&lt;/</code><code class="xml keyword">h3</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">h3</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"color:red"</code><code class="xml plain">&gt;This is Red Color&lt;/</code><code class="xml keyword">h3</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <h3 id="goto-h3-1" style="color:green">This is Green Color</h3>
                        <h3 id="goto-h3-2" style="color:red">This is Red Color</h3>
                        <hr>

                        <div style="height: 10px"></div>
                        <h2 id="goto-h2-3"> background-color của HTML Style </h2>
                        <p> Đặc tính background-color được sử dụng để định nghĩa màu nền cho các thẻ HTML. </p>
                        <p> Ví dụ về background-color </p>
                        <div class="codeblock">
                            <div><div id="highlighter_328471" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">h3</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"background-color:yellow;"</code><code class="xml plain">&gt;This is yellow background&lt;/</code><code class="xml keyword">h3</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">h3</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"background-color:red;color:white"</code><code class="xml plain">&gt;This is red background&lt;/</code><code class="xml keyword">h3</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <h3 id="goto-h3-3" style="background-color:yellow;">This is yellow background</h3>
                        <h3 id="goto-h3-4" style="background-color:red;color:white">This is red background</h3>
                        <hr>

                        <h2 id="goto-h2-4"> font-family của HTML Style </h2>
                        <p> Đặc tính font-family được sử dụng để chỉ định font chữ cho các thẻ HTML. </p>
                        <p> Ví dụ về font-family </p>
                        <div class="codeblock">
                            <div><div id="highlighter_248189" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"font-family:times new roman"</code><code class="xml plain">&gt;This is times new roman font family&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">p</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"font-family:arial"</code><code class="xml plain">&gt;This is arial font family&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <p style="font-family:times new roman">This is times new roman font family</p>
                        <p style="font-family:arial">This is arial font family</p>
                        <hr>

                        <div style="height: 10px"></div>

                        <h2 id="goto-h2-5"> font-size của HTML Style </h2>
                        <p> Đặc tính font-size được sử dụng để định nghĩa kích thước của văn bản của các thẻ HTML. </p>
                        <p> Ví dụ về font-size </p>
                        <div class="codeblock">
                            <div><div id="highlighter_41535" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">h3</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"font-size:200%"</code><code class="xml plain">&gt;This is 200% h3 tag&lt;/</code><code class="xml keyword">h3</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">p</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"font-size:200%"</code><code class="xml plain">&gt;This is 200% p tag&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">p</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"font-size:20px"</code><code class="xml plain">&gt;This is 16px p tag&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <h3 id="goto-h3-5" style="font-size:200%">This is 200% h3 tag</h3>
                        <p style="font-size:200%">This is 200% p tag</p>
                        <p style="font-size:20px">This is 16px p tag</p>
                        <hr>

                        <h2 id="goto-h2-6"> text-align của HTML Style </h2>
                        <p> Đặc tính text-align được sử dụng để định nghĩa vị trí của văn bản cho các thẻ HTML. text-align có các giá trị là left, center, right. </p>
                        <p> Ví dụ về text-align </p>
                        <div class="codeblock">
                            <div><div id="highlighter_725563" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">h3</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"text-align:right;background-color:pink;"</code><code class="xml plain">&gt;This text is located at right side&lt;/</code><code class="xml keyword">h3</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml plain">&lt;</code><code class="xml keyword">p</code> <code class="xml color1">style</code><code class="xml plain">=</code><code class="xml string">"text-align:center;background-color:pink;"</code><code class="xml plain">&gt;This text is located at center side&lt;/</code><code class="xml keyword">p</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <h3 id="goto-h3-6" style="text-align:right;background-color:pink;">This text is located at right side</h3>
                        <p style="text-align:center;background-color:pink;">This text is located at center side</p>
                        <hr>

                        <div class="note"> Chú ý: thẻ &lt;center&gt; không được hỗ trợ trong HTML5 mà chỉ được hỗ trợ trong các version trước của HTML. </div>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read2">[Bài đọc] Định dạng trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read4">[Bài đọc] Đoạn văn trong HTM</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
