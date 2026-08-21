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
                <a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=detail" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Git và html</a>

                <h4>[Thực hành] Sử dụng thẻ HTML cơ bản</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập các thẻ cơ bản &lt;h1&gt;, &lt;p&gt;, &lt;a&gt;, &lt;img&gt;</p>
                <p>Tạo trang web hiển thị nội dung như sau. Dữ liệu trên trang được định dạng ứng với các thẻ. </p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p1.png" style="width: 60%;">
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p1.png" style="width: 60%;">
                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập thao tác quan trọng khi làm việc với GitHub đó là tạo một dự án
                    mới.</p>
                <h5>Hướng dẫn</h5>

                Bước 1: Tạo cấu trúc tài liệu HTML
                <pre><code class="language-javascript language-markup">
                    &lt;!DOCTYPE html&gt;
                    &lt;html&gt;
                        &lt;head&gt;
                            &lt;meta charset=&quot;utf-8&quot;&gt;
                            &lt;title&gt;HTML links&lt;/title&gt;
                        &lt;/head&gt;
                        &lt;body&gt;
                        &lt;/body&gt;
                    &lt;/html&gt;
                    </code></pre>

                <p>Bước 2: Đưa từng nội dung vào giữa cặp thẻ &lt;body&gt;&lt;/body&gt;
                    &lt;h1&gt;HTML: HyperText Markup Language&lt;/h1&gt;</p>
                <p></p> Bước 3: Đưa tiếp nội dung vào

                <pre><code class="language-javascript language-markup">
                &lt;p&gt;Tim Berners-Lee invented the first browser at CERN, to enable researchers to share their
                    research with eachother.&lt;/p&gt;
                </code></pre>
                <p>Bước 4: Chèn ảnh tạo liên kết</p>
                <pre><code class="language-javascript language-markup">
                &lt;a target=&quot;_blank&quot; href=&quot;http://home.web.cern.ch/topics/birth-web&quot;&gt;Read more about the history of HTML
                    &lt;p&gt;
                        &lt;img src=&quot;https://www.kasandbox.org/programming-images/misc/tim-berners-lee-webpage.png&quot;
                        width=&quot;300&quot;&gt;&lt;br/&gt;
                        Image courtesy CERN
                    &lt;/p&gt;
                &lt;/a&gt;
                </code></pre>
                <p>Bước 5: Chạy chương trình. Xem kết quả hiển thị.</p>
                <p>Tổng kết</p>
                <p>Vậy trong bài thực hành này chúng ta đã luyện tập với các thẻ cơ bản HTML như &lt;a&gt;, &lt;p&gt;, &lt;h1&gt;,
                    &lt;img&gt;</p>

            </div>

        </div>
    </div>
</div>
</div>


</body>
</html>
