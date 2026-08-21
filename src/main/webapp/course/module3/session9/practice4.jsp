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
                <a href="/course/module3/session9/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">9. Tổng quan về java web</a>
                <h4>[Thực hành] Ứng dụng Từ điển đơn giản - Servlet </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo Servlet.</p>

                <h5>Mô tả</h5>
                <p class="p1">• Xây dựng một trang web để tra cứu từ Anh – Việt (với các từ - nghĩa của từ cho sẵn trong
                    một mảng). Tạo trang index.jsp chứa một form tra cứu từ. Nếu tìm thấy từ thì hiển thị nghĩa bằng
                    tiếng việt. Nếu không tìm thấy thì hiển thị thông báo không tìm thấy.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án mới với tên là simple_dictionary với các bước đã hướng dẫn ở bài
                    trước.</p>
                <p class="p0">Bước 2: Tạo file index.jsp, sử dụng mã HTML để tạo form chuyển đổi đơn giản như hình.</p>
                <pre><code class="language-html language-css language-java">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;
                    &lt;head&gt;
                     &lt;title&gt;Simple Dictionary&lt;/title&gt;
                     &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;css/style.css&quot;&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                         &lt;h2&gt;Vietnamese Dictionary&lt;/h2&gt;
                         &lt;form action=&quot;/translate&quot; method=&quot;post&quot;&gt;
                               &lt;input type=&quot;text&quot; name=&quot;txtSearch&quot; placeholder=&quot;Enter your word: &quot;/&gt;
                               &lt;input type = &quot;submit&quot; id = &quot;submit&quot; value = &quot;Search&quot;/&gt;
                          &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 3: Chạy thử chương trình</p>
                <p class="p1">- Chạy thử chương trình và đi đến địa chỉ http://localhost:8080 để quan sát kết quả</p>
                <p class="p0">Bước 4: Tạo TranslationServlet để xử lý việc tra từ.</p>
                <p class="p1">-Lưu ý: urlPatterns của TranslationServlet là "/translate".</p>
                <pre><code class="language-java">
                    @WebServlet(name = &quot;TranslateServlet&quot;, urlPatterns = &quot;/translate&quot;)
                    public class TranslateServlet extends HttpServlet {
                         @Override
                         protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                                                    throws ServletException, IOException {
                         }
                         @Override
                         protected void doPost(HttpServletRequest request, HttpServletResponse response)
                                                                    throws ServletException, IOException {
                                 Map&lt;String, String&gt; dictionary = new HashMap&lt;&gt;();
                                 dictionary.put(&quot;hello&quot;, &quot;Xin ch&agrave;o&quot;);
                                 dictionary.put(&quot;how&quot;, &quot;Th&#x1ebf; n&agrave;o&quot;);
                                 dictionary.put(&quot;book&quot;, &quot;Quy&#x1ec3;n v&#x1edf;&quot;);
                                 dictionary.put(&quot;computer&quot;, &quot;M&aacute;y t&iacute;nh&quot;);
                                 String search = request.getParameter(&quot;txtSearch&quot;);
                                 PrintWriter writer = response.getWriter();
                                 writer.println(&quot;&lt;html&gt;&quot;);
                                 String result = dictionary.get(search);
                                 if(result != null){
                                       writer.println(&quot;Word: &quot; + search);
                                       writer.println(&quot;Result: &quot; + result);
                                  } else {
                                       writer.println(&quot;Not found&quot;);
                                  }
                             writer.println(&quot;&lt;/html&gt;&quot;);
                         }
                    }
                </code></pre>

                <p class="p0"> Bước 5: Chạy chương trình </p>
                <p class="p1"> - Nhập một từ có trong danh sách và quan sát kết quả</p>
                <p class="p1"> - Nhập một từ bất kỳ không có trong danh sách và quan sát kết quả</p>
                <p class="p1"> - Thay POST bằng GET chạy lại chương trình và so sánh kết quả.</p>

                <h5> Tổng kết </h5>
                <p class="p1"> Trong bài tập trên, bạn đã luyện tập: </p>
                <p class="p2"> - Tạo Servlet </p>
                <p class="p2"> - Xử lý form, phương thức POST/GET </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
