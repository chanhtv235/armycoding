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
                <a href="${pageContext.request.contextPath}/course/module3/session6/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Cascading Style Sheets</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Nhúng CSS vào trong tài liệu HTML</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về cách nhúng mã CSS vào HTML.</p>
                            <h2>Nội dung</h2>
                            <p>Có 3 cách để nhúng mã CSS vào trong một tài liệu HTML, bao gồm:</p>
                            <p></p>
                            <ol>
                                <li>Khai báo CSS trực tiếp ở thẻ HTML (<strong>Inline style sheet</strong>)</li>
                                <li>Khai báo CSS trong cặp thẻ <strong>&lt;style&gt;<span>&lt;/style&gt;</span></strong>&nbsp;của
                                    tài liệu HTML (<strong>Internal style sheet</strong>)
                                </li>
                                <li>Khai báo CSS trong file <strong>.css</strong> riêng biệt, nhúng file
                                    <strong>.css</strong> vào HTML bằng thẻ <strong>&lt;link&gt;</strong> (<strong>External
                                        style sheet</strong>)
                                </li>
                            </ol>
                            <p></p>
                            <h4>1. Khai báo trực tiếp ở thẻ HTML (Inline style)</h4>
                            <p>Chúng ta có thể khai báo mã CSS trực tiếp trên một thẻ HTML bằng cách sử dụng thuộc tính
                                <b>style</b>.</p>
                            <p>Phạm vi sử dụng của <strong>Inline Stylesheet</strong> (CSS trực tiếp) là chỉ sử dụng
                                trên đúng thẻ html chúng ta đặt thuộc tính <strong>style</strong>.</p>
                            <p>Ví dụ sau đây sử dụng cách khai báo CSS trực tiếp để thay đổi màu chữ và căn lề trái của
                                một thẻ <b>&lt;h1&gt;</b>:</p>
                            <p><br>
                                <iframe width="100%" height="200"
                                        src="https://jsfiddle.net/khacnhat/gsrxf2fx/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br><br>Cách làm này có ưu điểm là đơn giản, dễ thực hiện. Tuy nhiên, nhược điểm lớn
                                nhất của nó là chúng ta phải khai báo các thuộc tính style cho tất cả các thẻ HTML mà
                                chúng ta muốn định kiểu. Điều này khiến cho lượng mã CSS tăng lên đáng kể và khó quản
                                lý. Chẳng hạn, khi chúng ta muốn thay đổi màu sắc của các thẻ &lt;h1&gt; thì chúng ta
                                phải tìm đến tất cả các thẻ này và sửa khai báo CSS cho chúng.<br>Do vậy, cách làm này
                                không được sử dụng phổ biến. Thay vào đó, chúng ta thường sử dụng cách 2 hoặc cách
                                3.<br><br></p>
                            <h4>2.&nbsp;Khai báo trong thẻ &lt;style&gt; của tài liệu HTML (Internal style sheet)</h4>
                            <p>Cách tiếp theo để khai báo các thuộc tính CSS đó là sử dụng cặp thẻ <strong>&lt;style&gt;&lt;/style&gt;</strong>
                                trong một tài liệu HTML.<br>Bên trong thẻ &lt;style&gt; chúng ta có thể đưa ra tất cả
                                các khai báo CSS cần thiết rồi sau đó áp dụng cho từng thẻ HTML.<br>Thông thường, thẻ
                                &lt;style&gt; được đặt bên trong thẻ &lt;head&gt;, nhưng đó không phải là bắt buộc,
                                chúng ta có thể đặt chúng ở bất cứ đâu. Một tài liệu HTML có thể có rất nhiều thẻ&nbsp;cặp
                                thẻ <strong>&lt;style&gt;&lt;/style&gt;</strong> khác nhau.</p>
                            <p>Phạm vi sử dụng của <strong>Internal Stylesheet</strong> (CSS nội tại) là sử dụng được
                                trên đúng 1 trang html chúng ta đặt cặp thẻ <strong>&lt;style&gt;&lt;/style&gt;</strong>.
                                Qua 1 trang html khác sẽ không gọi được các Internal Stylesheet đã khai báo ở trang
                                trước đó.</p>
                            <p>Trong ví dụ sau đây, chúng ta sẽ khai báo các thuộc tính CSS trong thẻ&nbsp;cặp thẻ&nbsp;<strong>&lt;style&gt;&lt;/style&gt;</strong>
                                để thay đổi màu nền của trang web, màu chữ và căn lề trái của thẻ &lt;h1&gt;.<br><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/6umz4uk9/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br><br>Cách làm này thường phổ biến hơn cách 1, bởi vì chúng ta dễ dàng quản lý hơn.
                                Chẳng hạn, nếu muốn thay đổi màu sắc của các tiêu đề, chúng ta chỉ cần cập nhật màu sắc
                                một lần duy nhất mà không cần phải tìm đến tất cả các thẻ &lt;h1&gt; như trước.<br>Tuy
                                nhiên, cách làm này vẫn còn hạn chế đó là chúng ta phải khai báo các thẻ &lt;style&gt;
                                cùng với các thuộc tính CSS cho từng trang HTML. Như vậy, nếu website có 100 trang thì
                                chúng ta phải lặp lại 100 lần các đoạn mã CSS giống nhau.<br>Để khắc phục hạn chế này,
                                chúng ta sử dụng cách nhúng file .css riêng biệt.<br><br></p>
                            <h4>3.&nbsp;Khai báo trong file .css riêng biệt (External style sheet)</h4>
                            <p>Với cách làm này, chúng ta tạo một file có đuôi là <strong>.css</strong>, chẳng hạn là
                                style.css. Trong file này chúng ta khai báo tất cả các thuộc tính CSS mong muốn. Sau đó,
                                chúng ta nhúng file .css này vào trong tài liệu HTML bằng cách sử dụng thẻ &lt;link&gt;
                                và thêm thuộc tính href vào thẻ &lt;link <strong>href="./css/mystyle.css"</strong>&gt;
                                để khai báo đường dẫn tới file .css đã tạo ra trước đó.<br>Thẻ &lt;link&gt; được đặt ở
                                trong thẻ &lt;head&gt; của tài liệu HTML.</p>
                            <p>Phạm vi sử dụng của <strong>External Stylesheet</strong> (CSS ngoại tuyến) là sử dụng
                                được trên nhiều trang html cùng lúc, sử dụng trên các trang html mà chúng ta đặt thẻ
                                <strong>&lt;link&gt;</strong> để chèn file <strong>.css</strong> đã khai báo css trước
                                đó.</p>
                            <p>Trong ví dụ sau, chúng ta sử dụng một file mystyle.css để thay đổi màu nền của trang web,
                                màu chữ và căn lề trái của thẻ &lt;h1&gt;.<br><br><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/qphwuag9/1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br><br>Như vậy, việc lựa chọn cách nhúng CSS phù hợp là tuỳ thuộc vào chúng ta.<br>Trong
                                thực tế, hầu hết các website đều không chỉ sử dụng một cách nào cố định cả, chúng ta có
                                thể kết hợp cả 3 cách này vào trong cùng một tài liệu.<br><br></p>
                            <h4>Nhiều khai báo Style sheet trùng nhau</h4>
                            <p>Trong trường hợp có nhiều khai báo trùng nhau thì khai báo cuối cùng sẽ được sử dụng.<br>Ví
                                dụ, chúng ta có một file mystyle.css với khai báo màu cho thẻ &lt;h1&gt; như
                                sau:<br><br>
                                <iframe width="100%" height="200"
                                        src="https://jsfiddle.net/khacnhat/L2Lfwwe8/embedded/css/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br><br>Sau đó, trong thẻ &lt;style&gt; của tài liệu HTML chúng ta cũng có khai báo
                                tương tự, nhưng với màu sắc khác:<br><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/cha011ap/2/embedded/html/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br>Trong trường hợp này, thẻ &lt;h1&gt; sẽ hiển thị màu cam (orange).<br>Nhưng nếu khối
                                thẻ &lt;style&gt; được khai báo trước thẻ &lt;link&gt; thì màu của thẻ &lt;h1&gt; sẽ là
                                xanh (navy).<br><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/06gdrq8t/1/embedded/html/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br><br></p>
                            <h4>Độ ưu tiên các kiểu khai báo CSS</h4>
                            <p>Khi có nhiều khai báo CSS cho cùng một thẻ HTML thì các khai báo này sẽ tuân thủ theo độ
                                ưu tiên như sau:</p>
                            <ol>
                                <li>Inline Stylesheet (CSS trực tiếp)</li>
                                <li>Internal Stylesheet (CSS nội tại trang)</li>
                                <li>External Stylesheet (CSS ngoại tuyến)</li>
                                <li>Default Browser (CSS mặc định của trình duyệt)</li>
                            </ol>
                            <p>Có nghĩa là các khai báo trực tiếp trên thẻ HTML (Inline style) sẽ có độ ưu tiên cao
                                nhất, sau đó là đến các khai báo External Style và Internal Style, và cuối cùng, nếu
                                không có khai báo nào cả thì các kiểu mặc định của trình duyệt sẽ được sử dụng.</p>
                            <p>Chẳng hạn, trong ví dụ sau thì màu của thẻ &lt;h1&gt; sẽ là đỏ, màu nền sẽ là màu
                                vàng.</p>
                            <p></p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/daonguyendev/w3246bqz/4/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Sunday, 12 March 2023, 1:27 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
