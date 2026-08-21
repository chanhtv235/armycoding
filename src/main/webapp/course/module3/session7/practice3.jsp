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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Thiết kế Layout</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Thực hành] Tạo menu ngang</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2
                                style="box-sizing: border-box; font-size: 2.143rem; margin-top: 0px; margin-bottom: 0.5rem; font-family: 'Open Sans'; font-weight: 500; line-height: 1.3; color: #37474f; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                            Mục tiêu</h2>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Luyện tập sử dụng CSS để tạo được các menu ngang cơ bản.</p>
                            <h2 style="box-sizing: border-box; font-size: 2.143rem; margin-top: 0px; margin-bottom: 0.5rem; font-family: 'Open Sans'; font-weight: 500; line-height: 1.3; color: #37474f; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Nội dung</h2>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Với CSS, chúng ta có thể dễ dàng tạo ra một trình đơn (menu) có khả năng thả xuống
                                (dropdown) mỗi khi đưa con trỏ vào một mục chọn trong trình đơn (mục chọn có trình đơn
                                con).&nbsp;Trong phần này chúng ta sẽ xây dựng một trình đơn hàng ngang, có khả năng
                                buôn xuống mỗi khi đưa con trỏ qua.</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Kết quả của phần thực hành này như sau:</p>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/zoLgsu9u/1/embedded/result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2 style="box-sizing: border-box; font-size: 2.143rem; margin-top: 0px; margin-bottom: 0.5rem; font-family: 'Open Sans'; font-weight: 500; line-height: 1.3; color: #37474f; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Hướng dẫn</h2>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Trước hết, chúng ta cần soạn thảo một trang HTML với cấu trúc chuẩn (gồm html, head và
                                body). Sau đó bạn bổ sung đoạn code dưới đây vào phần body để có một danh sách các liên
                                kết lồng nhau (hai cấp).</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                index.html</p>
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
                                    style="color: #0033b3;">div </span><span style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="menu"</span>&gt;<br>    &lt;<span style="color: #0033b3;">ul</span>&gt;<br><br>        &lt;<span
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
                                    style="color: #0033b3;">a</span>&gt;&lt;/<span style="color: #0033b3;">li</span>&gt;<br><br>    &lt;/<span
                                    style="color: #0033b3;">ul</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">div</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                Tiếp theo, chúng ta tạo ba bộ chọn sau đây để cố định phông chữ cho trang HTML và đặt
                                phân vùng cho trình đơn (chiều cao, đường viền, khoảng cách và màu nền.</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">&nbsp;styles.css</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><br><span style="color: #0033b3;">#menu</span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">background-color</span>: <span style="color: #0033b3;">#000000</span>;<br>    <span
                                    style="color: #174ad4;">border</span>: <span style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid </span><span style="color: #0033b3;">#CDCDCD</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">Bây giờ, định nghĩa tiếp một bộ chọn riêng cho các phần tử trong danh sách:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">&nbsp;styles.css</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre class="tCont CSS hljs active"
                                 style="-webkit-font-smoothing: antialiased; margin: 0px; padding: 10px; display: block; overflow-x: auto; background: #f3f5f6; font-family: 'SF Mono', Monaco, 'Andale Mono', 'Lucida Console', 'Bitstream Vera Sans Mono', 'Courier New', Courier, monospace; line-height: 1.55em; font-size: 12px; color: #39464e; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span
                                    class="hljs-selector-tag"
                                    style="-webkit-font-smoothing: antialiased; color: #e77600;">body</span>{
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">font-family</span>: Arial;
}

<span class="hljs-selector-id" style="-webkit-font-smoothing: antialiased; color: #e77600;">#menu</span>{
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">height</span>: <span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">30px</span>;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">padding</span>:<span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">0</span>;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">margin</span>:<span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">0</span>;
    <span class="hljs-attribute"
          style="-webkit-font-smoothing: antialiased; color: #108de8;">background-color</span>: <span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">#000000</span>;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">border</span>: <span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">1px</span> solid <span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">#CDCDCD</span>;
}

<span class="hljs-selector-id" style="-webkit-font-smoothing: antialiased; color: #e77600;">#menu</span> <span
                                        class="hljs-selector-tag"
                                        style="-webkit-font-smoothing: antialiased; color: #e77600;">ul</span>, <span
                                        class="hljs-selector-id"
                                        style="-webkit-font-smoothing: antialiased; color: #e77600;">#menu</span> <span
                                        class="hljs-selector-tag"
                                        style="-webkit-font-smoothing: antialiased; color: #e77600;">li</span>{
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">padding</span>:<span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">0</span>;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">margin</span>:<span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">0</span>;
}

<span class="hljs-selector-id" style="-webkit-font-smoothing: antialiased; color: #e77600;">#menu</span> <span
                                        class="hljs-selector-tag"
                                        style="-webkit-font-smoothing: antialiased; color: #e77600;">li</span>{
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">position</span>: relative;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">float</span>: left;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">list-style</span>: none;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">margin</span>: <span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">0</span>;
    <span class="hljs-attribute" style="-webkit-font-smoothing: antialiased; color: #108de8;">padding</span>:<span
                                        class="hljs-number"
                                        style="-webkit-font-smoothing: antialiased; color: #ed6e55;">0</span>;
}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">Sau đó, chúng ta định nghĩa một bộ chọn dành cho các liên kết trong trình đơn, bộ chọn này sẽ cố định độ rộng của một mục chọn trong trình đơn, chiều cao, cách hiển thị và định dạng về văn bản của các liên kết trong trình đơn.</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">&nbsp;styles.css</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body </span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><br><span style="color: #0033b3;">#menu </span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">background-color</span>: <span style="color: #0033b3;">#000000</span>;<br>    <span
                                    style="color: #174ad4;">border</span>: <span style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid </span><span style="color: #0033b3;">#CDCDCD</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li </span>{<br>    <span style="color: #174ad4;">padding</span>: <span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>: <span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li </span>{<br>    <span style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">float</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">list-style</span>: <span style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>: <span style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li a </span>{<br>    <span style="color: #174ad4;">width</span>: <span
                                    style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">block</span>;<br>    <span style="color: #174ad4;">text-decoration</span>: <span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul li a </span>{<br>    <span
                                    style="color: #174ad4;">width</span>: <span style="color: #1750eb;">200</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">padding-left</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br><br>}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">Tiếp theo, chúng ta bổ sung thêm một bộ chọn dành cho trường hợp khi các liên kết được con trỏ đưa qua, bộ chọn sẽ chuyển màu nền của liên kết sang màu đỏ khi xảy ra sự kiện này:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">&nbsp;styles.css</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><br><span style="color: #0033b3;">#menu</span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">background-color</span>: <span style="color: #0033b3;">#000000</span>;<br>    <span
                                    style="color: #174ad4;">border</span>: <span style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid </span><span style="color: #0033b3;">#CDCDCD</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">float</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">list-style</span>: <span style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">block</span>;<br>    <span style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>: <span style="color: #1750eb;">200</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">padding-left</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">red</span>;<br>}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">Sau đó, chúng ta thêm một bộ chọn dành cho các danh sách con (trình đơn con) để quy định về vị trí hiển thị của chúng so với mục chọn của trình đơn cha. Bộ chọn đó như sau:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">&nbsp;styles.css</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><br><span style="color: #0033b3;">#menu</span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">background-color</span>: <span style="color: #0033b3;">#000000</span>;<br>    <span
                                    style="color: #174ad4;">border</span>: <span style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid </span><span style="color: #0033b3;">#CDCDCD</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">float</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">list-style</span>: <span style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">block</span>;<br>    <span style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>: <span style="color: #1750eb;">200</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">padding-left</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">red</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul</span>{<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">absolute</span>;<br>    <span
                                    style="color: #174ad4;">top</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">Bây giờ, chúng ta có thể thấy các mục chọn của trình đơn con đang hiển thị lên và đè lên nhau, chúng ta cần bổ sung thêm một mô tả với thuộc tính visibility cho bộ chọn #menu ul ul vừa được định nghĩa ở trên, khi đó bộ chọn này sẽ như sau:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">&nbsp;styles.css</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><br><span style="color: #0033b3;">#menu</span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">background-color</span>: <span style="color: #0033b3;">#000000</span>;<br>    <span
                                    style="color: #174ad4;">border</span>: <span style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid </span><span style="color: #0033b3;">#CDCDCD</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">float</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">list-style</span>: <span style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">block</span>;<br>    <span style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>: <span style="color: #1750eb;">200</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">padding-left</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">red</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul</span>{<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">absolute</span>;<br>    <span
                                    style="color: #174ad4;">top</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">left</span>: <span
                                    style="color: #1750eb;">15</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">visibility</span>: <span
                                    style="color: #067d17;">hidden</span>;<br>}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;">Cuối cùng, để các trình đơn bị ẩn sẽ hiển thị mỗi khi con trỏ được đưa qua mục chọn của trình đơn cha, chúng ta cần tạo thêm một bộ chọn nữa. Bộ chọn này được áp dụng cho các danh sách con (trình đơn con) mỗi khi mục chọn tương ứng ở trình đơn cha xảy ra sự kiện đưa con trỏ qua:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">body</span>{<br>    <span style="color: #174ad4;">font-family</span>: <span
                                    style="color: #0033b3;">Arial</span>;<br>}<br><br><span style="color: #0033b3;">#menu</span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>:<span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">background-color</span>: <span style="color: #0033b3;">#000000</span>;<br>    <span
                                    style="color: #174ad4;">border</span>: <span style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px solid </span><span style="color: #0033b3;">#CDCDCD</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu ul</span>, <span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">margin</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span
                                    style="color: #0033b3;">#menu li</span>{<br>    <span style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span
                                    style="color: #174ad4;">float</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">list-style</span>: <span style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>:<span
                                    style="color: #1750eb;">0</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>:<span style="color: #1750eb;">100</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">height</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">block</span>;<br>    <span style="color: #174ad4;">text-decoration</span>:<span
                                    style="color: #067d17;">none</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">line-height</span>: <span
                                    style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">black</span>;<br>    <span
                                    style="color: #174ad4;">color</span>: <span
                                    style="color: #067d17;">white</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul li a</span>{<br>    <span
                                    style="color: #174ad4;">width</span>: <span style="color: #1750eb;">200</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">text-align</span>: <span style="color: #067d17;">left</span>;<br>    <span
                                    style="color: #174ad4;">padding-left</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>}<br><br><span style="color: #0033b3;">#menu li a</span>:<span
                                    style="color: #0033b3;">hover</span>{<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #067d17;">red</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul ul</span>{<br>    <span
                                    style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">absolute</span>;<br>    <span
                                    style="color: #174ad4;">top</span>: <span style="color: #1750eb;">30</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">left</span>: <span
                                    style="color: #1750eb;">15</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">visibility</span>: <span
                                    style="color: #067d17;">hidden</span>;<br>}<br><br><span style="color: #0033b3;">#menu ul li</span>:<span
                                    style="color: #0033b3;">hover ul</span>{<br>    <span style="color: #174ad4;">visibility</span>: <span
                                    style="color: #067d17;">visible</span>;<br>}</pre>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                <span style="font-size: 1rem;"></span></p>

                    </div>

                </div>
            </div>
</body>
</html>
