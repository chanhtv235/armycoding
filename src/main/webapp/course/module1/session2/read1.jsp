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
                    <h1 class="entry-title">HTML là gì?</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left"
                                                            aria-hidden="true"></i></a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read2">[Bài đọc] Định dạng trong HTML </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">HTML là gì?</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Các đặc điểm của HTML</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Trình soạn thảo HTML</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Hiển thị tiếng Việt trong HTML</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Các trình duyệt web được sử phổ biến</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> HTML là gì? </h2>
                        <p> HTML là viết tắt của từ Hyper Text Markup Language, có nghĩa là ngôn ngữ đánh dấu siêu văn
                            bản. HTML được sử dụng để định dạng và hiển thị văn bản trên trình duyệt tới người sử dụng.
                            Nó là xương sống của một trang web. </p>
                        <p> Vậy thì Hyper Text và Markup Language là gì? </p>
                        <p><strong>Hyper Text: </strong> siêu văn bản có nghĩa là "văn bản trong văn bản". Một văn bản
                            có chứa một liên kết (link) là một siêu văn bản. Mỗi lần bản click vào một từ từ đó đưa bạn
                            tới một trang web mới, đó là siêu văn bản. </p>
                        <p><strong>Markup Language: </strong> ngôn ngữ đánh dấu là một ngôn ngữ lập trình được sử dụng
                            để giúp văn bản dễ tương tác và linh động hơn. Nó có thể đặt văn bản vào trong các ảnh,
                            bảng, liên kết... </p>
                        <p> Một tài liệu HTML chưa nhiều thẻ HTML và mỗi thẻ HTML chứa các nội dung khác nhau. </p>
                        <p> Ví dụ, một trang web chuẩn thì có chứa các thẻ HTML như sau: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_775182" class="syntaxhighlighter  xml">
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
                                                <div class="line number12 index11 alt1">13</div>
                                                <div class="line number12 index11 alt1">14</div>
                                                <div class="line number12 index11 alt1">15</div>
                                                <div class="line number12 index11 alt1">16</div>
                                                <div class="line number12 index11 alt1">17</div>
                                                <div class="line number12 index11 alt1">18</div>
                                                <div class="line number12 index11 alt1">19</div>
                                                <div class="line number12 index11 alt1">20</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-html">
&lt;!DOCTYPE&gt;
&lt;html&gt;
    &lt;head&gt;
     &lt;!--
  Thông tin cơ bản của trang web
  và các liên kết đến css, javascript
  --&gt;
    &lt;/head&gt;
    &lt;body&gt;
        &lt;!-- Nội dung trang web --&gt;
    &lt;/body&gt;
&lt;/html&gt;
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Trong đó, thẻ &lt;head&gt; chứa thông tin được ẩn (không hiển thị lên trình duyệt) bao gồm
                            thông tin cơ bản và các liên kết đến file css, javascript, ... Còn thẻ &lt;body&gt; chưa
                            thông tin bạn muốn hiển thị lên trình duyệt. </p>
                        <br>
                        <h2 id="goto-h2-2"> Các đặc điểm của HTML </h2>
                        <p> 1. Đây là một ngôn ngữ rất dễ dàng và đơn giản. </p>
                        <p> 2. Rất dễ dàng để trình bày hiệu quả với HTML vì nó có nhiều thẻ định dạng. </p>
                        <p> 3. Đây là một ngôn ngữ đánh dấu vì vậy có thể sử dụng nó một cách linh hoạt để thiết kế
                            trang web cùng với văn bản. </p>
                        <p> 4. Có thể liên kết đến các trang web khác. </p>
                        <p> 5. Là một nền tảng độc lập vì nó có thể hiển thị trên bất kỳ nền tảng nào khác như Windows,
                            Linux và Max. </p>
                        <p> 6. Có thể thêm các hình ảnh, video, âm thanh vào các trang web khiến nó hấp dẫn và dễ tương
                            tác hơn. </p>

                        <h2 id="goto-h2-3"> Trình soạn thảo HTML </h2>
                        <p> Trang web có thể được tạo ra và chỉnh sửa bởi trình soạn thảo HTML chuyên nghiệp. Tuy nhiên
                            để học HTML bạn nên sử dụng trình soạn thảo văn bản đơn giản ví dụ như Notepad (Window),
                            TextEdit (Mac), hoặc pro hơn chút như notepad++. </p>
                        <p> Sau đây là các bước để sử dụng Notepad (trên Window) </p>
                        <h4> Bước 1. Open Notepad </h4>
                        <p> Ở thư mục hiện tại click chuột phải --&gt; New --&gt; Text Document --&gt; file New Text
                            Document.txt được tạo ra. </p>
                        <p> Mở file New Text Document.txt: chọn file New Text Document.txt --&gt; click chuột phải --&gt;
                            Open With --&gt; Notepad </p>
                        <h4> Bước 2. Viết HTML </h4>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_898658" class="syntaxhighlighter  xml">
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
                                                <div class="line number7 index6 alt2">8</div>
                                                <div class="line number7 index6 alt2">9</div>
                                                <div class="line number7 index6 alt2">10</div>
                                                <div class="line number7 index6 alt2">11</div>
                                                <div class="line number7 index6 alt2">12</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-html">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;body&gt;
    &lt;h1&gt;Tiêu đề đầu tiên&lt;/h1&gt;
    &lt;p&gt;Đoạn văn đầu tiên.&lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <img  style="width: 50%" class="alignleft wp-image-10 size-full"
                             src="${pageContext.request.contextPath}/course/module1/session2/img/read1/img.png"
                             alt="soan-thao-html">
                        <div class="clearer"></div>

                        <h4> Bước 3: Lưu trang web </h4>
                        <p> Chọn File --&gt; Save As </p>
                        <p> Nhập file name: index.html </p>
                        <p> Chọn Save as type: All files (*.*) </p>
                        <p> Chọn Encoding: UTF-8 </p>
                        <p> Click Save để lưu file. </p>
                        <img style="width: 50%" class="alignleft wp-image-10 size-full"
                             src="${pageContext.request.contextPath}/course/module1/session2/img/read1/img_1.png"
                             alt="soan-thao-html-luu-file">
                        <div class="clearer"></div>

                        <h4> Bước 4: Hiển thị trang HTML vừa tạo ở trên </h4>
                        <p> Để mở file HTML vừa lưu ở trên, bạn double click vào file đó hoặc click chuột phải --&gt;
                            Open with --&gt; Chọn browser (trình duyệt web) bạn muốn mở. </p>
                        <p> Kết quả: </p>
                        <img style="width: 50%" class="alignleft wp-image-10 size-full"
                             src="${pageContext.request.contextPath}/course/module1/session2/img/read1/img_2.png"
                             alt="trang-web-dau-tien">
                        <div class="clearer"></div>

                        <br>
                        <h2 id="goto-h2-4"> Hiển thị tiếng Việt trong HTML </h2>
                        <p> Để hiển thị tiếng Việt trong HTML, bạn cần phải cài đặt encoding là UTF-8 với cú pháp như
                            sau: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_219129" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number3 index2 alt2">4</div>
                                                <div class="line number3 index2 alt2">5</div>
                                                <div class="line number3 index2 alt2">6</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                <pre><code class="language-html">
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
&lt;/head&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <h2 id="goto-h2-5"> Các trình duyệt web được sử phổ biến </h2>
                        <p> Phổ biến trên thế giới </p>
                        <ul>
                            <li><img src="https://viettuts.vn/images/html/chrome_browser.png" alt="chrome browser"> Chrome</li>
                            <li><img src="https://viettuts.vn/images/html/ie_browser.png" alt="chrome browser"> IE</li>
                            <li><img src="https://viettuts.vn/images/html/firefox_browser.png" alt="chrome browser"> Firefox</li>
                            <li><img src="https://viettuts.vn/images/html/opera_browser.png" alt="chrome browser"> Opera</li>
                            <li><img src="https://viettuts.vn/images/html/safari_browser.png" alt="chrome browser"> Safari</li>
                        </ul>
                        <p> Ở Việt Nam có Cốc Cốc </p>
                        <ul>
                            <li><img src="https://viettuts.vn/images/html/coccoc_browser.png" alt="chrome browser"> Cốc Cốc</li>
                        </ul>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left"
                                                                aria-hidden="true"></i></a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=read2">[Bài đọc] Định dạng trong HTML </a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>

            </div>
        </div>
    </div>
</body>
</html>
