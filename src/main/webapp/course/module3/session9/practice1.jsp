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
                <h4>[Thực hành] Tạo trang web hiển thị thời gian hệ thống </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Tạo được ứng dụng Web Java đơn giản đầu tiên..</p>

                <h5>Mô tả</h5>
                <p class="p1">• Ứng dụng của chúng ta chỉ có một trang với một chức năng đơn giản đó là hiển thị thời
                    gian hiện tại của máy chủ.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0"> Bước 1: Tạo dự án mới. </p>
                <p class="p1"> - Lựa chọn File -> New Project -> Jakarta EE. Chọn tiếp như sau:</p>
                <p class="p2"> • Đặt tên ứng dụng là: server-time </p>
                <p class="p2"> • Template: Web Application </p>
                <p class="p2"> • Language: Java </p>
                <p class="p2"> • Build system: Gradle </p>

                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_0.png"
                     style="width:55%;">

                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_1.png"
                     style="width:55%;">
                <p class="p0">Bước 2: Thêm cấu hình Tomcat vào dự án:</p>

                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_2.png"
                     style="width:55%;">
                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_3.png"
                     style="width:55%;">
                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_4.png"
                     style="width:55%;">
                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_5.png"
                     style="width:55%;">
                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_6.png"
                     style="width:55%;">
                <p class="p0">Bước 3: Tạo ra Servlet hiển thị thời gian hiện tại.</p>
                <p class="p1">• Nếu bước 2 đã thành công thì có nghĩa là ứng dụng của chúng ta đang hoạt động tốt, bây
                    giờ hãy hiển thị thời gian của máy chủ bằng cách tạo ra 1 class mới như sau.</p>


                <pre><code class="language-sql">
                    import javax.servlet.*;
                    import javax.servlet.http.*;
                    import javax.servlet.annotation.*;
                    import java.io.IOException;
                    import java.io.PrintWriter;
                    import java.util.Date;

                    @WebServlet(name = "ServerTimeServlet", urlPatterns = "/index")
                    public class ServerTimeServlet extends HttpServlet {
                         @Override
                         protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                                PrintWriter writer = response.getWriter();
                                writer.println("");
                                Date today = new Date();
                                writer.println("<h1>" + today + "</h1>");
                                writer.println("");
                        }
                    }
                </code></pre>

                <p class="p2"> • Name class: ServerTimeServlet </p>
                <p class="p2"> • Class kế thừa: HttpServlet </p>
                <p class="p2"> • Bên trên class có: @WebServlet(name = "ServerTimeServlet", urlPatterns = "/index"):
                    dùng để đánh dấu class này là 1 servlet. </p>
                <p class="p2"> • Ta ghi đè phương thức: doGet </p>
                <p class="p0"> Bước 4: Chạy chương trình và truy cập đường dẫn: http://localhost:8080/index trên trình
                    duyệt để quan sát kết quả. </p>
                <img src="${pageContext.request.contextPath}/course/module3/session9/img/p1/img_7.png"
                     style="width:55%;">

            </div>
        </div>
    </div>
</div>
</body>
</html>
