<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Toán tử trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Hệ thông Unicode trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề if-else trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Toán tử trong java là một ký hiệu được sử dụng để thực hiện một phép tính/chức năng nào đó. Java cung cấp các dạng toán tử sau: </p>
                        <ul>
                            <li> Toán tử số học</li>
                            <li> Toán tử bit</li>
                            <li> Toán tử quan hệ</li>
                            <li> Toán tử logic</li>
                            <li> Toán tử điều kiện</li>
                            <li> Toán tử gán</li>
                        </ul>
                        <img src="https://viettuts.vn/images/java/toan-tu-trong-java.png" alt="Toán tử trong java">
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Toán tử số học</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Toán tử  Bit</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các toán tử quan hệ</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Các toán tử logic</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Các toán tử điều kiện</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Toán tử gán</a>
                                </li>
                                <li class="list-goto-7">
                                    <a href="#goto-h2-7">Thứ tụ ưu tiên của các toán tử</a>
                                </li>
                                <li class="list-goto-8">
                                    <a href="#goto-h2-8">Thay đổi thứ tự ưu tiên của các toán tử</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Toán tử số học </h2>
                        <p> Các toán hạng của các toán tử số học phải ở dạng số. Các toán hạng kiểu boolean không sử dụng được, các toán hạng ký tự cho phép sử dụng loại toán tử này. Một vài kiểu toán tử được liệt kê trong bảng dưới đây. </p>
                        <p> Giả sử chúng ta có biến số nguyên a = 10 và b = 20. </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="10%">Toán tử</th>
                                <th width="70%">Mô tả</th>
                                <th width="20%">Ví dụ</th>
                            </tr>
                            <tr>
                                <td>+</td>
                                <td>Cộng <br> Trả về giá trị là tổng của hai toán hạng</td>
                                <td> a + b sẽ là 30 </td>
                            </tr>

                            <tr>
                                <td>-</td>
                                <td>Trừ <br> Trả về kết quả là hiệu của hai toán hạng.</td>
                                <td> a + b sẽ là -1 </td>
                            </tr>

                            <tr>
                                <td>*</td>
                                <td> Nhân <br> Trả về giá trị là tích của hai toán hạng.</td>
                                <td> a + b sẽ là 200 </td>
                            </tr>

                            <tr>
                                <td>/</td>
                                <td>Chia<br> Trả về giá trị là thương của phép chia.</td>
                                <td> b / a sẽ là 2 </td>
                            </tr>

                            <tr>
                                <td>%</td>
                                <td>Phép lấy modul<br> Giá trị trả về là phần dư của phép chia</td>
                                <td> b % a sẽ là 0 </td>
                            </tr>

                            <tr>
                                <td>++</td>
                                <td>Tăng dần<br>Tăng giá trị của biến lên 1. Ví dụ a++ tương đương với a = a  + 1</td>
                                <td> a++ sẽ là 11 </td>
                            </tr>

                            <tr>
                                <td>--</td>
                                <td>Giảm dần <br> Giảm giá trị của biến 1 đơn vị. Ví dụ a-- tương đương với a = a - 1</td>
                                <td> a-- sẽ là 9 </td>
                            </tr>

                            <tr>
                                <td>+=</td>
                                <td>Cộng và gán giá trị <br> Cộng các giá trị của toán hạng bên trái vào toán hạng bên phải và gán giá trị trả về vào toán hạng bên trái. Ví dụ c += a tương đương c = c + a</td>
                                <td> a += 2 sẽ là 12 </td>
                            </tr>

                            <tr>
                                <td>-=</td>
                                <td>rừ và gán giá trị<br>Trừ các giá trị của toán hạng bên trái vào toán toán hạng bên phải và gán giá trị trả về vào toán hạng bên trái. Ví dụ c -=  a tương đương với c = c - a</td>
                                <td> a -= 2 sẽ là 8 </td>
                            </tr>

                            <tr>
                                <td>*=</td>
                                <td>Nhân và gán <br> Nhân các giá trị của toán hạng bên trái với toán toán hạng bên phải và gán giá trị trả về vào toán hạng bên trái. Ví dụ c *=  a  tương đương với c = c*a</td>
                                <td> a *= 2 sẽ là 20 </td>
                            </tr>

                            <tr>
                                <td>/=</td>
                                <td>Chia và gán <br> Chia giá trị của toán hạng bên trái cho toán toán hạng bên phải và gán giá trị trả về vào toán hạng bên trái. Ví dụ c /= a  tương đương với c = c/a</td>
                                <td> a /= 2 sẽ là 5 </td>
                            </tr>

                            <tr>
                                <td>%=</td>
                                <td>Lấy số dư và gán <br> Chia giá trị của toán hạng bên trái cho toán toán hạng bên phải và gán giá trị số dư vào toán hạng bên trái. Ví dụ c %= a tương đương với c = c%a</td>
                                <td> a /= 8 sẽ là 2 </td>
                            </tr>

                            </tbody>
                        </table>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Toán tử  Bit </h2>
                        <p> Các toán tử dạng bit cho phép chúng ta thao tác trên từng bit riêng biệt trong các kiểu dữ liệu nguyên thuỷ. </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Toán tử</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>~</td>
                                <td>Phủ định NOT <br> Trả về giá trị phủ định của một bít.</td>
                            </tr>

                            <tr>
                                <td>&amp;</td>
                                <td>Toán tử AND <br> Trả về giá trị là 1 nếu các toán hạng là 1 và 0 trong các trường hợp khác</td>
                            </tr>

                            <tr>
                                <td>|</td>
                                <td>Toán tử OR <br> Trả về giá trị là 1 nếu một trong các toán hạng là 1 và 0 trong các trường hợp khác.</td>
                            </tr>

                            <tr>
                                <td>^</td>
                                <td>Toán tử Exclusive OR <br> Trả về giá trị là 1 nếu chỉ một trong các toán hạng là 1 và trả về 0 trong các trường hợp khác.</td>
                            </tr>

                            <tr>
                                <td>&gt;&gt;</td>
                                <td>Dịch phải <br> Chuyển toàn bộ các bít cuả một số sang phải một vị trí, giữ nguyên dấu của số âm. Toán hạng bên trái là số bị dịch còn số bên phải chỉ số vị trí mà các bít cần dịch.</td>
                            </tr>

                            <tr>
                                <td>&lt;&lt;</td>
                                <td>Dịch trái  <br> Chuyển toàn bộ các bít cuả một số sang trái một vị trí, giữ nguyên dấu cuả số âm. Toán hạng bên trái là số bị dịch còn số bên phải chỉ số vị trí mà các bít cần dịch.</td>
                            </tr>

                            </tbody>
                        </table>
                        <hr>

                        <h2 id="goto-h2-3"> Các toán tử quan hệ </h2>
                        <p> Các toán tử quan hệ được sử dụng kiểm tra mối quan hệ giữa hai toán hạng. Kết quả của một biểu thức có dùng các toán tử quan hệ là những giá trị Boolean (logic “true” hoặc “false”). Các toán tử quan hệ được sử dụng trong các cấu trúc điều khiển. </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Toán tử</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>==</td>
                                <td>So sánh bằng <br> Toán tử này kiểm tra sự tương đương của hai toán hạng</td>
                            </tr>

                            <tr>
                                <td>!=</td>
                                <td>So sánh khác <br> Toán tử này kiểm tra sự khác nhau của hai toán hạng</td>
                            </tr>

                            <tr>
                                <td>&gt;</td>
                                <td>Lớn hơn <br> Kiểm tra giá trị của toán hạng bên phải lớn hơn toán hạng bên trái hay không</td>
                            </tr>

                            <tr>
                                <td>&lt;</td>
                                <td>Nhỏ hơn <br> Kiểm tra giá trị của toán hạng bên phải có nhỏ hơn toán hạng bên trái hay không</td>
                            </tr>

                            <tr>
                                <td>&gt;=</td>
                                <td>Lớn hơn hoặc bằng <br> Kiểm tra giá trị của toán hạng bên phải có lớn hơn hoặc bằng toán hạng bên trái hay không</td>
                            </tr>

                            <tr>
                                <td>&lt;=</td>
                                <td>Nhỏ hơn hoặc bằng <br> Kiểm tra giá trị của toán hạng bên phải có nhỏ hơn hoặc bằng toán hạng bên trái hay không</td>
                            </tr>

                            </tbody>
                        </table>
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Các toán tử logic </h2>
                        <p> Các toán tử logic làm việc với các toán hạng Boolean. Các toán tử quan hệ được sử dụng trong các cấu trúc điều khiển.</p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Toán tử</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>&amp;&amp;</td>
                                <td>Toán tử và (AND) <br> Trả về một giá trị “Đúng” (True) nếu chỉ khi cả hai toán tử có giá trị “True”</td>
                            </tr>

                            <tr>
                                <td>||</td>
                                <td>Toán tử hoặc (OR) <br> Trả về giá trị “True” nếu ít nhất một giá trị là True </td>
                            </tr>

                            <tr>
                                <td>^</td>
                                <td>Toán tử XOR <br> Trả về giá trị True nếu và chỉ nếu chỉ một trong các giá trị là True, các trường hợp còn lại cho giá trị False (sai)</td>
                            </tr>

                            <tr>
                                <td>!</td>
                                <td>Toán tử phủ định (NOT) <br> Toán hạng đơn tử NOT. Chuyển giá trị từ True sang False và ngược lại.</td>
                            </tr>

                            </tbody>
                        </table>
                        <hr>

                        <h2 id="goto-h2-5"> Các toán tử điều kiện </h2>
                        <p>Toán tử điều kiện là một loại toán tử đặc biệt vì nó bao gồm ba thành phần cấu thành biểu thức điều kiện. Cú pháp:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_782497" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">&lt;biểu thức </code><code class="java value">1</code><code class="java plain">&gt;&nbsp;&nbsp; ?&nbsp;&nbsp; &lt;biểu thức </code><code class="java value">2</code><code class="java plain">&gt;&nbsp;&nbsp; :&nbsp;&nbsp; &lt;biểu thức </code><code class="java value">3</code><code class="java plain">&gt;;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <ul>
                            <li> <strong>biểu thức 1:</strong> Biểu thức logic. Trả trả về giá trị True hoặc False</li>
                            <li> <strong>biểu thức 2:</strong> Là giá trị trả về nếu <biểu thức="" 1=""> xác định là True</biểu></li>
                            <li> <strong>biểu thức 3:</strong> Là giá trị trả về nếu <biểu thức="" 1=""> xác định là False</biểu></li>
                        </ul>

                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_530331" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Test {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">a = </code><code class="java value">20</code><code class="java plain">;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">b = </code><code class="java value">3</code><code class="java plain">;</code></div><div class="line number5 index4 alt2">&nbsp;</div><div class="line number6 index5 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">String s = (a % b == </code><code class="java value">0</code><code class="java plain">) ? </code><code class="java string">"a chia het cho b"</code> <code class="java plain">: </code><code class="java string">"a khong chia het cho b"</code><code class="java plain">;</code></div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(s);</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number9 index8 alt2"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>a khong chia het cho b
</pre>
                        </div>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-6"> Toán tử gán </h2>
                        <p> Toán tử gán (=) dùng để gán một giá trị vào một biến và có thể gán nhiều giá trị cho nhiều biến cùng một lúc. </p>
                        <p> Ví dụ: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_640285" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">int</code> <code class="java plain">var = </code><code class="java value">20</code><code class="java plain">;</code></div><div class="line number2 index1 alt1"><code class="java keyword">int</code> <code class="java plain">p,q,r,s; </code></div><div class="line number3 index2 alt2"><code class="java plain">p=q=r=s=var;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Trong ví dụ trên, đoạn lệnh sau gán một giá trị cho biến var và giá trị này lại được gán cho nhiều biến trên một dòng lệnh đơn. </p>
                        <p> Dòng lệnh cuối cùng được thực hiện từ phải qua trái. Đầu tiên giá trị ở biến var được gán cho ‘s’, sau đó giá trị của ‘s’ được gán cho ‘r’ và cứ tiếp như vậy. </p>
                        <hr>

                        <h2 id="goto-h2-7"> Thứ tụ ưu tiên của các toán tử </h2>
                        <p> Thứ tự ưu tiên quyết định trật tự thực hiện các toán tử trên các biểu thức. Bảng dưới đây liệt kê thứ tự thực hiện các toán tử trong Java </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Toán tử</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Các toán tử đơn như +,-,++,--</td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>Các toán tử số học và các toán tử dịch như *,/,+,-,&lt;&lt;,&gt;&gt;</td>
                            </tr>

                            <tr>
                                <td>3</td>
                                <td>Các toán tử quan hệ như &gt;,&lt;,&gt;=,&lt;=,= =,!=</td>
                            </tr>

                            <tr>
                                <td>4</td>
                                <td>Các toán tử logic và Bit như &amp;&amp;,||,&amp;,|,^</td>
                            </tr>

                            <tr>
                                <td>5</td>
                                <td>Các toán tử gán như =,*=,/=,+=,-=</td>
                            </tr>

                            </tbody>
                        </table>
                        <hr>

                        <h2 id="goto-h2-8"> Thay đổi thứ tự ưu tiên của các toán tử </h2>
                        <p> Để thay đổi thứ tự ưu tiên trên một biểu thức, bạn có thể sử dụng dấu ngoặc đơn (): </p>
                        <ul>
                            <li> Phần được giới hạn trong ngoặc đơn được thực hiện trước. </li>
                            <li> Nếu dùng nhiều ngoặc đơn lồng nhau thì toán tử nằm trong ngoặc đơn phía trong sẽ thực thi trước, sau đó đến các vòng phía ngoài. </li>
                            <li> Trong phạm vi một cặp ngoặc đơn thì quy tắc thứ tự ưu tiên vẫn giữ nguyên tác dụng.</li>
                        </ul>

                        <p> Ví dụ:</p>
                        <div class="codeblock">
                            <div><div id="highlighter_235988" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">public</code> <code class="java keyword">class</code> <code class="java plain">Test {</code></div><div class="line number2 index1 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">public</code> <code class="java keyword">static</code> <code class="java keyword">void</code> <code class="java plain">main(String[] args) {</code></div><div class="line number3 index2 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">a = </code><code class="java value">20</code><code class="java plain">;</code></div><div class="line number4 index3 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">b = </code><code class="java value">5</code><code class="java plain">;</code></div><div class="line number5 index4 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java keyword">int</code> <code class="java plain">c = </code><code class="java value">10</code><code class="java plain">;</code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"a + b * c&nbsp;&nbsp; = "</code> <code class="java plain">+ (a + b * c));</code></div><div class="line number8 index7 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"(a + b) * c = "</code> <code class="java plain">+ ((a + b) * c));</code></div><div class="line number9 index8 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"a / b - c&nbsp;&nbsp; = "</code> <code class="java plain">+ (a / b - c));</code></div><div class="line number10 index9 alt1"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">System.out.println(</code><code class="java string">"a / (b - c) = "</code> <code class="java plain">+ (a / (b - c)));</code></div><div class="line number11 index10 alt2"><code class="java spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="java plain">}</code></div><div class="line number12 index11 alt1"><code class="java plain">}</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>a + b * c   = 70
(a + b) * c = 250
a / b - c   = -6
a / (b - c) = -4
</pre>
                        </div>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Hệ thống Unicode trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Mệnh đề if-else trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
                </div>

        </div>
    </div>
    </div>
</body>
</html>
