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
                <h4>[Thực hành] Ứng dụng chuyển đổi tiền tệ - Servlet </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo Servlet.</p>

                <h5>Mô tả</h5>
                <p class="p1">• Xây dựng một trang web để chuyển đổi từ USD sang VNĐ với một tỉ giá cho trước. Tạo trang
                    <b>index.jsp</b> chứa một form để nhập tỉ giá và lượng USD muốn chuyển đổi. Tạo Servlet để thực hiện
                    việc
                    tính toán và hiển thị kết quả.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án mới với tên là java-web-currency-converter với các bước đã hướng dẫn ở
                    bài trước.</p>
                <p class="p0">Bước 2: Tạo file index.jsp, sử dụng mã HTML để tạo form chuyển đổi đơn giản như hình.</p>
                <pre><code class="language-html language-css language-java">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;

                    &lt;html&gt;
                    &lt;head&gt;
                     &lt;title&gt;Currency Converter&lt;/title&gt;
                     &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;css/style.css&quot;&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                         &lt;h2&gt;Currency Converter&lt;/h2&gt;
                         &lt;form action=&quot;/convert&quot; method=&quot;post&quot;&gt;
                               &lt;label&gt;Rate: &lt;/label&gt;&lt;br/&gt;
                               &lt;input type=&quot;text&quot; name=&quot;rate&quot; placeholder=&quot;RATE&quot; value=&quot;22000&quot;/&gt;&lt;br/&gt;
                               &lt;label&gt;USD: &lt;/label&gt;&lt;br/&gt;
                               &lt;input type=&quot;text&quot; name=&quot;usd&quot; placeholder=&quot;USD&quot; value=&quot;0&quot;/&gt;&lt;br/&gt;
                               &lt;input type = &quot;submit&quot; id = &quot;submit&quot; value = &quot;Converter&quot;/&gt;
                         &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p0">Bước 3: Chạy thử chương trình</p>
                <p class="p1">- Chạy thử chương trình và đi đến địa chỉ http://localhost:8080 để quan sát kết quả</p>
                <p class="p0">Bước 4: Tạo ConverterServlet để xử lý việc chuyển đổi tiền tệ.</p>
                <pre><code class="language-java">
                    import javax.servlet.*;
                    import javax.servlet.http.*;
                    import javax.servlet.annotation.*;
                    import java.io.IOException;

                    @WebServlet(name = &quot;ConverterServlet&quot;, value = &quot;/convert&quot;)
                    public class ConverterServlet extends HttpServlet {
                         @Override
                         protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                                                throws ServletException, IOException {

                         }

                         @Override
                         protected void doPost(HttpServletRequest request, HttpServletResponse response)
                                                                    throws ServletException, IOException {
                             float rate = Float.parseFloat(request.getParameter(&quot;rate&quot;));
                             float usd = Float.parseFloat(request.getParameter(&quot;usd&quot;));

                             float vnd = rate * usd;

                             PrintWriter writer = response.getWriter();
                             writer.println(&quot;&lt;html&gt;&quot;);
                             writer.println(&quot;&lt;h1&gt;Rate: &quot; + rate + &quot;&lt;/h1&gt;&quot;);
                             writer.println(&quot;&lt;h1&gt;USD: &quot; + usd + &quot;&lt;/h1&gt;&quot;);
                             writer.println(&quot;&lt;h1&gt;VND: &quot; + vnd + &quot;&lt;/h1&gt;&quot;);
                             writer.println(&quot;&lt;/html&gt;&quot;);
                         }
                    }

                </code></pre>

                <p class="p0">- Giải thích mã lệnh trên:</p>
                <p class="p1"> + request.getParameter("rate"): lấy về giá trị của tham số "rate" trong trường input
                    text. Chuyển giá trị này sang số thực và gán vào biển rate.</p>
                <pre><code class="language-java">
                    float rate = Float.parseFloat(request.getParameter("rate"));
                </code></pre>

                <pre><code class=" language-java">
                    float usd = Float.parseFloat(request.getParameter("usd"));
                </code></pre>

                <p class="p0"> Bước 5: Chạy chương trình </p>
                <p class="p1"> - Nhập tỉ giá </p>
                <p class="p1"> - Nhập lượng USD muốn chuyển đổi </p>
                <p class="p1"> - Nhấn nút "Chuyển đổi" rồi quan sát kết quả </p>
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
