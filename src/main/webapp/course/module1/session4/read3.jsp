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
                    <h1 class="entry-title">Cú pháp trong JavaScript</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a
                                href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read2">[Bài
                            đọc] Nhúng Javascript vào html</a></div>
                        <div class="nxt-btn"><a
                                href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read4">[Bài
                            đọc] Sự kiện (Event) trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> JavaScript có thể được thực hiện bởi sử dụng các lệnh JavaScript mà được đặt trong thẻ HTML
                            <b>&lt;script&gt;... &lt;/script&gt;</b> trong một trang web.</p>
                        <p>Thẻ &lt;script&gt; báo cho trình duyệt biết rằng tất cả văn bản ở giữa các thẻ này như là một
                            script. Ví dụ <strong>một cú pháp trong JavaScript đơn giản</strong> như sau:</p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_18442" class="syntaxhighlighter  js">
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
                                                    <div class="line number1 index0 alt2"><code class="js plain">&lt;script
                                                        ...&gt;</code></div>
                                                    <div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">JavaScript code</code></div>
                                                    <div class="line number3 index2 alt2"><code class="js plain">&lt;/script&gt;</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Sau đây là 2 thuộc tính quan trọng của thẻ script: </p>
                        <ul>
                            <li><b>Language</b> − Thuộc tính này xác định ngôn ngữ scripting nào bạn đang sử dụng. Giá
                                trị của nó sẽ là javascript. Mặc dù các phiên bản gần đây của HTML (và XHTML) cho phép
                                không cần sử dụng thuộc tính này nữa.
                            </li>
                            <li><b>Type</b> − Thuộc tính này là những gì được đề nghị sử dụng và giá trị của nó nên được
                                thiết lập là "text/javascript".
                            </li>
                        </ul>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_386161" class="syntaxhighlighter  js">
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
                                                    <div class="line number1 index0 alt2"><code class="js plain">&lt;script
                                                        language=</code><code class="js string">"javascript"</code>
                                                        <code class="js plain">type=</code><code class="js string">"text/javascript"</code><code
                                                                class="js plain">&gt;</code></div>
                                                    <div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">JavaScript code</code></div>
                                                    <div class="line number3 index2 alt2"><code class="js plain">&lt;/script&gt;</code>
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

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Chương trình JavaScript đầu tiên - Hello World</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Khoảng trắng</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Dấu chấm phảy ";" là tùy ý</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Phân biệt kiểu chữ</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Comment trong JavaScript</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Chương trình JavaScript đầu tiên - Hello World </h2>
                        <p> Ví dụ sau sẽ in ra dòng chữ Hello World!: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_404558" class="syntaxhighlighter  js">
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
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code class="js plain">&lt;html&gt;</code>
                                                    </div>
                                                    <div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;body&gt;</code></div>
                                                    <div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;script language=</code><code
                                                            class="js string">"javascript"</code> <code
                                                            class="js plain">type=</code><code class="js string">"text/javascript"</code><code
                                                            class="js plain">&gt;</code></div>
                                                    <div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;!--</code></div>
                                                    <div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">document.write(</code><code
                                                            class="js string">"Hello World!"</code><code
                                                            class="js plain">)</code></div>
                                                    <div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">--&gt;</code></div>
                                                    <div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;/script&gt;</code></div>
                                                    <div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;/body&gt;</code></div>
                                                    <div class="line number9 index8 alt2"><code class="js plain">&lt;/html&gt;</code>
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
<pre>Hello World!
</pre>
                        </div>
                        <p> Trong ví dụ trên kiểu ghi chú bắt đầu bằng dấu &lt;!– và kết thúc bằng //–&gt; trong cặp thẻ
                            &lt;script&gt;. Khi gặp ghi chú này, nếu trình duyệt không hỗ trợ Javascript (hoặc tắt
                            Javascript), thì trình duyệt sẽ bỏ qua và không thực thi các lệnh Javascript, nó xem những
                            lệnh nằm giữa &lt;!-- và //--&gt; như là một comment. </p>
                        <hr>

                        <div style="height: 10px"></div>
                        <br>
                        <h2 id="goto-h2-2"> Khoảng trắng </h2>
                        <p> JavaScript bỏ qua khoảng trống, tab, và dấu xuống dòng. Bạn có thể sử dụng khoảng trắng,
                            tab, và dòng mới tự do trong chương trình Javascipt của mình và bạn tự do định dạng code sao
                            cho dễ dàng để đọc và hiểu. </p>
                        <hr>

                        <h2 id="goto-h2-3"> Dấu chấm phảy ";" là tùy ý </h2>
                        <p> Không giống như lập trình Java hay PHP đấu chấm phảy ";" là bắt buộc khi kết thúc một lệnh.
                            Nhưng trong Javascipt điều này là không bắt buộc. Có nghĩa là bạn có thể dụng hoặc không
                            cũng được. Nhưng chúng tôi khuyên bạn nên dùng để cho code tường minh hơn. </p>
                        <p> Ví dụ không sử dụng dấu chấm phảy: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_328008" class="syntaxhighlighter  js">
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
                                                    <div class="line number1 index0 alt2"><code class="js plain">&lt;script
                                                        language=</code><code class="js string">"javascript"</code>
                                                        <code class="js plain">type=</code><code class="js string">"text/javascript"</code><code
                                                                class="js plain">&gt;</code></div>
                                                    <div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;!--</code></div>
                                                    <div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">document.write(</code><code
                                                            class="js string">"Hello World!"</code><code
                                                            class="js plain">)</code></div>
                                                    <div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">document.write(</code><code
                                                            class="js string">"Hello JavaScript!"</code><code
                                                            class="js plain">)</code></div>
                                                    <div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">//--&gt;</code></div>
                                                    <div class="line number6 index5 alt1"><code class="js plain">&lt;/script&gt;</code>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Ví dụ sử dụng dấu chấm phảy: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_708992" class="syntaxhighlighter  js">
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
                                                    <div class="line number1 index0 alt2"><code class="js plain">&lt;script
                                                        language=</code><code class="js string">"javascript"</code>
                                                        <code class="js plain">type=</code><code class="js string">"text/javascript"</code><code
                                                                class="js plain">&gt;</code></div>
                                                    <div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;!--</code></div>
                                                    <div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">document.write(</code><code
                                                            class="js string">"Hello World!"</code><code
                                                            class="js plain">);</code></div>
                                                    <div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">document.write(</code><code
                                                            class="js string">"Hello JavaScript!"</code><code
                                                            class="js plain">);</code></div>
                                                    <div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">//--&gt;</code></div>
                                                    <div class="line number6 index5 alt1"><code class="js plain">&lt;/script&gt;</code>
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

                        <div style="height: 10px"></div>
                        <br>
                        <h2 id="goto-h2-4"> Phân biệt kiểu chữ </h2>
                        <p> JavaScipt phân biệt chữ hoa và chữ thường. Ví dụ biến studentName và StudentName là 2 biến
                            khác nhau. </p>
                        <hr>

                        <h2 id="goto-h2-5"> Comment trong JavaScript </h2>
                        <p> Có 2 kiểu comment trong JavaScript đó là một dòng và nhiều dòng. </p>
                        <ul>
                            <li> Comment 1 dòng: // và &lt;!--</li>
                            <li> Commnet nhiều dòng: /* các comment của bạn */</li>
                        </ul>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_361049" class="syntaxhighlighter  js">
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
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <div class="line number1 index0 alt2"><code class="js plain">&lt;script
                                                        language=</code><code class="js string">"javascript"</code>
                                                        <code class="js plain">type=</code><code class="js string">"text/javascript"</code><code
                                                                class="js plain">&gt;</code></div>
                                                    <div class="line number2 index1 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js plain">&lt;!--</code></div>
                                                    <div class="line number3 index2 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code>&nbsp;
                                                    </div>
                                                    <div class="line number4 index3 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">// đây là commnet 1 dòng trong
                                                        JavaScript</code></div>
                                                    <div class="line number5 index4 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code>&nbsp;
                                                    </div>
                                                    <div class="line number6 index5 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">/*</code></div>
                                                    <div class="line number7 index6 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">* đây là comment nhiều dòng trong
                                                        JavaScript</code></div>
                                                    <div class="line number8 index7 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">* nó giống như comment trong ngôn ngữ C,
                                                        C++, Java</code></div>
                                                    <div class="line number9 index8 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">*/</code></div>
                                                    <div class="line number10 index9 alt1"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code>&nbsp;
                                                    </div>
                                                    <div class="line number11 index10 alt2"><code class="js spaces">&nbsp;&nbsp;&nbsp;</code><code
                                                            class="js comments">//--&gt;</code></div>
                                                    <div class="line number12 index11 alt1"><code class="js plain">&lt;/script&gt;</code>
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
                        <div class="pre-btn"><a
                                href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read2">[Bài
                            đọc] Nhúng Javascript vào html</a></div>
                        <div class="nxt-btn"><a
                                href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read4">[Bài
                            đọc] Sự kiện (Event) trong JavaScript</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
