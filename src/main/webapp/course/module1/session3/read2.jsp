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
                <a href="${pageContext.request.contextPath}/course/module1/session3/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3.Form và table</a>
                <header class="entry-header">
                    <h1 class="entry-title">Table trong HTML</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=3&fileName=read1">[Bài đọc] Form trong HTML</a></div>
                        <div class="nxt-btn"><a href="#"><i class="fa fa-arrow-circle-o-right"
                                                            aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Table trong HTML</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Các thẻ định nghĩa bảng trong HTML</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Ví dụ về bảng trong HTML</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Thuộc tính border của bảng trong HTML</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">1. Sử dụng thuộc tính border của bảng trong HTML</a>
                                        </li>
                                        <li><a href="#goto-h3-2">2. Sử dụng thuộc tính border trong CSS</a></li>
                                    </ul>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Table trong HTML với cell padding</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Thuộc tính colspan</a>
                                </li>
                                <li class="list-goto-7">
                                    <a href="#goto-h2-7">Thuộc tính rowspan</a>
                                </li>
                                <li class="list-goto-8">
                                    <a href="#goto-h2-8">Thẻ caption</a>
                                </li>
                                <li class="list-goto-9">
                                    <a href="#goto-h2-9">Tạo style cho ô chẵn, lẻ</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Table trong HTML </h2>
                        <p> Thẻ table trong HTML được sử dụng để hiển thị dữ liệu ở dạng bảng (hàng * cột). Có thể có
                            nhiều cột trong một hàng. </p>
                        <p> Các thẻ table trong HTML được sử dụng để quản lý việc bố cục trang web. Ví dụ: Phần tiêu đề,
                            thanh điều hướng, nội dung trang, phần chân trang... Nhưng bạn nên sử dụng thẻ div thay vì
                            table để quản lý bố cục của trang. </p>

                        <h2 id="goto-h2-2"> Các thẻ định nghĩa bảng trong HTML </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Thẻ</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>&lt;table&gt;</td>
                                <td>Định nghĩa bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;tr&gt;</td>
                                <td>Định nghĩa một hàng trong một bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;th&gt;</td>
                                <td>Định nghĩa phần header (dòng đầu tiên) của bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;td&gt;</td>
                                <td>Định nghĩa 1 ô của bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;caption&gt;</td>
                                <td>Định nghĩa phụ đề bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;colgroup&gt;</td>
                                <td>Chỉ định một nhóm của một hoặc nhiều cột trong một bảng để định dạng.</td>
                            </tr>
                            <tr>
                                <td>&lt;col&gt;</td>
                                <td>Được sử dụng với thẻ &lt;colgroup&gt; để chỉ định thuộc tính cột cho mỗi cột.</td>
                            </tr>
                            <tr>
                                <td>&lt;tbody&gt;</td>
                                <td>Được sử dụng để nhóm nội dung body trong một bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;thead&gt;</td>
                                <td>Được sử dụng để nhóm nội dung header trong một bảng.</td>
                            </tr>
                            <tr>
                                <td>&lt;tfooter&gt;</td>
                                <td>Được sử dụng để nhóm nội dung footer trong một bảng.</td>
                            </tr>
                            </tbody>
                        </table>

                        <div style="height: 10px;"></div>
                        <h2 id="goto-h2-3"> Ví dụ về bảng trong HTML </h2>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_39578" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                            </td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;table&gt;
    &lt;tr&gt;
        &lt;th&gt;First_Name&lt;/th&gt;
        &lt;th&gt;Last_Name&lt;/th&gt;
        &lt;th&gt;Marks&lt;/th&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Sonoo&lt;/td&gt;
        &lt;td&gt;Jaiswal&lt;/td&gt;
        &lt;td&gt;60&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;James&lt;/td&gt;
        &lt;td&gt;William&lt;/td&gt;
        &lt;td&gt;80&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Swati&lt;/td&gt;
        &lt;td&gt;Sironi&lt;/td&gt;
        &lt;td&gt;82&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Chetna&lt;/td&gt;
        &lt;td&gt;Singh&lt;/td&gt;
        &lt;td&gt;72&lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Output: </p>
                        <div>
                            <table>
                                <tbody>
                                <tr>
                                    <th>First_Name</th>
                                    <th>Last_Name</th>
                                    <th>Marks</th>
                                </tr>
                                <tr>
                                    <td>Sonoo</td>
                                    <td>Jaiswal</td>
                                    <td>60</td>
                                </tr>
                                <tr>
                                    <td>James</td>
                                    <td>William</td>
                                    <td>80</td>
                                </tr>
                                <tr>
                                    <td>Swati</td>
                                    <td>Sironi</td>
                                    <td>82</td>
                                </tr>
                                <tr>
                                    <td>Chetna</td>
                                    <td>Singh</td>
                                    <td>72</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <h2 id="goto-h2-4"> Thuộc tính border của bảng trong HTML </h2>
                        <p> Có hai cách để xác định border cho các bảng trong HTML. </p>
                        <ol>
                            <li> Sử dụng thuộc tính border của bảng trong HTML.</li>
                            <li> Sử dụng thuộc tính border trong CSS.</li>
                        </ol>

                        <h3 id="goto-h3-1"> 1. Sử dụng thuộc tính border của bảng trong HTML </h3>
                        <p> Bạn có thể sử dụng thuộc tính border của thẻ table trong HTML để chỉ định đường viền. Nhưng
                            bạn không nên sử dụng cách này. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_875142" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">

                                            </td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;table border=&quot;1&quot;&gt;
    &lt;tr&gt;
        &lt;th&gt;First_Name&lt;/th&gt;
        &lt;th&gt;Last_Name&lt;/th&gt;
        &lt;th&gt;Marks&lt;/th&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Sonoo&lt;/td&gt;
        &lt;td&gt;Jaiswal&lt;/td&gt;
        &lt;td&gt;60&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;James&lt;/td&gt;
        &lt;td&gt;William&lt;/td&gt;
        &lt;td&gt;80&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Swati&lt;/td&gt;
        &lt;td&gt;Sironi&lt;/td&gt;
        &lt;td&gt;82&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Chetna&lt;/td&gt;
        &lt;td&gt;Singh&lt;/td&gt;
        &lt;td&gt;72&lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Output: </p>
                        <table border="1">
                            <tbody>
                            <tr>
                                <th>First_Name</th>
                                <th>Last_Name</th>
                                <th>Marks</th>
                            </tr>
                            <tr>
                                <td>Sonoo</td>
                                <td>Jaiswal</td>
                                <td>60</td>
                            </tr>
                            <tr>
                                <td>James</td>
                                <td>William</td>
                                <td>80</td>
                            </tr>
                            <tr>
                                <td>Swati</td>
                                <td>Sironi</td>
                                <td>82</td>
                            </tr>
                            <tr>
                                <td>Chetna</td>
                                <td>Singh</td>
                                <td>72</td>
                            </tr>
                            </tbody>
                        </table>

                        <h3 id="goto-h3-2"> 2. Sử dụng thuộc tính border trong CSS </h3>
                        <p> Bạn nên sử dụng thuộc tính border của CSS để chỉ định đường viền của bảng. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_962298" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                            </td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
    &lt;!-- Sử dụng thuộc tính border bằng CSS --&gt;
    &lt;style type=&quot;text/css&quot;&gt;
        table, th, td {
            border: 1px solid red;
            border-collapse: collapse;
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table&gt;
    &lt;tr&gt;
        &lt;th&gt;First_Name&lt;/th&gt;
        &lt;th&gt;Last_Name&lt;/th&gt;
        &lt;th&gt;Marks&lt;/th&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Sonoo&lt;/td&gt;
        &lt;td&gt;Jaiswal&lt;/td&gt;
        &lt;td&gt;60&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;James&lt;/td&gt;
        &lt;td&gt;William&lt;/td&gt;
        &lt;td&gt;80&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Swati&lt;/td&gt;
        &lt;td&gt;Sironi&lt;/td&gt;
        &lt;td&gt;82&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Chetna&lt;/td&gt;
        &lt;td&gt;Singh&lt;/td&gt;
        &lt;td&gt;72&lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
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

                        <p> Output: </p>
                        <img src="https://viettuts.vn/images/html/table-trong-html-2.jpg" alt="table trong html 2">

                        <div style="height: 10px;"></div>
                        <h2 id="goto-h2-5"> Table trong HTML với cell padding </h2>
                        <p> Bạn có thể chỉ định padding cho tiêu đề của bảng và data của bảng bằng hai cách: </p>
                        <ol>
                            <li> Bằng thuộc tính cellpadding của thẻ table trong HTML</li>
                            <li> Bằng tính chất padding trong CSS</li>
                        </ol>
                        <p> Bạn nên sử dụng tính chất của CSS thay vì thuộc tính của thẻ trong HTML, dưới đây là ví dụ
                            chỉ định padding cho tiêu đề và nội dung của bẳng bằng CSS. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_265000" class="syntaxhighlighter  css">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">

                                            </td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
    &lt;style&gt;
        table, th, td {
            border: 1px solid pink;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
        }
    &lt;/style&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Output: </p>
                        <img src="https://viettuts.vn/images/html/table-trong-html-3.jpg" alt="table trong html 3">

                        <h2 id="goto-h2-6"> Thuộc tính colspan </h2>
                        <p> Nếu bạn muốn tạo một ô có độ dài lơn hơn 1 cột, thì bạn có thể dùng thuộc tính colspan. Ví
                            dụ: </p>
                        <p> Code css: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_352676" class="syntaxhighlighter  css">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter"></td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;style&gt;
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
&lt;/style&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Code html: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_168322" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter"></td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;table style=&quot;width:100%&quot;&gt;
  &lt;tr&gt;
    &lt;th&gt;Name&lt;/th&gt;
    &lt;th colspan=&quot;2&quot;&gt;Mobile No.&lt;/th&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Ajeet Maurya&lt;/td&gt;
    &lt;td&gt;7503520801&lt;/td&gt;
    &lt;td&gt;9555879135&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Output: </p>
                        <img src="https://viettuts.vn/images/html/table-trong-html-thuoc-tinh-colspan.png"
                             alt="table-trong-html-thuoc-tinh-colspan">

                        <div style="height: 10px;"></div>
                        <h2 id="goto-h2-7"> Thuộc tính rowspan</h2>
                        <p> Nếu bạn muốn tạo một ô có độ dài lơn hơn hàng, thì bạn có thể dùng thuộc tính rowspan. Ví
                            dụ: </p>
                        <p> Code css: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_891329" class="syntaxhighlighter  css">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter"></td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;style&gt;
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
}
&lt;/style&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Code html: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_860127" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter"></td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;table style=&quot;width:100%&quot;&gt;
  &lt;tr&gt;
    &lt;th&gt;Name&lt;/th&gt;
    &lt;th colspan=&quot;2&quot;&gt;Mobile No.&lt;/th&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Ajeet Maurya&lt;/td&gt;
    &lt;td&gt;7503520801&lt;/td&gt;
    &lt;td&gt;9555879135&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Output: </p>
                        <img src="https://viettuts.vn/images/html/table-trong-html-thuoc-tinh-rowspan.png"
                             alt="table-trong-html-thuoc-tinh-rowspan">

                        <h2 id="goto-h2-8"> Thẻ caption </h2>
                        <p> Thẻ caption được sử dụng để định nghĩa bảng, thẻ này chỉ được sử dụng ngay sau thẻ table. Ví
                            dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_91649" class="syntaxhighlighter  xml">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter"></td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;table&gt;
    &lt;caption&gt;Student Records&lt;/caption&gt;
    &lt;tr&gt;
        &lt;th&gt;First_Name&lt;/th&gt;
        &lt;th&gt;Last_Name&lt;/th&gt;
        &lt;th&gt;Marks&lt;/th&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Vimal&lt;/td&gt;
        &lt;td&gt;Jaiswal&lt;/td&gt;
        &lt;td&gt;70&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Mike&lt;/td&gt;
        &lt;td&gt;Warn&lt;/td&gt;
        &lt;td&gt;60&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Shane&lt;/td&gt;
        &lt;td&gt;Warn&lt;/td&gt;
        &lt;td&gt;42&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;Jai&lt;/td&gt;
        &lt;td&gt;Malhotra&lt;/td&gt;
        &lt;td&gt;62&lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Output: </p>
                        <img src="https://viettuts.vn/images/html/table-trong-html-the-caption.png"
                             alt="table-trong-html-the-caption">

                        <h2 id="goto-h2-9"> Tạo style cho ô chẵn, lẻ </h2>
                        <p> Code css: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_656025" class="syntaxhighlighter  css">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter"></td>
                                            <td class="code">
                                                <div class="container"><pre><code class="language-html language-css">
&lt;style&gt;
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
}
table#alter tr:nth-child(even) {
    background-color: #eee;
}
table#alter tr:nth-child(odd) {
    background-color: #fff;
}
table#alter th {
    color: white;
    background-color: gray;
}
&lt;/style&gt;
                                                </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Output: </p>
                        <img src="https://viettuts.vn/images/html/table-trong-html-style-chan-le.png"
                             alt="table-trong-html-style-chan-le">

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=3&fileName=read1">[Bài đọc] Form trong HTML</a></div>
                        <div class="nxt-btn"><a href="#"><i class="fa fa-arrow-circle-o-right"
                                                                            aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>

            </div>
        </div>
    </div>
</body>
</html>
