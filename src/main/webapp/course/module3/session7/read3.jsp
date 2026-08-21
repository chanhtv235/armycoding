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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Layout and design responsive web </a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] RWD Media Queries</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Tìm hiểu
                                về&nbsp;<span>Media Queries sử dụng @media để áp dụng một khối thuộc tính css.</span>
                            </p>
                            <h2>Nội dung</h2>
                            <h3>Media Queries hoạt động như thế nào?</h3>
                            <p>Media Queries sử dụng @media để áp dụng một khối thuộc tính css chỉ khi thoả mãn một điều
                                kiện nào đó.</p>
                            <p>Ví dụ:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50306/mod_page/content/4/Screen%20Shot%202017-04-28%20at%207.44.16%20PM.png"
                                     width="536" height="160"></p>
                            <p>Trong ví dụ trên, thuộc tính background-color chỉ được áp dụng cho thẻ body trong trường
                                hợp độ rộng của màn hình nhỏ hơn 500px.</p>
                            <p>Xem ví dụ ở đây (hãy thu nhỏ trình duyệt để xem hiệu ứng):<a
                                    href="http://demo.codegym.vn/web/15/mediaqueries/color.html" target="_blank">&nbsp;http://demo.codegym.vn/web/15/mediaqueries/color.html</a>
                            </p>
                            <h3>Thêm các breakpoint</h3>
                            <p>Breakpoint là các điểm mà chúng ta sử dụng để kích hoạt việc thay đổi bố cục của trang
                                web. Chẳng hạn, ở ví dụ trước thì breakpoint của chúng ta là 500px của độ rộng.</p>
                            <p>Trong ví dụ sau đây, chúng ta sẽ sử dụng một breakpoint là 768px (độ rộng phổ biến của
                                một tablet). Nếu độ rộng của trình duyệt nhỏ hơn hoặc bằng 768px thì tất cả các cột đều
                                chiếm độ rộng 100% (có nghĩa là mỗi block sẽ chiếm một dòng).</p>
                            <pre><code css="" class="hljs css"><span><span
                                    class="hljs-comment">/* For desktop: */</span></span><br><span><span
                                    class="hljs-selector-class">.col-1</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">8.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-2</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">16.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-3</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">25%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-4</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">33.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-5</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">41.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-6</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">50%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-7</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">58.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-8</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">66.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-9</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">75%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-10</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">83.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-11</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">91.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-12</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span></span><span>}</span><br><br><span><span
                                    class="hljs-keyword">@media</span> <span
                                    class="hljs-keyword">only</span> screen <span class="hljs-keyword">and</span> (<span
                                    class="hljs-attribute">max-width:</span> <span class="hljs-number">768px</span>)&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp;&nbsp;<span><span
                                    class="hljs-comment">/* For mobile phones: */</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-attr">[class*=<span class="hljs-string">"col-"</span>]</span>&nbsp;<span><span>{</span></span><span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;</span><span><span>}</span></span><br></span><span>}</span></code></pre>
                            <p><span>Xem ví dụ tại đây (thay đổi độ rộng của trình duyệt để thấy hiệu ứng):&nbsp;<a
                                    href="http://demo.codegym.vn/web/15/mediaqueries/responsive.html" target="_blank">http://demo.codegym.vn/web/15/mediaqueries/responsive.html</a></span>
                            </p>
                            <p></p>
                            <h3>Nên ưu tiên thiết kế cho thiết bị di động trước tiên (Mobile First)</h3>
                            <p>Mobile First là cách thiết kế mà ở đó chúng ta ưu tiên cho các thiết bị di động trước,
                                sau đó mới thêm mã CSS để trang web hiển thị tốt trên các thiết bị to hơn. Điều này sẽ
                                giúp cho việc hiển thị các trang web ở trên các thiết bị di động được nhanh hơn. Tại
                                sao?</p>
                            <p>Để làm được điều này, chúng ta thay đổi một chút trật tự của các khối CSS. Trong đó, đáng
                                chú ý là thay vì sử dụng điều kiện max-width thì chúng ta sử dụng min-width.</p>
                            <pre><code css="" class="hljs css"><span><span
                                    class="hljs-comment">/* For mobile phones: */</span></span><br><span><span
                                    class="hljs-selector-attr">[class*=<span class="hljs-string">"col-"</span>]</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-keyword">@media</span> <span
                                    class="hljs-keyword">only</span> screen <span class="hljs-keyword">and</span> (<span
                                    class="hljs-attribute">min-width:</span> <span class="hljs-number">768px</span>)&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp;&nbsp;<span><span
                                    class="hljs-comment">/* For desktop: */</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-1</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">8.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-2</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">16.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-3</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">25%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-4</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">33.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-5</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">41.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-6</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">50%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-7</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">58.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-8</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">66.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-9</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">75%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-10</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">83.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-11</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">91.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-12</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span></span><span><span>}</span></span><br></span><span>}</span></code></pre>
                            <h3><span>Thêm một breakpoint khác</span></h3>
                            <p><span>Chúng ta có thể thêm nhiều breakpoint để đáp ứng được nhiều loại kích thước của cửa sổ trình duyệt khác nhau. Chẳng hạn, trong ví dụ trên, chúng ta đã thiết kế cho 2 trường hợp là máy tính cá nhân và máy tính bảng.</span>
                            </p>
                            <p>Trong ví dụ dưới đây, chúng ta sẽ thêm một trường hợp nữa cho điện thoại (thường là có
                                kích thước nhỏ hơn 600px).</p>
                            <pre><code css="" class="hljs css"><span><span
                                    class="hljs-comment">/* For mobile phones: */</span></span><br><span><span
                                    class="hljs-selector-attr">[class*=<span class="hljs-string">"col-"</span>]</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-keyword">@media</span> <span
                                    class="hljs-keyword">only</span> screen <span class="hljs-keyword">and</span> (<span
                                    class="hljs-attribute">min-width:</span> <span class="hljs-number">600px</span>)&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp;&nbsp;<span><span
                                    class="hljs-comment">/* For tablets: */</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-1</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">8.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-2</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">16.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-3</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">25%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-4</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">33.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-5</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">41.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-6</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">50%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-7</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">58.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-8</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">66.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-9</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">75%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-10</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">83.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-11</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">91.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-m-12</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span></span><span><span>}</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-keyword">@media</span> <span
                                    class="hljs-keyword">only</span> screen <span class="hljs-keyword">and</span> (<span
                                    class="hljs-attribute">min-width:</span> <span class="hljs-number">768px</span>)&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp;&nbsp;<span><span
                                    class="hljs-comment">/* For desktop: */</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-1</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">8.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-2</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">16.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-3</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">25%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-4</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">33.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-5</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">41.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-6</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">50%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-7</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">58.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-8</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">66.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-9</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">75%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-10</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">83.33%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-11</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">91.66%</span><span>;</span></span></span><span><span>}</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-class">.col-12</span>&nbsp;<span><span>{</span></span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span></span><span><span>}</span></span><br></span><span>}</span></code></pre>
                            <p>Xem ví dụ ở đây (thay đổi kích thước trình duyệt để quan sát hiệu ứng): <a
                                    href="http://demo.codegym.vn/web/15/mediaqueries/responsive-3-breakpoints.html"
                                    target="_blank">http://demo.codegym.vn/web/15/mediaqueries/responsive-3-breakpoints.html</a>
                            </p>
                            <h3><span>Thích ứng với chiều xoay của màn hình</span></h3>
                            <p><span>Media Queries cũng có thể được sử dụng để giúp trang web hiển thị tốt với các chiều xoay khác nhau (ngang và dọc).</span>
                            </p>
                            <p><span>Ví dụ:</span></p>
                            <pre><code css="" class="hljs css"><span><span><span
                                    class="hljs-keyword">@media</span> <span
                                    class="hljs-keyword">only</span> screen <span class="hljs-keyword">and</span> (<span
                                    class="hljs-attribute">orientation:</span> landscape)&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-selector-tag">body</span>&nbsp;<span><span>{</span></span><span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">background-color</span><span><span>:</span>&nbsp;lightblue<span>;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;</span><span><span>}</span></span><br></span><span>}</span>&nbsp;</span></code></pre>
                            <p>Xem ví dụ ở đây (có thể mở ví dụ này trên điện thoại hoặc máy tính bảng và xoay thiết bị
                                để xem hiệu ứng):&nbsp;<a
                                        href="http://demo.codegym.vn/web/15/mediaqueries/orientation.html"
                                        target="_blank">http://demo.codegym.vn/web/15/mediaqueries/orientation.html</a>
                            </p>
                            <p></p>
                            <p></p>
                            <p></p></div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 10:12 AM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
