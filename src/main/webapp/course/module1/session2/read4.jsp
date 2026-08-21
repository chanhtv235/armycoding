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
                    <h1 class="entry-title">Đoạn văn trong HTML</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read3">[Bài đọc] Thuộc tính style trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read5">[Bài đọc] Liên kết trong HTML </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Đoạn văn trong HTML</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Khoảng trắng ở giữa văn bản trong HTML</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các trình duyệt hỗ trợ thẻ p</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Đoạn văn trong HTML </h2>
                        <p> Đoạn văn trong HTML hoặc thẻ p trong HTML được sử dụng để xác định một đoạn trong một trang
                            web. Khi sử dụng thẻ p trình duyệt tự thêm một dòng rỗng trước và sau một đoạn văn. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_807256" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">p</code><code class="xml plain">&gt; Đây
                                                        là đoạn đầu tiên. &lt;/</code><code class="xml keyword">p</code><code
                                                            class="xml plain">&gt;</code></div>
                                                    <div class="line number2 index1 alt1"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">p</code><code class="xml plain">&gt; Đây
                                                        là đoạn thứ hai. &lt;/</code><code
                                                            class="xml keyword">p</code><code
                                                            class="xml plain">&gt;</code></div>
                                                    <div class="line number3 index2 alt2"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">p</code><code class="xml plain">&gt; Đây
                                                        là đoạn thứ ba. &lt;/</code><code
                                                            class="xml keyword">p</code><code
                                                            class="xml plain">&gt;</code></div>
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
<pre>Đây là đoạn đầu tiên.
Đây là đoạn thứ hai.
Đây là đoạn thứ ba.
</pre>
                        </div>

                        <h2 id="goto-h2-2"> Khoảng trắng ở giữa văn bản trong HTML </h2>
                        <p> Nếu bạn để nhiều khoảng trắng và xuống dòng ở bên trong đoạn văn. Khi hiển thị trang web,
                            trình duyệt sẽ xóa chúng đi và để lại một dấu cách duy nhất. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_170573" class="syntaxhighlighter  xml">
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
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">p</code><code class="xml plain">&gt; Đây
                                                        là </code></div>
                                                    <div class="line number2 index1 alt1"><code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="xml plain">những bài hướng dẫn học </code></div>
                                                    <div class="line number3 index2 alt2"><code class="xml plain">HTML&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        và tôi hy vọng </code></div>
                                                    <div class="line number4 index3 alt1"><code class="xml plain">chúng
                                                        sẽ có ích cho bạn. &lt;/</code><code
                                                            class="xml keyword">p</code><code
                                                            class="xml plain">&gt;</code></div>
                                                    <div class="line number5 index4 alt2"><code
                                                            class="xml plain">&lt;</code><code
                                                            class="xml keyword">p</code><code class="xml plain">&gt; Đây
                                                        là đoạn văn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        có rất nhiều khoảng trống ở giữa </code></div>
                                                    <div class="line number6 index5 alt1"><code class="xml plain">nhưng
                                                        trình duyệt sẽ bỏ qua chúng khi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        hiển thị. &lt;/</code><code class="xml keyword">p</code><code
                                                            class="xml plain">&gt;</code></div>
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
                            <p> Đây là
                                những bài hướng dẫn học
                                HTML và tôi hy vọng
                                chúng sẽ có ích cho bạn. </p>
                            <p> Đây là đoạn văn có rất nhiều khoảng trống ở giữa
                                nhưng trình duyệt sẽ bỏ qua chúng khi hiển thị. </p>
                        </div>

                        <h2 id="goto-h2-3"> Các trình duyệt hỗ trợ thẻ p </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <td>Thẻ</td>
                                <td><img src="https://viettuts.vn//images/html/chrome_browser.png" alt="chrome browser">
                                    Chrome
                                </td>
                                <td><img src="https://viettuts.vn//images/html/ie_browser.png" alt="ie browser"> IE</td>
                                <td><img src="https://viettuts.vn//images/html/firefox_browser.png" alt="firefox browser"> Firefox</td>
                                <td><img src="https://viettuts.vn//images/html/opera_browser.png" alt="opera browser"> Opera</td>
                                <td><img src="https://viettuts.vn//images/html/safari_browser.png" alt="safari browser"> Safari</td>
                            </tr>
                            <tr>
                                <td>&lt;p&gt;</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read3">[Bài đọc] Thuộc tính style trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read5">[Bài đọc] Liên kết trong HTML </a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
