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
                <a href="/course/module4/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. JQuery và AJAX</a>
                <h4>[Thực hành] Sử dụng jQuery tạo hiệu ứng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập sử dụng các hiệu ứng cơ bản của jQuery.</p>
                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này, chúng ta sẽ luyện tập việc sử dụng các hiệu ứng của jQuery thông qua một
                    số ví dụ.</p>
                <p class="p1">- Các hàm trong jQuery được sử dụng trong bài thực hành là show(), hide() và
                    animate().</p>
                <p class="p2">• show(): hiển thị một thành phần.</p>
                <p class="p2">• hide(): ẩn một thành phần.</p>
                <p class="p2">• animate(): thêm hiệu ứng di chuyển cho một thành phần.</p>

                <h5>Hướng dẫn</h5>
                <p class="p0">1. Thêm thư viện</p>
                <p class="p1">- Để sử dụng được jQuery, chúng ta cần bổ sung thư viện. Cách đơn giản nhất là dùng đường
                    dẫn đến các thư viện tài nguyên online thông qua CDN. tương tự như Bootstrap.</p>
                <p class="p1">- CDN - Content Delivery Network: là mạng phân phối tài nguyên, giúp tăng tốc độ tải cho
                    các ứng dụng tiêu tốn nhiều tài nguyên. CDN được hỗ trợ bởi rất nhiều công ty lớn như GG, Amazon,
                    Microsoft,...</p>
                <p class="p1">- Các bạn cũng có thể download và sử dụng thư viện offline trên dự án của mình.</p>
                <p class="p0">2. Sử dụng hàm show() và hide() để tạo một chương trình đơn giản như sau:</p>
                <p class="p2">• Khi click vào nút Hide thì dòng chữ "If you click on the "Hide" button, I will disapper"
                    sẽ bị ẩn đi.</p>
                <p class="p2">• Ngược lại, khi click vào nút Show, dòng chữ sẽ hiện trở lại.</p>

                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p1/img.png"
                     style="width:30%;">

                <p class="p1">- Mã nguồn tham khảo:</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
&lt;title&gt;Title&lt;/title&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
    &lt;script src=&quot;https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js&quot;&gt;&lt;/script&gt;
    &lt;script&gt;
       $(document).ready(function () {
          $(&quot;#hide&quot;).click(function () {
             $(&quot;p&quot;).hide();
          });
          $(&quot;#show&quot;).click(function () {
             $(&quot;p&quot;).show();
          });
       });
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Th you click on the &quot;Hide&quot; button, I will disappear.&lt;/p&gt;
&lt;button id=&quot;hide&quot;&gt;Hide&lt;/button&gt;
&lt;button id=&quot;show&quot;&gt;Show&lt;/button&gt;
&lt;/body&gt;
&lt;/html&gt;

                </code></pre>

                <p class="p0">3. Sử dụng hàm animate() để tạo hiệu ứng sau:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p1/img.png"
                     style="width:40%;">


                <p>- Khi click vào nút Start Animation, khối hình sẽ di chuyển sang trái 250px và kích thước chữ ở trông
                    khối sẽ lớn hơn với font là 50px.</p>
                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p1/img_2.png"
                     style="width:30%;">


                <p class="p1">- Mã nguồn tham khảo:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;title&gt;Title&lt;/title&gt;
    &lt;script src=&quot;https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js&quot;&gt;&lt;/script&gt;
    &lt;script&gt;
       $(document).ready(function () {
          $(&quot;button&quot;).click(function () {
             var div = $(&quot;div&quot;);
             div.animate({left: '100px'}, &quot;slow&quot;);
             div.animate({fontSize: '50px'}, &quot;slow&quot;);
          });
       });
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;button&gt;Start Animation&lt;/button&gt;
&lt;p&gt;By default, all HTML elements have a static position, and cannot be moved.
                    &lt;br&gt; To manipulate the position, remember to
    first set the CSS position property &lt;br&gt; of the element to relative, fixed, or absolute!&lt;/p&gt;
&lt;div style=&quot;background:#98bf21;height:100px;width:200px;position:absolute;&quot;&gt;HELLO&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
                </code></pre>

            </div>
        </div>
    </div>
</div>
</body>
</html>
