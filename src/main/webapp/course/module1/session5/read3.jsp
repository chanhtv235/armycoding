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
                <a href="${pageContext.request.contextPath}/course/module1/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5.Biến, kiểu dữ liệu và toán tử</a>
                <header class="entry-header">
                    <h1 class="entry-title">Kiểu dữ liệu trong JavaScript
                    </h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn">
                            <a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read2">[Bài đọc] Biến toàn cầu trong JavaScript</a>
                        </div>
                        <div class="nxt-btn">
                            <a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read4">[Bài đọc] Toán tử JavaScript</a>
                        </div>
                        <div class="clearer"></div>
                        <hr>

                        <p> JavaScript cung cấp các loại dữ liệu khác nhau để giữ các loại giá trị khác nhau. Có hai
                            kiểu dữ liệu trong JavaScript. </p>
                        <ol>
                            <li> Kiểu dữ liệu nguyên thủy.</li>
                            <li> Kiểu dữ liệu không nguyên thủy (tham chiếu).</li>
                        </ol>

                        <p> JavaScript là một <strong>ngôn ngữ kiểu động</strong>, có nghĩa là bạn không cần phải chỉ
                            định loại biến vì nó được động cơ JavaScript sử dụng động. Bạn cần sử dụng var ở đây để chỉ
                            định kiểu dữ liệu. Nó có thể chứa bất kỳ loại giá trị nào như số, chuỗi, v.v. Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_801122" class="syntaxhighlighter  js">
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
                                                <div class="line number4 index3 alt1">5</div>
                                                <div class="line number4 index3 alt1">6</div>
                                                <div class="line number4 index3 alt1">7</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-html language-javascript">
&lt;script&gt;
    var a = 40; // lưu trữ một số
    var b = &quot;Luffy&quot;; //lưu trữ một chuỗi
&lt;/script&gt;
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Các kiểu dữ liệu nguyên thủy trong JavaScript</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Các kiểu dữ liệu không nguyên thủy trong JavaScript</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Các kiểu dữ liệu nguyên thủy trong JavaScript </h2>
                        <p> Có 5 kiểu dữ liệu nguyên thủy trong JavaScript, như sau: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Kiểu dữ liệu</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>String</td>
                                <td>đại diện cho chuỗi ký tự, ví dụ: "hello"</td>
                            </tr>
                            <tr>
                                <td>Number</td>
                                <td>đại diện cho các giá trị số, ví dụ 100</td>
                            </tr>
                            <tr>
                                <td>Boolean</td>
                                <td>đại diện cho giá trị boolean là false hoặc true</td>
                            </tr>
                            <tr>
                                <td>Undefined</td>
                                <td>đại diện cho giá trị không xác định</td>
                            </tr>
                            <tr>
                                <td>Null</td>
                                <td>đại diện cho null tức là không có giá trị nào cả</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>
                        <div style="height: 10px;"></div>

                        <h2 id="goto-h2-2"> Các kiểu dữ liệu không nguyên thủy trong JavaScript </h2>
                        <p> Các kiểu dữ liệu không nguyên thủy như sau: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Kiểu dữ liệu</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>Object</td>
                                <td>đại diện cho một thể hiện thông qua đó chúng tôi có thể truy cập các thành viên</td>
                            </tr>
                            <tr>
                                <td>Array</td>
                                <td>đại diện cho nhóm các giá trị tương tự</td>
                            </tr>
                            <tr>
                                <td>RegExp</td>
                                <td>đại diện cho biểu thức chính quy</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn">
                            <a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read2">[Bài đọc] Biến toàn cầu trong JavaScript</a>
                        </div>
                        <div class="nxt-btn">
                            <a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read4">[Bài đọc] Toán tử JavaScript</a>
                        </div>
                        <div class="clearer"></div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
