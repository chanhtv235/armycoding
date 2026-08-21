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
                    <h1 class="entry-title">Danh sách trong HTML</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read6">[Bài đọc] Ảnh trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read8">[Bài đọc] Bảng màu trong HTML</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Danh sách trong HTML</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Danh sách có thứ tự hay danh sách có đánh số (ol)</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Danh sách không có thứ tự (ul)</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Danh sách mô tả (dl)</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Danh sách trong HTML </h2>
                        <p> Danh sách trong HTML được sử dụng để hiển thị danh sách thông tin. Có ba loại khác nhau của danh sách HTML: </p>
                        <ol>
                            <li> Danh sách có thứ tự hay danh sách có đánh số (ol) </li>
                            <li> Danh sách không có thứ tự (ul) </li>
                            <li> Danh sách mô tả (dl) </li>
                        </ol>

                        <hr>
                        <div style="height: 10px"></div>
                        <h2 id="goto-h2-2"> Danh sách có thứ tự hay danh sách có đánh số (ol) </h2>
                        <p> Trong các danh sách HTML có thứ tự, tất cả các mục danh sách được đánh dấu bằng các con số tăng dần. Danh sách có thứ tự bắt đầu với thẻ &lt;ol&gt; và các mục danh sách bắt đầu bằng thẻ &lt;li&gt;. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_817722" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">ol</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Aries&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Bingo&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Leo&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number5 index4 alt2"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Oracle&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number6 index5 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">ol</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
                            <ol>
                                <li>Aries</li>
                                <li>Bingo</li>
                                <li>Leo</li>
                                <li>Oracle</li>
                            </ol>
                        </div>
                        <p> Chi tiết <a href="#">danh sách có thứ tự trong HTML</a>

                        </p><hr>
                        <h2 id="goto-h2-3"> Danh sách không có thứ tự (ul) </h2>
                        <p> Trong các danh sách HTML không có thứ tự, tất cả các mục danh sách được đánh dấu bằng các dấu chấm tròn. Danh sách không có thứ tự bắt đầu với thẻ &lt;ul&gt; và các mục danh sách bắt đầu bằng thẻ &lt;li&gt;. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_166925" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">ul</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Aries&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Bingo&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Leo&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number5 index4 alt2"><code class="xml spaces">&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">li</code><code class="xml plain">&gt;Oracle&lt;/</code><code class="xml keyword">li</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number6 index5 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">ul</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
                            <ul>
                                <li>Aries</li>
                                <li>Bingo</li>
                                <li>Leo</li>
                                <li>Oracle</li>
                            </ul>
                        </div>
                        <p> Chi tiết <a href="#">danh sách không có thứ tự trong HTML</a>

                        </p><hr>
                        <div style="height: 10px"></div>
                        <h2 id="goto-h2-4"> Danh sách mô tả (dl) </h2>
                        <p> Danh sách mô tả HTML cũng là một kiểu danh sách được hỗ trợ bởi HTML và XHTML. Nó còn được gọi là danh sách định nghĩa, nơi các mục được liệt kê như một từ điển. </p>
                        <p> Danh sách định nghĩa là rất thích hợp khi bạn muốn trình bày bảng thuật ngữ, danh sách các điều khoản hoặc danh sách giá trị tên khác. </p>
                        <p> Danh sách định nghĩa HTML bao gồm ba thẻ sau: </p>
                        <ol>
                            <li><b><font><font>Thẻ &lt;dl&gt; </font></font></b><font><font> là thẻ bắt đầu của danh sách mô tả.</font></font></li>
                            <li><b><font><font>Thẻ &lt;dt&gt; </font></font></b><font><font> định nghĩa một thuật ngữ.</font></font></li>
                            <li><b><font><font>Thẻ &lt;dd&gt; </font></font></b><font><font class=""> định nghĩa mô tả.</font></font></li>
                        </ol>
                        <div class="codeblock">
                            <div><div id="highlighter_483777" class="syntaxhighlighter  xml"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="xml plain">&lt;</code><code class="xml keyword">dl</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dt</code><code class="xml plain">&gt; Bạch Dương &lt;/</code><code class="xml keyword">dt</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dd</code><code class="xml plain">&gt; - Một trong 12 cung tử vi. &lt;/</code><code class="xml keyword">dd</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dt</code><code class="xml plain">&gt; Bingo &lt;/</code><code class="xml keyword">dt</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number5 index4 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dd</code><code class="xml plain">&gt; - Là một món ăn &lt;/</code><code class="xml keyword">dd</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number6 index5 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dt</code><code class="xml plain">&gt; Leo &lt;/</code><code class="xml keyword">dt</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number7 index6 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dd</code><code class="xml plain">&gt; - Là một trong 12 cung tử vi. &lt;/</code><code class="xml keyword">dd</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number8 index7 alt1"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dt</code><code class="xml plain">&gt; Oracle &lt;/</code><code class="xml keyword">dt</code><code class="xml plain">&gt;&nbsp; </code></div><div class="line number9 index8 alt2"><code class="xml spaces">&nbsp;&nbsp;</code><code class="xml plain">&lt;</code><code class="xml keyword">dd</code><code class="xml plain">&gt; - Là một tập đoàn công nghệ đa quốc gia. &lt;/</code><code class="xml keyword">dd</code><code class="xml plain">&gt;&nbsp;&nbsp; </code></div><div class="line number10 index9 alt1"><code class="xml plain">&lt;/</code><code class="xml keyword">dl</code><code class="xml plain">&gt;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
                            <dl>
                                <dt> Bạch Dương </dt>
                                <dd> - Một trong 12 cung tử vi. </dd>
                                <dt> Bingo </dt>
                                <dd> Là một món ăn </dd>
                                <dt> Leo </dt>
                                <dd> - Là một trong 12 cung tử vi. </dd>
                                <dt> Oracle </dt>
                                <dd> - Là một tập đoàn công nghệ đa quốc gia. </dd>
                            </dl>
                        </div>
                        <p> Chi tiết <a href="#">danh sách mô tả trong HTML</a>

                        </p>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read6">[Bài đọc] Ảnh trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read8">[Bài đọc] Bảng màu trong HTML</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
