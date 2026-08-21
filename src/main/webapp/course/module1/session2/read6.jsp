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
                    <h1 class="entry-title">Ảnh trong html</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read5">[Bài đọc] Liên kết trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read7">[Bài đọc] Danh sách trong HTML</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Ảnh trong HTML</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Các thuộc tính của thẻ img</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">1. Thuộc tính src</a></li>
                                        <li><a href="#goto-h3-2">2. Thuộc tính alt</a></li>
                                        <li><a href="#goto-h3-3">3. Thuộc tính width</a></li>
                                        <li><a href="#goto-h3-4">3. Thuộc tính height</a></li>
                                    </ul>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các trình duyệt hộ trợ thẻ img</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Ảnh trong HTML </h2>
                        <p> Thẻ img trong HTML được sử dụng để hiển thị hình ảnh trên trang web. Thẻ img là một thẻ
                            trống chỉ chứa các thuộc tính và không có thẻ đóng. </p>
                        <p> Ví dụ 1: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_618438" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-html">
&lt;h2&gt;Hiển thị ảnh trong HTML&lt;/h2&gt;
&lt;img src=&quot;/images/html/good-morning.jpg&quot; alt=&quot;Good Morning!&quot;/&gt;
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Kết quả: </p>
                        <img src="https://viettuts.vn//images/html/good-morning.jpg" alt="Good Morning!">

                        <p> Ví dụ 2: ảnh không tồn tại, khi đường dẫn ảnh không tồn tại trình duyệt sẽ hiển thị văn bản
                            được định nghĩa trong thuộc tính alt </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_520043" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-html">
&lt;h2&gt;Hiển thị ảnh trong HTML&lt;/h2&gt;
&lt;img src=&quot;/images/html/good-morning2.jpg&quot; alt=&quot;Good Morning!&quot;/&gt;
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Kết quả: </p>
                        <img src="https://viettuts.vn//images/html/good-morning2.jpg" alt="Good Morning!">

                        <h2 id="goto-h2-2"> Các thuộc tính của thẻ img </h2>
                        <p> src và alt là các thuộc tính quan trọng của thẻ img trong HTML. Dưới đây là tất cả các thuộc
                            tính của thẻ img trong HTML. </p>
                        <h3 id="goto-h3-1"> 1. Thuộc tính src </h3>
                        <p> Đây là một thuộc tính cần thiết mô tả nguồn hoặc đường dẫn của hình ảnh. Nó chỉ thị trình
                            duyệt nơi để tìm kiếm hình ảnh trên máy chủ. </p>
                        <p> Vị trí của hình ảnh có thể nằm trên cùng một thư mục hoặc máy chủ khác. </p>
                        <h3 id="goto-h3-2"> 2. Thuộc tính alt </h3>
                        <p> Thuộc tính alt xác định một văn bản thay thế cho hình ảnh, nếu nó không thể được hiển thị.
                            Giá trị của thuộc tính alt mô tả hình ảnh bằng văn bản. Thuộc tính alt sử dụng có lợi cho
                            SEO. </p>
                        <h3 id="goto-h3-3"> 3. Thuộc tính width</h3>
                        <p> Nó là một thuộc tính tùy chọn được sử dụng để xác định chiều rộng để hiển thị hình ảnh. Bạn
                            nên sử dụng CSS với thuộc tính width để điều chỉnh thay vì sử dụng thuộc tính width trong
                            thẻ img. </p>
                        <h3 id="goto-h3-4"> 3. Thuộc tính height</h3>
                        <p> Nó là một thuộc tính tùy chọn được sử dụng để xác định chiều cao để hiển thị hình ảnh. Bạn
                            nên sử dụng CSS với thuộc tính height để điều chỉnh thay vì sử dụng thuộc tính height trong
                            thẻ img. </p>

                        <h2 id="goto-h2-3"> Các trình duyệt hộ trợ thẻ img </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <td>Thẻ</td>
                                <td><img src="https://viettuts.vn/images/html/chrome_browser.png" alt="chrome browser"> Chrome</td>
                                <td><img src="https://viettuts.vn/images/html/ie_browser.png" alt="ie browser"> IE</td>
                                <td><img src="https://viettuts.vn/images/html/firefox_browser.png" alt="firefox browser"> Firefox</td>
                                <td><img src="https://viettuts.vn/images/html/opera_browser.png" alt="opera browser"> Opera</td>
                                <td><img src="https://viettuts.vn/images/html/safari_browser.png" alt="safari browser"> Safari</td>
                            </tr>
                            <tr>
                                <td>&lt;img&gt;</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                                <td>Yes</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read5">[Bài đọc] Liên kết trong HTML</a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read7">[Bài đọc] Danh sách trong HTML</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
