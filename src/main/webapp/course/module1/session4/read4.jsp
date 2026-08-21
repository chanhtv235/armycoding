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
                <a href="${pageContext.request.contextPath}/course/module1/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4.Tổng quan về Javascript</a>
                <header class="entry-header">
                    <h1 class="entry-title">Sự kiện (Event) trong JavaScript</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read3">[Bài đọc] Cú pháp trong JavaScript</a></div>
                        <div class="nxt-btn"></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Sự kiện là gì?</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Tương tác với sự kiện</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Sự kiện onclick</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Sự kiện onmouseover và onmouseout</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Sự kiện onmousedown, onmouseup và onclick</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Sự kiện HTML5 chuẩn</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Sự kiện là gì? </h2>
                        <p><strong>Sự kiện (Event) trong JavaScript</strong> là sự tương tác của JavaScript với HTML xảy
                            ra khi người dùng hoặc trình duyệt thao tác với một trang web. </p>
                        <p> Các sự kiện là một phần của Document Object Model (DOM) Level 3 và mỗi phần tử HTML chứa một
                            tập hợp các sự kiện mà có thể kích hoạt chương trình JavaScript.</p>
                        <p> Ví dụ về các sự kiện HTML:
                        </p>
                        <ul>
                            <li> Khi người dùng click chuột</li>
                            <li> Khi một trang web đã được tải</li>
                            <li> Khi một hình ảnh đã được tải</li>
                            <li> Khi di chuyển chuột qua một phần tử</li>
                            <li> Khi một trường đầu vào được thay đổi</li>
                            <li> Khi một biểu mẫu HTML được submit</li>
                            <li> Khi người dùng nhấn một phím</li>
                        </ul>
                        <hr>

                        <div style="height: 10px"></div>
                        <br>
                        <h2 id="goto-h2-2"> Tương tác với sự kiện </h2>
                        <p> Một JavaScript có thể được thực thi khi một sự kiện xảy ra, như khi người dùng nhấp vào một
                            phần tử HTML. </p>
                        <p> Để thực thi mã khi người dùng nhấp vào một phần tử, hãy thêm mã JavaScript vào thuộc tính sự
                            kiện HTML: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_223767" class="syntaxhighlighter  js">
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
                                                    <div class="line number1 index0 alt2"><code class="js plain">onclick=JavaScript</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <h2 id="goto-h2-3"> Sự kiện onclick </h2>
                        <p> Đây là kiểu sự kiện được sử dụng thường xuyên nhất khi một người dùng click chuột trái. Bạn
                            có thể đặt sự xác nhận, cảnh báo, … của bạn đối với kiểu sự kiện này. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_395320" class="syntaxhighlighter  xml">
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
                                                <div class="line number20 index19 alt1">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-javascript language-css language-html">
&lt;html&gt;
&lt;head&gt;
&lt;script type=&quot;text/javascript&quot;&gt;
    function sayHello() {
        alert(&quot;Hello World&quot;)
    }
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;p&gt;Click button sau để xem kết quả:&lt;/p&gt;
  &lt;form&gt;
    &lt;input type=&quot;button&quot; onclick=&quot;sayHello()&quot; value=&quot;Xin chao!&quot; /&gt;
  &lt;/form&gt;
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
                        <p> kết quả: </p>
                        <hr>
                        <p>Click button sau để xem kết quả:</p>
                        <form>
                            <input type="button" onclick="sayHello()" value="Xin chao!"/>
                        </form>
                        <hr>

                        <div style="height: 10px"></div>
                        <h2 id="goto-h2-4"> Sự kiện onmouseover và onmouseout </h2>
                        <p> Các sự kiện onmouseover và onmouseout có thể được sử dụng để kích hoạt một hàm khi người
                            dùng di chuột qua hoặc ra khỏi một phần tử HTML: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_736632" class="syntaxhighlighter  xml">
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
                                                <div class="line number20 index19 alt1">21</div>
                                                <div class="line number20 index19 alt1">22</div>
                                                <div class="line number20 index19 alt1">23</div>
                                                <div class="line number20 index19 alt1">24</div>
                                                <div class="line number20 index19 alt1">25</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-javascript language-css language-html">
&lt;html&gt;
&lt;head&gt;
&lt;script&gt;
    function mOver(obj) {
        obj.innerHTML = &quot;Thank You&quot;
    }

    function mOut(obj) {
        obj.innerHTML = &quot;Mouse Over Me&quot;
    }
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;div onmouseover=&quot;mOver(this)&quot; onmouseout=&quot;mOut(this)&quot;
    style=&quot;background-color: #D94A38; width: 120px; height: 15px; padding: 5px;&quot;&gt;
    Mouse Over Me&lt;/div&gt;
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
                        <p> kết quả: </p>
                        <hr>
                        <div onmouseover="mOver(this)" onmouseout="mOut(this)"
                             style="background-color: #D94A38; width: 200px; height: 40px; padding: 5px;">
                            Mouse Over Me</div>
                        <hr>

                        <h2 id="goto-h2-5"> Sự kiện onmousedown, onmouseup và onclick </h2>
                        <p> Sự kiện onmousedown, onmouseup và onclick là tất cả các phần của một cú click chuột. Đầu
                            tiên khi một nút chuột được bấm, sự kiện onmousedown được kích hoạt, sau đó, khi nút chuột
                            được giải phóng, sự kiện onmouseup được kích hoạt, cuối cùng, khi nhấp chuột hoàn tất, sự
                            kiện onclick được kích hoạt. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_286956" class="syntaxhighlighter  xml">
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
                                                <div class="line number20 index19 alt1">21</div>
                                                <div class="line number20 index19 alt1">22</div>
                                                <div class="line number20 index19 alt1">23</div>
                                                <div class="line number20 index19 alt1">24</div>
                                                <div class="line number20 index19 alt1">25</div>
                                                <div class="line number20 index19 alt1">26</div>
                                                <div class="line number20 index19 alt1">27</div>
                                                <div class="line number20 index19 alt1">28</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-javascript language-css language-html">
&lt;html&gt;
&lt;head&gt;
&lt;script&gt;
    function mDown(obj) {
        obj.style.backgroundColor = &quot;#1ec5e5&quot;;
        obj.innerHTML = &quot;Release Me&quot;;
    }

    function mUp(obj) {
        obj.style.backgroundColor = &quot;#D94A38&quot;;
        obj.innerHTML = &quot;Thank You&quot;;
    }
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;div onmousedown=&quot;mDown(this)&quot; onmouseup=&quot;mUp(this)&quot;
    style=&quot;background-color: #D94A38; width: 120px; height: 15px; padding: 5px;&quot;&gt;
    Click Me&lt;/div&gt;
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
                        <p> kết quả: </p>
                        <hr>
                        <div onmousedown="mDown(this)" onmouseup="mUp(this)"
                             style="background-color: #D94A38; width: 120px; height: 40px; padding: 5px;">
                            Click Me</div>
                        <hr>

                        <h2 id="goto-h2-6"> Sự kiện HTML5 chuẩn </h2>
                        <p> Các sự kiện HTML5 chuẩn được liệt kê dưới đây. Tại đây, script chỉ dẫn một hàm JavaScript để
                            được thực thi đối với sự kiện đó. </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="20%">Thuộc tính</th>
                                <th width="20%">Giá trị</th>
                                <th>Miêu tả</th>
                            </tr>
                            <tr>
                                <td>Offline</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu ở ngoại tuyến</td>
                            </tr>
                            <tr>
                                <td>Onabort</td>
                                <td>script</td>
                                <td>Kích hoạt trên một sự kiện bỏ dở</td>
                            </tr>
                            <tr>
                                <td>onafterprint</td>
                                <td>script</td>
                                <td>Kích hoạt sau khi tài liệu được in</td>
                            </tr>
                            <tr>
                                <td>onbeforeonload</td>
                                <td>script</td>
                                <td>Kích hoạt trước khi tài liệu tải</td>
                            </tr>
                            <tr>
                                <td>onbeforeprint</td>
                                <td>script</td>
                                <td>Kích hoạt trước khi tài liệu được in</td>
                            </tr>
                            <tr>
                                <td>onblur</td>
                                <td>script</td>
                                <td>Kích hoạt khi cửa sổ mất trọng tâm</td>
                            </tr>
                            <tr>
                                <td>oncanplay</td>
                                <td>script</td>
                                <td>Kích hoạt khi media có thể bắt đầu chơi, nhưng phải dừng để đệm</td>
                            </tr>
                            <tr>
                                <td>oncanplaythrough</td>
                                <td>script</td>
                                <td>Kích hoạt khi media có thể chơi tới cuối, mà không dừng để đệm</td>
                            </tr>
                            <tr>
                                <td>onchange</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử thay đổi</td>
                            </tr>
                            <tr>
                                <td>onclick</td>
                                <td>script</td>
                                <td>Kích hoạt trên một cú click chuột</td>
                            </tr>
                            <tr>
                                <td>oncontextmenu</td>
                                <td>script</td>
                                <td>Kích hoạt khi menu ngữ cảnh bị kích hoạt</td>
                            </tr>
                            <tr>
                                <td>ondblclick</td>
                                <td>script</td>
                                <td>Kích hoạt khi nhấp đúp chuột</td>
                            </tr>
                            <tr>
                                <td>ondrag</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử bị kéo</td>
                            </tr>
                            <tr>
                                <td>ondragend</td>
                                <td>script</td>
                                <td>Kích hoạt tại phần cuối của hoạt động kéo</td>
                            </tr>
                            <tr>
                                <td>ondragenter</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử đã được kéo tới một mục tiêu thả hợp lệ</td>
                            </tr>
                            <tr>
                                <td>ondragleave</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử đang được kéo qua một mục tiêu thả hợp lệ</td>
                            </tr>
                            <tr>
                                <td>ondragover</td>
                                <td>script</td>
                                <td>Kích hoạt tại phần đầu của hoạt động kéo</td>
                            </tr>
                            <tr>
                                <td>ondragstart</td>
                                <td>script</td>
                                <td>Kích hoạt tại phần đầu của hoạt động kéo</td>
                            </tr>
                            <tr>
                                <td>ondrop</td>
                                <td>script</td>
                                <td>Kích hoạt khi phần tử được kéo đang được thả</td>
                            </tr>
                            <tr>
                                <td>ondurationchange</td>
                                <td>script</td>
                                <td>Kích hoạt khi độ dài của media được thay đổi</td>
                            </tr>
                            <tr>
                                <td>onemptied</td>
                                <td>script</td>
                                <td>Kích hoạt khi phần tử nguồn media đột nhiên trở nên trống</td>
                            </tr>
                            <tr>
                                <td>onended</td>
                                <td>script</td>
                                <td>Kích hoạt khi media tiến tới cuối cùng</td>
                            </tr>
                            <tr>
                                <td>onerror</td>
                                <td>script</td>
                                <td>Kích hoạt khi một lỗi xảy ra</td>
                            </tr>
                            <tr>
                                <td>onfocus</td>
                                <td>script</td>
                                <td>Kích hoạt khi cửa sổ nhận trọng tâm</td>
                            </tr>
                            <tr>
                                <td>onformchange</td>
                                <td>script</td>
                                <td>Kích hoạt khi một form thay đổi</td>
                            </tr>
                            <tr>
                                <td>onforminput</td>
                                <td>script</td>
                                <td>Kích hoạt khi một form nhận input từ người dùng</td>
                            </tr>
                            <tr>
                                <td>onhaschange</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu có thay đổi</td>
                            </tr>
                            <tr>
                                <td>oninput</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử nhận đầu vào từ người dùng</td>
                            </tr>
                            <tr>
                                <td>oninvalid</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử không hợp lệ</td>
                            </tr>
                            <tr>
                                <td>onkeydown</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phím bị nhấn</td>
                            </tr>
                            <tr>
                                <td>onkeypress</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phím bị nhấn và được thả ra</td>
                            </tr>
                            <tr>
                                <td>onkeyup</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phím được thả ra</td>
                            </tr>
                            <tr>
                                <td>onload</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu tải</td>
                            </tr>
                            <tr>
                                <td>onloadeddata</td>
                                <td>script</td>
                                <td>Kích hoạt khi dữ liệu media được tải</td>
                            </tr>
                            <tr>
                                <td>onloadedmetadata</td>
                                <td>script</td>
                                <td>Kích hoạt khi thời gian và dữ liệu khác của một phần tử media được tải</td>
                            </tr>
                            <tr>
                                <td>onloadstart</td>
                                <td>script</td>
                                <td>Kích hoạt khi trình duyệt bắt đầu tải dữ liệu media</td>
                            </tr>
                            <tr>
                                <td>onmessage</td>
                                <td>script</td>
                                <td>Kích hoạt khi thông báo được kích hoạt</td>
                            </tr>
                            <tr>
                                <td>onmousedown</td>
                                <td>script</td>
                                <td>Kích hoạt khi một nút chuột được nhả ra</td>
                            </tr>
                            <tr>
                                <td>onmousemove</td>
                                <td>script</td>
                                <td>Kích hoạt khi con trỏ chuột di chuyển</td>
                            </tr>
                            <tr>
                                <td>onmouseout</td>
                                <td>script</td>
                                <td>Kích hoạt khi con trỏ chuột di chuyển ra khỏi một phần tử</td>
                            </tr>
                            <tr>
                                <td>onmouseover</td>
                                <td>script</td>
                                <td>Kích hoạt khi con trỏ chuột di chuyển qua một phần tử</td>
                            </tr>
                            <tr>
                                <td>onmouseup</td>
                                <td>script</td>
                                <td>Kích hoạt khi một nút chuột được nhả ra</td>
                            </tr>
                            <tr>
                                <td>onmousewheel</td>
                                <td>script</td>
                                <td>Kích hoạt khi bánh xe chuột được quay</td>
                            </tr>
                            <tr>
                                <td>onoffline</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu ở ngoại tuyến</td>
                            </tr>
                            <tr>
                                <td>onoine</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu ở trực tuyến</td>
                            </tr>
                            <tr>
                                <td>ononline</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu ở trực tuyến</td>
                            </tr>
                            <tr>
                                <td>onpagehide</td>
                                <td>script</td>
                                <td>Kích hoạt khi cửa sổ bị ẩn</td>
                            </tr>
                            <tr>
                                <td>onpageshow</td>
                                <td>script</td>
                                <td>Kích hoạt khi cửa sổ trở nên nhìn thấy</td>
                            </tr>
                            <tr>
                                <td>onpause</td>
                                <td>script</td>
                                <td>Kích hoạt khi dữ liệu media bị dừng</td>
                            </tr>
                            <tr>
                                <td>onplay</td>
                                <td>script</td>
                                <td>Kích hoạt khi dữ liệu media chuẩn bị bắt đầu chơi</td>
                            </tr>
                            <tr>
                                <td>onplaying</td>
                                <td>script</td>
                                <td>Kích hoạt khi dữ liệu media đang bắt đầu chơi</td>
                            </tr>
                            <tr>
                                <td>onpopstate</td>
                                <td>script</td>
                                <td>Kích hoạt khi lịch sử cửa sổ thay đổi</td>
                            </tr>
                            <tr>
                                <td>onprogress</td>
                                <td>script</td>
                                <td>Kích hoạt khi trình duyệt đang nhận dữ liệu media</td>
                            </tr>
                            <tr>
                                <td>onratechange</td>
                                <td>script</td>
                                <td>Kích hoạt khi tốc độ chơi của media đã thay đổi</td>
                            </tr>
                            <tr>
                                <td>onreadystatechange</td>
                                <td>script</td>
                                <td>Kích hoạt khi trạng thái sẵn sàng thay đổi</td>
                            </tr>
                            <tr>
                                <td>onredo</td>
                                <td>script</td>
                                <td>Kích hoạt khi tài liệu thực hiện một redo</td>
                            </tr>
                            <tr>
                                <td>onresize</td>
                                <td>script</td>
                                <td>Kích hoạt khi cửa sổ bị thay đổi kích cỡ</td>
                            </tr>
                            <tr>
                                <td>onscroll</td>
                                <td>script</td>
                                <td>Kích hoạt khi thanh cuốn của phần tử đang được cuốn</td>
                            </tr>
                            <tr>
                                <td>onseeked</td>
                                <td>script</td>
                                <td>Kích hoạt khi thuộc tính seeking của một phần tử media không còn true, và seeking đã
                                    kết thúc
                                </td>
                            </tr>
                            <tr>
                                <td>onseeking</td>
                                <td>script</td>
                                <td>Kích hoạt khi thuộc tính seeking của một phần tử media là true, và seeking đã bắt
                                    đầu
                                </td>
                            </tr>
                            <tr>
                                <td>onselect</td>
                                <td>script</td>
                                <td>Kích hoạt khi một phần tử được chọn</td>
                            </tr>
                            <tr>
                                <td>onstalled</td>
                                <td>script</td>
                                <td>Kích hoạt khi có một lỗi trong quá trình thu nhận dữ liệu media</td>
                            </tr>
                            <tr>
                                <td>onstorage</td>
                                <td>script</td>
                                <td>Kích hoạt khi một tài liệu tải</td>
                            </tr>
                            <tr>
                                <td>onsubmit</td>
                                <td>script</td>
                                <td>Kích hoạt khi một form được đệ trình</td>
                            </tr>
                            <tr>
                                <td>onsuspend</td>
                                <td>script</td>
                                <td>Kích hoạt khi trình duyệt đã đang thu nhận dữ liệu media, nhưng đã dừng lại trước
                                    khi toàn bộ media file được thu nhận
                                </td>
                            </tr>
                            <tr>
                                <td>ontimeupdate</td>
                                <td>script</td>
                                <td>Kích hoạt khi media thay đổi vị trí chơi của nó</td>
                            </tr>
                            <tr>
                                <td>onundo</td>
                                <td>script</td>
                                <td>Kích hoạt khi một tài liệu thực hiện một undo</td>
                            </tr>
                            <tr>
                                <td>onunload</td>
                                <td>script</td>
                                <td>Kích hoạt khi người sử dụng rời khỏi tài liệu</td>
                            </tr>
                            <tr>
                                <td>onvolumechange</td>
                                <td>script</td>
                                <td>Kích hoạt khi media thay đổi âm lượng, kể cả khi media được thiết lập là mute</td>
                            </tr>
                            <tr>
                                <td>onwaiting</td>
                                <td>script</td>
                                <td>Kích hoạt khi media đã dừng chơi nhưng được mong chờ phục hồi.</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read3">[Bài đọc] Cú pháp trong JavaScript</a></div>
                        <div class="pre-btn"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function sayHello() {
            alert("Hello World")
        }


        function mOver(obj) {
            obj.innerHTML = "Thank You"
        }

        function mOut(obj) {
            obj.innerHTML = "Mouse Over Me"
        }


        function mDown(obj) {
            obj.style.backgroundColor = "#1ec5e5";
            obj.innerHTML = "Release Me";
        }

        function mUp(obj) {
            obj.style.backgroundColor = "#D94A38";
            obj.innerHTML = "Thank You";
        }
    </script>
</body>
</html>
