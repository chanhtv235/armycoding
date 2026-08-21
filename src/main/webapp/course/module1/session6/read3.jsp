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
                <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6.Cấu trúc điều kiện</a>

                <header class="entry-header">
                    <h1 class="entry-title">Toán tử 3 ngôi trong JavaScript</h1>
                </header>

                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=6&fileName=read2">Mệnh đề Switch-case trong JavaScript</a></div>
                        <div class="nxt-btn"><a href="#"></a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p>
                            <strong>Toán tử 3 ngôi trong JavaScript</strong> (Ternary Operator)
                            là một toán tử điều kiện cho phép kiểm tra một biểu thức và lựa chọn
                            một trong hai giá trị dựa trên kết quả của biểu thức đó.
                        </p>

                        <p>
                            Toán tử 3 ngôi thường được sử dụng khi chúng ta cần viết một điều kiện
                            đơn giản thay cho câu lệnh <strong>if-else</strong>.
                        </p>

                        <p>
                            Toán tử này có tên là "3 ngôi" vì nó gồm ba thành phần:
                        </p>

                        <ul>
                            <li>Biểu thức điều kiện.</li>
                            <li>Giá trị được trả về nếu điều kiện đúng.</li>
                            <li>Giá trị được trả về nếu điều kiện sai.</li>
                        </ul>

                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">1. Cú pháp toán tử 3 ngôi trong JavaScript</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">2. Ví dụ về toán tử 3 ngôi</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">3. Toán tử 3 ngôi với if-else</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">4. Toán tử 3 ngôi lồng nhau</a>
                                </li>
                            </ul>
                        </div>

                        <h2 id="goto-h2-1"> 1. Cú pháp toán tử 3 ngôi trong JavaScript </h2>

                        <p>
                            Cú pháp của toán tử 3 ngôi trong JavaScript như sau:
                        </p>

                        <div class="codeblock">
                            <div>
                                <div id="highlighter_ternary_1" class="syntaxhighlighter js">
                                    <div class="toolbar">
                                        <span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2">
    <code class="js plain">condition ? valueIfTrue : valueIfFalse;</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p>
                            Trong đó:
                        </p>

                        <ul>
                            <li><strong>condition</strong>: biểu thức điều kiện cần kiểm tra.</li>
                            <li><strong>valueIfTrue</strong>: giá trị được sử dụng nếu điều kiện đúng.</li>
                            <li><strong>valueIfFalse</strong>: giá trị được sử dụng nếu điều kiện sai.</li>
                        </ul>

                        <p>
                            Toán tử <strong>?</strong> dùng để phân tách điều kiện với giá trị khi điều kiện đúng,
                            còn toán tử <strong>:</strong> dùng để phân tách hai trường hợp đúng và sai.
                        </p>

                        <hr>

                        <h2 id="goto-h2-2"> 2. Ví dụ về toán tử 3 ngôi </h2>

                        <p>
                            Ví dụ dưới đây kiểm tra tuổi của một người. Nếu tuổi lớn hơn hoặc bằng 18
                            thì kết quả là "Đủ tuổi", ngược lại kết quả là "Chưa đủ tuổi".
                        </p>

                        <div class="codeblock">
                            <div>
                                <div id="highlighter_ternary_2" class="syntaxhighlighter js">
                                    <div class="toolbar">
                                        <span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                 <div class="line number1 index0 alt2">
      <code class="js keyword">var</code><code class="js plain"> age = 20;</code>
      <code class="js keyword">var</code><code class="js plain"> result = age &gt;= 18 ? </code><code
                                                            class="js string">"Đủ tuổi"</code><code
                                                            class="js plain"> : </code><code class="js string">"Chưa đủ tuổi"</code><code
                                                            class="js plain">;</code>
      <code class="js plain">document.write(result);</code>
                                 </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Kết quả: </p>

                        <div class="codeblock3">
<pre>Đủ tuổi
</pre>
                        </div>

                        <hr>

                        <div style="height: 10px;"></div>

                        <h2 id="goto-h2-3"> 3. Toán tử 3 ngôi với if-else </h2>

                        <p>
                            Toán tử 3 ngôi có thể dùng để thay thế một câu lệnh <strong>if-else</strong>
                            đơn giản. Hai cách viết dưới đây cho cùng một kết quả.
                        </p>

                        <p>Ví dụ sử dụng if-else:</p>

                        <div class="codeblock">
                            <div>
                                <div id="highlighter_ternary_3" class="syntaxhighlighter js">
                                    <div class="toolbar">
                                        <span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter" >
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number5 index4 alt2">6</div>
                                                <div class="line number5 index4 alt2">7</div>
                                                <div class="line number5 index4 alt2">8</div>
                                                <div class="line number5 index4 alt2">9</div>
                                                <div class="line number5 index4 alt2">10</div>
                                                <div class="line number5 index4 alt2">11</div>
                                                <div class="line number5 index4 alt2">12</div>
                                                <div class="line number5 index4 alt2">13</div>
                                                <div class="line number5 index4 alt2">14</div>
                                                <div class="line number5 index4 alt2">15</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2">
      <code class="js keyword">var</code><code class="js plain"> age = 16;</code>
      <code class="js spaces">&nbsp;&nbsp;</code>
      <code class="js keyword">var</code><code class="js plain"> result;</code>
      <code class="js spaces">&nbsp;&nbsp;</code>
      <code class="js keyword">if</code><code class="js plain"> (age &gt;= 18) {</code>
      <code class="js spaces">&nbsp;&nbsp;</code>
            <code class="js plain">  result = </code><code class="js string">"Đủ tuổi"</code><code class="js plain">;</code>
      <code class="js spaces">&nbsp;&nbsp;</code>
      <code class="js plain">} </code><code class="js keyword">else</code><code class="js plain"> {
      <code class="js spaces">&nbsp;&nbsp;</code>
             result = </code><code class="js string">"Chưa đủ tuổi"</code><code class="js plain">;
      <code class="js spaces">&nbsp;&nbsp;</code>
      }</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Có thể viết ngắn gọn bằng toán tử 3 ngôi:</p>

                        <div class="codeblock">
                            <div>
                                <div id="highlighter_ternary_4" class="syntaxhighlighter js">
                                    <div class="toolbar">
                                        <span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2">
      <code class="js keyword">var</code><code class="js plain"> result = age &gt;= 18 ? </code> <code class="js string">"Đủ tuổi"</code><code class="js plain"> : </code><code class="js string">"Chưa đủ tuổi"</code><code class="js plain">;</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p>
                            Như vậy, toán tử 3 ngôi giúp đoạn mã ngắn gọn hơn khi điều kiện chỉ có
                            hai trường hợp đơn giản là đúng hoặc sai.
                        </p>

                        <hr>

                        <h2 id="goto-h2-4"> 4. Toán tử 3 ngôi lồng nhau </h2>

                        <p>
                            Có thể sử dụng nhiều toán tử 3 ngôi trong cùng một biểu thức để xử lý
                            nhiều trường hợp. Tuy nhiên, không nên lạm dụng cách viết này vì có thể
                            làm cho mã nguồn khó đọc.
                        </p>

                        <p>Ví dụ:</p>

                        <div class="codeblock">
                            <div>
                                <div id="highlighter_ternary_5" class="syntaxhighlighter js">
                                    <div class="toolbar">
                                        <span><a href="#" class="toolbar_item command_help help">?</a></span>
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
                                                    <div class="line number1 index0 alt2">
      <code class="js keyword">var</code><code class="js plain"> score = 85;</code>
      <code class="js keyword">var</code> <code class="js plain"> result = score &gt;= 90 ? </code>
        <code class="js string">"A"</code>
        <code class="js plain"> : score &gt;= 80 ? </code>
        <code class="js string">"B"</code>
        <code class="js plain"> : </code>
        <code class="js string">"C"</code>
        <code class="js plain">;</code>
      <code class="js plain">document.write(result);</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p> Kết quả: </p>

                        <div class="codeblock3">
<pre>B
</pre>
                        </div>

                        <p>
                            Trong ví dụ trên, chương trình kiểm tra lần lượt các điều kiện:
                        </p>

                        <ul>
                            <li>Nếu <strong>score &gt;= 90</strong> thì kết quả là <strong>A</strong>.</li>
                            <li>Nếu điều kiện trên sai và <strong>score &gt;= 80</strong> thì kết quả là
                                <strong>B</strong>.
                            </li>
                            <li>Nếu cả hai điều kiện trên đều sai thì kết quả là <strong>C</strong>.</li>
                        </ul>

                        <p>
                            Khi có nhiều điều kiện phức tạp, nên sử dụng <strong>if-else</strong> hoặc
                            <strong>switch-case</strong> để mã nguồn dễ đọc và dễ bảo trì hơn.
                        </p>

                        <hr>
                        <div class="pre-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=6&fileName=read2">Mệnh đề Switch-case trong JavaScript</a></div>
                        <div class="nxt-btn"><a href="#"></a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
