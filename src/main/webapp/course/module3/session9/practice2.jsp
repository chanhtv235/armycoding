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
                <h4>[Thực hành] Tạo trang web để đăng nhập và hiển thị lời chào </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">•Luyện tập sử dụng form, phương thức POST/GET.</p>

                <h5>Mô tả</h5>
                <p class="p1">•• Xây dựng một trang web với chức năng đăng nhập và hiển thị lời chào. Tạo trang
                    <b>index.jsp</b> hiển thị một form đăng nhập. Tên đăng nhập và mật khẩu được cố định sẵn là
                    <b>admin</b> và <b>admin</b>.
                    Khi nhập đúng tên và mật khẩu thì hiển thị lời chào <b>Welcome admin to website</b>. Nếu nhập không
                    đúng
                    thì hiển thị thông báo <b>Login Error</b></p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án mới bằng Gradle có tên là simple_login với Servlet cài sẵn </p>

                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p2/img_0.png"
                     style="width:55%;">


                <p class="p0">Bước 2: Viết mã HTML trong file index.jsp để tạo form đăng nhập</p>

                <pre><code class="language-html language-css">
                    &lt;%@ page contentType=&quot;text/html; charset=UTF-8&quot; pageEncoding=&quot;UTF-8&quot; %&gt;
                    &lt;!DOCTYPE HTML&gt;
                    &lt;html&gt;
                    &lt;style type=&quot;text/css&quot;&gt;
                         .login {
                               height:180px; width:230px;
                               margin:0;
                               padding:10px;
                               border:1px #CCC solid;
                         }
                         .login input {
                                padding:5px; margin:5px
                         }
                    &lt;/style&gt;
                    &lt;body&gt;
                         &lt;form action=&quot;/login&quot; method=&quot;post&quot;&gt;
                              &lt;div class=&quot;login&quot;&gt;
                                   &lt;h2&gt;Login&lt;/h2&gt;
                                   &lt;input type=&quot;text&quot; name=&quot;username&quot; size=&quot;30&quot; placeholder=&quot;username&quot; /&gt;
                                   &lt;input type=&quot;password&quot; name=&quot;password&quot; size=&quot;30&quot; placeholder=&quot;password&quot; /&gt;
                                   &lt;input type=&quot;submit&quot; value=&quot;Sign in&quot;/&gt;
                              &lt;/div&gt;
                         &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>
                <p class="p1">Chương trình sẽ như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p2/img_1.png"
                     style="width:55%;">
                <p class="p0">Bước 3:Tạo servlet LoginServlet để xử lý đăng nhập.</p>
                <pre><code class="language-java">
                    import javax.servlet.ServletException;
                    import javax.servlet.annotation.WebServlet;
                    import javax.servlet.http.HttpServlet;
                    import javax.servlet.http.HttpServletRequest;
                    import javax.servlet.http.HttpServletResponse;
                    import java.io.IOException;
                    import java.io.PrintWriter;

                    @WebServlet(name = &quot;LoginServlet&quot;, value = &quot;/login&quot;)
                    public class LoginServlet extends HttpServlet {
                               @Override
                               protected void doPost(HttpServletRequest request, HttpServletResponse response)
                                                                        throws ServletException, IOException {
                                String username = request.getParameter(&quot;username&quot;);
                                String password = request.getParameter(&quot;password&quot;);

                                PrintWriter writer = response.getWriter();
                                writer.println(&quot;&lt;html&gt;&quot;);
                                if (&quot;admin&quot;.equals(username) &amp;&amp; &quot;admin&quot;.equals(password)) {
                                      writer.println(&quot;&lt;h1&gt;Welcome &quot; + username + &quot; to website&lt;/h1&gt;&quot;);
                               } else {
                                      writer.println(&quot;&lt;h1&gt;Login Error&lt;/h1&gt;&quot;);
                               }
                                writer.println(&quot;&lt;/html&gt;&quot;);
                         }
                    }
                </code></pre>

                <p class="p1"> - Trong đoạn mã trên phương thức request.getParameter() được sử dụng để lấy tham số được
                    đẩy lên từ form. </p>
                <p class="p0"> Bước 4: Chạy chương trình </p>
                <p class="p1"> - Đăng nhập với username và password là admin/admin và quan sát kết quả. </p>
                <p class="p1"> - Đăng nhập với username và password bất kỳ và quan sát kết quả. </p>
                <p class="p1"> - Thay POST bằng GET chạy lại chương trình và so sánh kết quả. </p>
                <p class="p1"> Lưu ý: Nếu quan sát trên url, sẽ có sự khác nhau: </p>
                <p class="p2"> • Url với POST: http://localhost:8080/login </p>
                <p class="p2"> • Url với GET: http://localhost:8080/login?username=admin&password=admin </p>
                <p class="p1"> - Vậy khi phương thức HTTP GET được sử dụng với form, các tham số sẽ được hiển thị trên
                    URL khi form được truyền đi. </p>
                <p class="p1"> - Tương tự với phương thức HTTP POST, tuy nhiên với GET thì giá trị của các tham số sẽ
                    được hiển thị trên url truyền đi, còn POST thì không. </p>
                
                <h5> Tổng kết </h5>
                <p class="p1"> - Qua bài tập trên bạn đã luyện tập: </p>
                <p class="p2"> • Xử lý với form </p>
                <p class="p2"> • Quan sát hoạt động của phương thức POST và GET </p>

            </div>
        </div>
    </div>
</div>
</body>
</html>
