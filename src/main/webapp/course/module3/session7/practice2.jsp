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
                <a href="/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Thiết kế Layout</a>

                <div role="main"><span id="maincontent"></span>
                    <h2>[Thực hành] Tạo menu dọc</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><p></p>
                            <h2>Mục tiêu</h2>
                            <p>Luyện tập sử dụng CSS để tạo được các hiệu ứng cho menu cơ bản.</p>
                            <h2>Nội dung</h2>
                            <p>Với CSS, chúng ta có thể dễ dàng tạo ra một trình đơn (menu) có khả năng thả xuống
                                (dropdown) mỗi khi đưa chuột vào một mục chọn trong trình đơn (mục chọn có trình đơn
                                con). Trong phần hướng dẫn này chúng ta sẽ tạo một trình đơn “dropdown” dọc đơn giản.
                                Menu của chúng ta hoạt động như sau:</p>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/n128qwjg/4/embedded/result/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest="" width="100%"
                                        height="300" frameborder="0"></iframe>
                            </p>
                            <h2>Hướng dẫn</h2>
                            <p>Đầu tiên, chúng ta cần soạn thảo một tài liệu HTML với cấu trúc cơ bản (gồm html, head,
                                body). Sau đó, chúng ta soạn thảo đoạn mã HTML sau vào phần body. Đoạn mã này cho phép
                                bạn tạo ra một vùng div (có id là menu) chứa các Danh sách không có thứ tự (Unordered
                                List – ul) lồng nhau.</p>
                            <p>index.html</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!DOCTYPE <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    &lt;<span style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="UTF-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Title&lt;/<span style="color: #0033b3;">title</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">link </span><span style="color: #174ad4;">rel</span><span
                                    style="color: #067d17;">="stylesheet" </span><span
                                    style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="styles.css"</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">h3</span>&gt;ACCP i10&lt;/<span
                                    style="color: #0033b3;">h3</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">div </span><span style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="menu"</span>&gt;<br>    &lt;<span style="color: #0033b3;">ul</span>&gt;<br>        &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Sem 1&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;<br>            &lt;<span
                                    style="color: #0033b3;">ul</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Computing Fundametal&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;C Programming&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Building Dynamic Website&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;MS Transact-SQL&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Project&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>            &lt;/<span
                                    style="color: #0033b3;">ul</span>&gt;<br>        &lt;/<span style="color: #0033b3;">li</span>&gt;<br>        &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Sem 2 &lt;/<span
                                    style="color: #0033b3;">a</span>&gt;<br>            &lt;<span
                                    style="color: #0033b3;">ul</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Cloud Computing&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;APJ - I&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;APJ - II&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;APJ - III&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>                &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;eProject&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>            &lt;/<span
                                    style="color: #0033b3;">ul</span>&gt;<br>        &lt;/<span style="color: #0033b3;">li</span>&gt;<br>        &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Sem 3&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>        &lt;<span
                                    style="color: #0033b3;">li</span>&gt;&lt;<span
                                    style="color: #0033b3;">a </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="#"</span>&gt;Sem 4&lt;/<span
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br>    &lt;/<span
                                    style="color: #0033b3;">ul</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">div</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p><span style="font-size: 1rem;">Để tránh có sự khác biệt giữa các trình duyệt, chúng ta bổ sung đoạn mã CSS sau. Các bộ chọn (selector) này đặt cố định loại font chữ cho tài liệu và đặt các thuộc tính căn lề cho khung và cho nội dung của các danh sách, phần tử trong danh sách (ul, li).</span>
                            </p>
                            <p><span style="font-size: 1rem;">styles.css</span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><span
                                    style="color: #0033b3;">#menu</span>, <span style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}</pre>
                            <p><span style="font-size: 1rem;">Chúng ta tiếp tục bổ sung bộ chọn với các thuộc tính sau cho các phần tử trong danh sách (li).</span>
                            </p>
                            <ul>
                                <li><strong>list-style:&nbsp; none;</strong>&nbsp;Bỏ đi các ký hiệu đánh dấu đầu mỗi
                                    phần tử của<br>danh sách (bullet).
                                </li>
                                <li><strong>position: relative;</strong>&nbsp;Cho phép các danh sách con được đặt cạnh
                                    phần tử chứa nó<br>(phần tử của danh sách ngoài)
                                </li>
                                <li><strong>width:100px; và height: 30px;</strong>&nbsp;Cố định chiều rộng và chiều
                                    cao<br>của một phần tử trong danh sách.
                                </li>
                                <li><strong>padding:0 20px;</strong>&nbsp;Cố định lề trái (left) và phải (right) dành
                                    cho các nội dung bên trong phần<br>tử danh sách (li) với khung viền của nó.
                                </li>
                                <li><strong>background-color: black;</strong>&nbsp; Đổi màu nền sang mà đen cho tất cả
                                    các phần tử trong danh<br>sách.
                                </li>
                                <li><strong>line-height: 30px;</strong>&nbsp;Cố định chiều cao cho mỗi dòng văn bản
                                    trong phần tử của danh sách.
                                </li>
                                <li><strong>cursor: pointer;</strong>&nbsp;chuyển biểu tượng của con trỏ màn hình sang
                                    hình bàn tay.
                                </li>
                            </ul>
                            <p><span style="font-size: 1rem;">Chúng ta tiếp tục định nghĩa thêm một bộ chọn mới dành cho các liên kết bên trong các danh sách (thẻ a); bộ chọn này gồm các mô tả sau: <b>text-decoration: none;</b> dùng để bỏ các gạch chân của liên kết và <b>color: white;</b> dùng để đổi màu liên kết sang màu trắng:</span>
                            </p>
                            <p><span style="font-size: 1rem;">styles.css</span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><span
                                    style="color: #0033b3;">#menu</span>, <span style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">list-style</span>: <span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0 20</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">cursor</span>:<span
                                    style="color: #067d17;">pointer</span>;<br>}</pre>
                            <p><span style="font-size: 1rem;">Để mỗi khi chúng ta đưa chuột qua các phần tử của danh sách (giờ là mục chọn trong trình đơn) màu nền của chúng bị thay đổi, thì chúng ta cần định nghĩa một bộ chọn như sau:</span>
                            </p>
                            <p><span style="font-size: 1rem;">styles.css</span></p>
                            <p></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><span
                                    style="color: #0033b3;">#menu</span>, <span style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">list-style</span>: <span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0 20</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">cursor</span>:<span
                                    style="color: #067d17;">pointer</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu li</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>:<span
                                    style="color: #067d17;">red</span>;<br>}</pre>
                            <p></p>
                            <p><span style="font-size: 1rem;">Bộ chọn tiếp theo sẽ dành cho các danh sách con (danh sách bên trong một phần tử của danh sách khác), mô tả&nbsp;</span><strong
                                    style="font-size: 1rem;">position: absolute;</strong><span style="font-size: 1rem;">&nbsp;cho phép cố định vị trí xuất hiện của các danh sách con, mô tả&nbsp;</span><strong
                                    style="font-size: 1rem;">top: 0;</strong><span style="font-size: 1rem;">&nbsp;và&nbsp;</span><strong
                                    style="font-size: 1rem;">left: 160px;</strong><span style="font-size: 1rem;">&nbsp;xác định vị trí góc trên trái của khung chứa danh sách con (so với vị trí của phần tử chứa danh sách này), mô tả&nbsp;</span><strong
                                    style="font-size: 1rem;">visibility: hidden;</strong><span style="font-size: 1rem;">&nbsp;sẽ ẩn làm các danh sách con.</span>
                            </p>
                            <p></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><span
                                    style="color: #0033b3;">#menu</span>, <span style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">list-style</span>: <span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0 20</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">cursor</span>:<span
                                    style="color: #067d17;">pointer</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu li</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>:<span
                                    style="color: #067d17;">red</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul</span>{<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">absolute</span>;<br>    <span
                                    style="color: #174ad4;">top</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">left</span>:<span style="color: #1750eb;">140</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">visibility</span>:<span
                                    style="color: #067d17;">hidden</span>;<br>}</pre>
                            <p><span style="font-size: 1rem;">Cuối cùng, chúng ta thêm một bộ chọn dành cho các danh sách con khi phần tử của danh sách ngoài bị đưa con trỏ qua. Bộ chọn này sẽ cho phép danh sách con tương ứng của phần tử đó được hiển thị lên.</span>
                            </p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><span
                                    style="color: #0033b3;">#menu</span>, <span style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">list-style</span>: <span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0 20</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">cursor</span>:<span
                                    style="color: #067d17;">pointer</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu li</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>:<span
                                    style="color: #067d17;">red</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul</span>{<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">absolute</span>;<br>    <span
                                    style="color: #174ad4;">top</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">left</span>:<span style="color: #1750eb;">140</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">visibility</span>:<span
                                    style="color: #067d17;">hidden</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul li</span>:<span
                                    style="color: #0033b3;">hover ul</span>{<br>    <span style="color: #174ad4;">visibility</span>:<span
                                    style="color: #067d17;">visible</span>;<br>}</pre>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>
