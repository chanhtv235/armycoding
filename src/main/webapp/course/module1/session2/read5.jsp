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
                    <h1 class="entry-title">Liên kết trong html</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read4">[Bài đọc] Đoạn văn trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read6">[Bài đọc] Ảnh trong HTML</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Liên kết trong HTML</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Thuộc tính href của thẻ &lt;a&gt; trong HTML</a></li>
                                        <li><a href="#goto-h3-2">Hiển thị thẻ &lt;a&gt;</a></li>
                                    </ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Trình duyệt hỗ trợ.</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Liên kết trong HTML </h2>
                        <p> Thẻ liên kết trong HTML hay thẻ anchor &lt;a&gt; trong HTML định nghĩa một liên kết được sử
                            dụng để liên kết một trang với một trang khác. Thuộc tính "href" là thuộc tính quan trọng
                            nhất của thẻ HTML. </p>

                        <h3 id="goto-h3-1"> Thuộc tính href của thẻ &lt;a&gt; trong HTML </h3>
                        <p> Thuộc tính href được sử dụng để xác định địa chỉ của tệp được liên kết. Nói cách khác, nó
                            chỉ ra trang đích. Cú pháp: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_18200" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">a</code> <code
                                                            class="xml color1">href</code> <code
                                                            class="xml plain">= </code><code class="xml string">"..........."</code><code
                                                            class="xml plain">&gt; Văn bản liên Kết &lt;/</code><code
                                                            class="xml keyword">a</code><code
                                                            class="xml plain">&gt;</code></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_429187" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">a</code> <code
                                                            class="xml color1">href</code><code
                                                            class="xml plain">=</code><code class="xml string">"second.html"</code><code
                                                            class="xml plain">&gt;Click to open &lt;/</code><code
                                                            class="xml keyword">a</code><code class="xml plain">&gt;&nbsp; </code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <h3 id="goto-h3-2"> Hiển thị thẻ &lt;a&gt; </h3>
                        <p> Một liên kết chưa truy cập được hiển thị gạch dưới và có màu xanh lam. </p>
                        <p> Một liên kết đã truy cập được gạch chân và có tím. </p>
                        <p> Một liên kết đang hoạt động được gạch dưới và có màu đỏ. </p>

                        <div class="note">Chú ý: Nội dung của thẻ a có thể là văn bản hoặc hình ảnh.</div>

                        <div style="height: 10px"></div>
                        <br>
                        <h2 id="goto-h2-2"> Trình duyệt hỗ trợ. </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <td>Thẻ</td>
                                <td><img src="https://viettuts.vn//images/html/chrome_browser.png" alt="chrome browser"> Chrome</td>
                                <td><img src="https://viettuts.vn//images/html/ie_browser.png" alt="ie browser"> IE</td>
                                <td><img src="https://viettuts.vn//images/html/firefox_browser.png" alt="firefox browser"> Firefox</td>
                                <td><img src="https://viettuts.vn//images/html/opera_browser.png" alt="opera browser"> Opera</td>
                                <td><img src="https://viettuts.vn//images/html/safari_browser.png" alt="safari browser"> Safari</td>
                            </tr>            
                            <tr>
                                <td>&lt;a&gt;</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read4">[Bài đọc] Đoạn văn trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read6">[Bài đọc] Ảnh trong HTML</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
