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
                <a href="/course/module3/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. JSTL</a>
                <h4>[Thực hành] Ứng dụng Từ điển đơn giản - JSP </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Luyện tập tạo JSP</p>

                <h5>Mô tả</h5>
                <p class="p1">-• Xây dựng một trang web để tra cứu từ Anh – Việt (với các từ - nghĩa của từ cho sẵn
                    trong một mảng). Tạo trang index.jsp chứa một form tra cứu từ. Nếu tìm thấy từ thì hiển thị nghĩa
                    bằng tiếng việt. Nếu không tìm thấy thì hiển thị thông báo không tìm thấy.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án mới với tên là simple-dictionary-jsp với các bước đã hướng dẫn ở bài trước.</p>

                <p class="p0">Bước 2: Tạo file index.jsp, sử dụng mã HTML để tạo form tra cứu từ Anh – Việt như hình.</p>
                <pre><code class="language-html language-css language-java">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;
                    &lt;head&gt;
                          &lt;title&gt;Simple Dictionary&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                          &lt;h2&gt;Vietnamese Dictionary&lt;/h2&gt;
                          &lt;form action=&quot;dictionary.jsp&quot; method=&quot;post&quot;&gt;
                               &lt;input type=&quot;text&quot; name=&quot;search&quot; placeholder=&quot;Enter your word: &quot;/&gt;
                               &lt;input type = &quot;submit&quot; id = &quot;submit&quot; value = &quot;Search&quot;/&gt;
                          &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p0">Bước 3: Chạy thử chương trình</p>
                <p class="p1">- Chạy thử chương trình và đi đến địa chỉ http://localhost:8080 để quan sát kết quả</p>

                <p class="p0">Bước 4: Tạo file dictionary.jsp để xử lý việc tra từ.</p>
                <pre><code class="language-html">
                    &lt;%@ page import=&quot;java.util.HashMap&quot; %&gt;
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                         &lt;title&gt;Simple Dictionary&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                         &lt;%!
                              Map&lt;String, String&gt; dic = new HashMap&lt;&gt;();
                         %&gt;

                         &lt;%
                             dic.put(&quot;hello&quot;, &quot;Xin ch&agrave;o&quot;);
                             dic.put(&quot;how&quot;, &quot;Th&#x1ebf; n&agrave;o&quot;);
                             dic.put(&quot;book&quot;, &quot;Quy&#x1ec3;n v&#x1edf;&quot;);
                             dic.put(&quot;computer&quot;, &quot;M&aacute;y t&iacute;nh&quot;);
                             String search = request.getParameter(&quot;search&quot;);
                             String result = dic.get(search);
                             if (result != null) {
                                    out.println(&quot;Word: &quot; + search);
                                    out.println(&quot;Result: &quot; + result);
                             } else {
                                    out.println(&quot;Not found&quot;);
                             }
                         %&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>
                <p class="p0"> Bước 5: Chạy chương trình </p>
                <p class="p1"> - Nhập một từ có trong danh sách và quan sát kết quả</p>
                <p class="p1"> - Nhập một từ bất kỳ không có trong danh sách và quan sát kết quả </p>
                <p class="p1"> - Thay POST bằng GET chạy lại chương trình và so sánh kết quả.</p>

                <h5> Tổng kết </h5>
                <p class="p1"> Trong bài tập trên, bạn đã luyện tập: </p>
                <p class="p2"> - Tạo file JSP </p>
                <p class="p2"> - Xử lý form, phương thức POST/GET </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
