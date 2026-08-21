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
                <a href="${pageContext.request.contextPath}/course/module2/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 10. Exception (Ngoại lệ) trong java</a>
                <header class="entry-header"><h1>Xử lý ngoại lệ trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Học Java cơ bản </a></div>
                        <div class="nxt-btn"><a href="#"> Khối lệnh try-catch trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> <strong>Exception Handling</strong> trong java hay xử lý ngoại lệ trong java là một cơ chế mạnh mẽ để xử lý các lỗi runtime để có thể duy trì luồng bình thường của ứng dụng. </p>
                        <p> Trong bài này, chúng ta sẽ tìm hiểu về ngoại lệ (Exception) trong java, các kiểu ngoại lệ và sự khác biệt giữa các ngoại lệ <strong>checked</strong> và <strong>unchecked</strong>. </p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Exception là gì?</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Exception Handling là gì?</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Lợi thế của Exception Handling trong java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Hệ thống cấp bậc của các lớp ngoại lệ trong Java</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Các kiểu của ngoại lệ</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Sự khác nhau giữa các ngoại lệ checked và unchecked</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">1. Checked Exception</a></li><li><a href="#goto-h3-2">2. Unchecked Exception</a></li><li><a href="#goto-h3-3">3. Error</a></li></ul>
                                </li>
                                <li class="list-goto-7">
                                    <a href="#goto-h2-7">Các kịch bản phổ biến nơi ngoại lệ có thể xảy ra</a>
                                    <ul>
                                        <li><a href="#goto-h3-4">1. Kịch bản ArithmeticException xảy ra</a></li><li><a href="#goto-h3-5">2. Kịch bản NullPointerException xảy ra</a></li><li><a href="#goto-h3-6">3. Kịch bản NumberFormatException xảy ra</a></li><li><a href="#goto-h3-7">Kịch bản ArrayIndexOutOfBoundsException xảy ra</a></li></ul>
                                </li>
                                <li class="list-goto-8">
                                    <a href="#goto-h2-8">Các từ khóa xử lý ngoại lệ trong java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Exception là gì? </h2>
                        <p> Theo từ điển: Exception (ngoại lệ) là một tình trạng bất thường. </p>
                        <p> Trong java, ngoại lệ là một sự kiện làm gián đoạn luồng bình thường của chương trình. Nó là một đối tượng được ném ra tại runtime. </p>
                        <hr>

                        <h2 id="goto-h2-2"> Exception Handling là gì? </h2>
                        <p> Exception Handling (xử lý ngoại lệ) là một cơ chế xử lý các lỗi runtime như ClassNotFound, IO, SQL, Remote, vv </p>
                        <hr>

                        <h2 id="goto-h2-3"> Lợi thế của Exception Handling trong java </h2>
                        <p> Lợi thế cốt lõi của việc xử lý ngoại lệ là duy trì luồng bình thường của ứng dụng. Ngoại lệ thường làm gián đoạn luồng bình thường của ứng dụng đó là lý do tại sao chúng ta sử dụng xử lý ngoại lệ. Hãy xem xét kịch bản sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_603199" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">statement </code><code class="java value">1</code><code class="java plain">;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java plain">statement </code><code class="java value">2</code><code class="java plain">;&nbsp; </code></div><div class="line number3 index2 alt2"><code class="java plain">statement </code><code class="java value">3</code><code class="java plain">;&nbsp; </code></div><div class="line number4 index3 alt1"><code class="java plain">statement </code><code class="java value">4</code><code class="java plain">;&nbsp; </code></div><div class="line number5 index4 alt2"><code class="java plain">statement </code><code class="java value">5</code><code class="java plain">; </code><code class="java comments">//ngoại lệ xảy ra</code></div><div class="line number6 index5 alt1"><code class="java plain">statement </code><code class="java value">6</code><code class="java plain">;&nbsp; </code></div><div class="line number7 index6 alt2"><code class="java plain">statement </code><code class="java value">7</code><code class="java plain">;&nbsp; </code></div><div class="line number8 index7 alt1"><code class="java plain">statement </code><code class="java value">8</code><code class="java plain">;&nbsp; </code></div><div class="line number9 index8 alt2"><code class="java plain">statement </code><code class="java value">9</code><code class="java plain">;&nbsp; </code></div><div class="line number10 index9 alt1"><code class="java plain">statement </code><code class="java value">10</code><code class="java plain">;&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Giả sử có 10 câu lệnh trong chương trình của bạn và xảy ra trường hợp ngoại lệ ở câu lệnh 5, phần còn lại của chương trình sẽ không được thực thi, nghĩa là câu lệnh 6 đến 10 sẽ không chạy. Nếu chúng ta thực hiện xử lý ngoại lệ, phần còn lại của câu lệnh sẽ được thực hiện. Đó là lý do tại sao chúng ta sử dụng xử lý ngoại lệ trong java. </p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Hệ thống cấp bậc của các lớp ngoại lệ trong Java </h2>
                        <img src="https://viettuts.vn/images/java/exception-handling/exception-handling-trong-java.png" alt="exception handling trong java">

                        <h2 id="goto-h2-5"> Các kiểu của ngoại lệ </h2>
                        <p> Có hai loại ngoại lệ chính là: <strong>checked</strong> và <strong>unchecked</strong>. Còn Sun Microsystem nói rằng có ba loại ngoại lệ: </p>
                        <ol>
                            <li>Checked Exception</li>
                            <li>Unchecked Exception</li>
                            <li>Error</li>
                        </ol>
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-6"> Sự khác nhau giữa các ngoại lệ checked và unchecked </h2>
                        <h3 id="goto-h3-1"> 1. Checked Exception </h3>
                        <p> Các lớp extends từ lớp Throwable ngoại trừ RuntimeException và Error được gọi là checked exception, ví dụ như Exception, SQLException vv. Các checked exception được kiểm tra tại compile-time. </p>
                        <p> Ví dụ: ta có hàm testCheckedException() ném ra một ngoại lệ được extends từ lớp Exception, nên khi nó được gọi ra trong hàm main, trình biên dịch sẽ check(báo lỗi) tức là trình biên dịch sẽ nói ràng hàm này có ném lỗi ra đấy phải xử lý lỗi đi. </p>
                        <img src="https://viettuts.vn/images/java/exception-handling/vi-du-checked-exception-trong-java.png" alt="vi du checked exception trong java">

                        <h3 id="goto-h3-2"> 2. Unchecked Exception </h3>
                        <p> Các lớp extends từ RuntimeException được gọi là unchecked exception, ví dụ: ArithmeticException, NullPointerException, ArrayIndexOutOfBoundsException,... Các ngoại lệ unchecked không được kiểm tra tại compile-time mà chúng được kiểm tra tại runtime. </p>
                        <p> Ví dụ: ta có hàm testUncheckedException() ném ra một ngoại lệ được extends từ lớp RuntimeException, nên khi nó được gọi ra trong hàm main, trình biên dịch sẽ không check (không báo lỗi). Mà khi chạy nếu có lỗi sẽ bắn ra tại runtime.  </p>
                        <img src="https://viettuts.vn/images/java/exception-handling/vi-du-unchecked-exception-trong-java.png" alt="vi du unchecked exception trong java">

                        <h3 id="goto-h3-3"> 3. Error </h3>
                        <p> Error là lỗi không thể cứu chữa được, ví dụ: OutOfMemoryError, VirtualMachineError, AssertionError, vv </p>
                        <hr>

                        <h2 id="goto-h2-7"> Các kịch bản phổ biến nơi ngoại lệ có thể xảy ra </h2>
                        <p> Có một số kịch bản mà ngoại lệ unchecked có thể xảy ra. Như các trường hợp sau: </p>
                        <h3 id="goto-h3-4"> 1. Kịch bản ArithmeticException xảy ra </h3>
                        <p> Nếu chúng ta chia bất kỳ số nào cho số 0, xảy ra ngoại lệ ArithmeticException. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_103791" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">int</code> <code class="java plain">a=</code><code class="java value">50</code><code class="java plain">/</code><code class="java value">0</code><code class="java plain">;</code><code class="java comments">//ArithmeticException</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h3 id="goto-h3-5"> 2. Kịch bản NullPointerException xảy ra </h3>
                        <p> Nếu chúng ta có bất kỳ biến nào có giá trị null , thực hiện bất kỳ hoạt động nào bởi biến đó sẽ xảy ra ngoại lệ NullPointerException. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_784882" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">String s=</code><code class="java keyword">null</code><code class="java plain">;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java plain">System.out.println(s.length());</code><code class="java comments">//NullPointerException</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h3 id="goto-h3-6"> 3. Kịch bản NumberFormatException xảy ra </h3>
                        <p> Sự định dạng sai của bất kỳ giá trị nào, có thể xảy ra NumberFormatException. Giả sử ta có một biến String có giá trị là các ký tự, chuyển đổi biến này thành số sẽ xảy ra NumberFormatException </p>
                        <div class="codeblock">
                            <div><div id="highlighter_955101" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">String s=</code><code class="java string">"abc"</code><code class="java plain">;&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java keyword">int</code> <code class="java plain">i=Integer.parseInt(s);</code><code class="java comments">//NumberFormatException&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h3 id="goto-h3-7"> Kịch bản ArrayIndexOutOfBoundsException xảy ra </h3>
                        <p> Nếu bạn chèn bất kỳ giá trị nào vào index sai, sẽ xảy ra ngoại lệ ArrayIndexOutOfBoundsException như thể hiện dưới đây: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_4665" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java keyword">int</code> <code class="java plain">a[]=</code><code class="java keyword">new</code> <code class="java keyword">int</code><code class="java plain">[</code><code class="java value">5</code><code class="java plain">];&nbsp; </code></div><div class="line number2 index1 alt1"><code class="java plain">a[</code><code class="java value">10</code><code class="java plain">]=</code><code class="java value">50</code><code class="java plain">; </code><code class="java comments">//ArrayIndexOutOfBoundsException&nbsp; </code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <h2 id="goto-h2-8"> Các từ khóa xử lý ngoại lệ trong java </h2>
                        <p> Có 5 từ khóa được sử dụng để xử lý ngoại lệ trong java, đó là: </p>
                        <ol>
                            <li>try</li>
                            <li>catch</li>
                            <li>finally</li>
                            <li>throw</li>
                            <li>throws</li>
                        </ol>
                        <p> Chúng ta sẽ học cách sử dụng các từ khóa này trong các bài tiếp theo... </p>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Học Java cơ bản </a></div>
                        <div class="nxt-btn"><a href="#"> Khối lệnh try-catch trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>

        </div>
        </div>
    </div>
    </div>
</body>
</html>
