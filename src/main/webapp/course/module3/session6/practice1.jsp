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
                <a href="/course/module3/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">6.Cascading Style Sheets</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Thực hành] Sử dụng CSS</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h3>Mục tiêu</h3>
                            <p>Luyện tập sử dụng các thuộc tính của CSS</p>
                            <h3>Mô tả</h3>
                            <p>Sử dụng CSS để thay đổi các thuộc tính của HTML</p>
                            <h3>Hướng dẫn</h3>
                            <p>Bước 1: Tạo một dự án bằng webstorm và tạo file index.html như sau:</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!DOCTYPE <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    &lt;<span style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="UTF-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Title&lt;/<span style="color: #0033b3;">title</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">h1</span>&gt;Đây là đề mục&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Bước 2: Khai báo style, sử dụng thuộc tính font-family để thay đổi font chữ</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!DOCTYPE <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    &lt;<span style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="UTF-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Title&lt;/<span style="color: #0033b3;">title</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">style</span>&gt;<br>        <span
                                    style="color: #0033b3;">h1 </span>{<br>            <span style="color: #174ad4;">color</span>:<span
                                    style="color: #067d17;">blue</span>;<br>            <span style="color: #174ad4;">font-family</span>:<span
                                    style="color: #0033b3;">Tahoma</span>;<br>            <span style="color: #174ad4;">font-size</span>:<span
                                    style="color: #1750eb;">200</span>%;<br><br>        }<br>        <span
                                    style="color: #0033b3;">p  </span>{<br>            <span style="color: #174ad4;">color</span>:<span
                                    style="color: #067d17;">red</span>;<br>            <span style="color: #174ad4;">font-family</span>:<span
                                    style="color: #0033b3;">Arial</span>;<br>            <span style="color: #174ad4;">font-size</span>:<span
                                    style="color: #1750eb;">120</span>%;<br>        }<br>    &lt;/<span
                                    style="color: #0033b3;">style</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">h1</span>&gt;Đây là đề mục&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Bước 3: Sử dụng thuộc tính border để vẽ viền cho thẻ p</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!DOCTYPE <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    &lt;<span style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="UTF-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Title&lt;/<span style="color: #0033b3;">title</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">style</span>&gt;<br>        <span
                                    style="color: #0033b3;">h1 </span>{<br>            <span style="color: #174ad4;">color</span>:<span
                                    style="color: #067d17;">blue</span>;<br>            <span style="color: #174ad4;">font-family</span>:<span
                                    style="color: #0033b3;">Tahoma</span>;<br>            <span style="color: #174ad4;">font-size</span>:<span
                                    style="color: #1750eb;">200</span>%;<br><br>        }<br>        <span
                                    style="color: #0033b3;">p  </span>{<br>            <span style="color: #174ad4;">color</span>:<span
                                    style="color: #067d17;">red</span>;<br>            <span style="color: #174ad4;">font-family</span>:<span
                                    style="color: #0033b3;">Arial</span>;<br>            <span style="color: #174ad4;">font-size</span>:<span
                                    style="color: #1750eb;">120</span>%;<br>            <span style="color: #174ad4;">border</span>:<span
                                    style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid grey</span>;<br>        }<br>    &lt;/<span
                                    style="color: #0033b3;">style</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">h1</span>&gt;Đây là đề mục&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Bước 4: Sử dụng thuộc tính padding để quy định khoảng cách từ đường viền đến các thành
                                phần bên trong:</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!DOCTYPE <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    &lt;<span style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="UTF-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Title&lt;/<span style="color: #0033b3;">title</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">style</span>&gt;<br>        <span
                                    style="color: #0033b3;">h1 </span>{<br>            <span style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">blue</span>;<br>            <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Tahoma</span>;<br>            <span style="color: #174ad4;">font-size</span>: <span
                                    style="color: #1750eb;">200</span>%;<br><br>        }<br><br>        <span
                                    style="color: #0033b3;">p </span>{<br>            <span style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">red</span>;<br>            <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>            <span style="color: #174ad4;">font-size</span>: <span
                                    style="color: #1750eb;">120</span>%;<br>            <span style="color: #174ad4;">border</span>: <span
                                    style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid grey</span>;<br>            <span
                                    style="color: #174ad4;">padding</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>        }<br>    &lt;/<span
                                    style="color: #0033b3;">style</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br><br>&lt;<span
                                    style="color: #0033b3;">h1</span>&gt;Đây là đề mục&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br><br>&lt;<span
                                    style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br><br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Bước 5: Gán id cho các element để thay đổi css cho từng phần tử</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!DOCTYPE <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    &lt;<span style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="UTF-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Title&lt;/<span style="color: #0033b3;">title</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">style</span>&gt;<br>        <span
                                    style="color: #0033b3;">h1 </span>{<br>            <span style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">blue</span>;<br>            <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Tahoma</span>;<br>            <span style="color: #174ad4;">font-size</span>: <span
                                    style="color: #1750eb;">200</span>%;<br><br>        }<br><br>        <span
                                    style="color: #0033b3;">p </span>{<br>            <span style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">red</span>;<br>            <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>            <span style="color: #174ad4;">font-size</span>: <span
                                    style="color: #1750eb;">120</span>%;<br>            <span style="color: #174ad4;">border</span>: <span
                                    style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid grey</span>;<br>            <span
                                    style="color: #174ad4;">padding</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>        }<br>        <span
                                    style="color: #0033b3;">#element1 </span>{<br>            <span
                                    style="color: #174ad4;">color</span>: <span style="color: #067d17;">blue</span>;<br>        }<br>    &lt;/<span
                                    style="color: #0033b3;">style</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br><br>&lt;<span
                                    style="color: #0033b3;">h1</span>&gt;Đây là đề mục&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br><br>&lt;<span
                                    style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;<span style="color: #0033b3;">p</span>&gt;Đây là đoạn văn bản.&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">p </span><span style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="element1"</span>&gt;Đoạn văn bản có thuộc tính id&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
