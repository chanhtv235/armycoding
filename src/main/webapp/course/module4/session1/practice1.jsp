<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<style>
    pre {
        background-color: #f1f1f1;
    !important; /* Màu nền của đoạn code */
        padding: 0;
    !important; /* Loại bỏ khoảng cách giữa nội dung và đường viền */
    }

    code {
        display: block;
    !important; /* Hiển thị như một khối */
        margin: 0;
    !important; /* Loại bỏ khoảng cách giữa đoạn code và các phần tử khác */
        padding: 10px;
    !important; /* Khoảng cách giữa nội dung và đường viền */
    }
</style>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module4/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">1. Tổng quan Spring MVC</a>
                <h4>[Thực hành] Tạo ứng dụng Spring Greeting </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo và triển khai ứng dụng Spring MVC.</p>

                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này, chúng ta sẽ tạo một ứng dụng Spring MVC cơ bản.</p>
                <p class="p1">- Hướng dẫn được chia thành 2 phần:</p>
                <p class="p2">1. Tạo ứng dụng với một trang hiển thị lời chào.</p>
                <p class="p2">2. Tạo ứng dụng với một trang hiển thị lời chào kèm theo tên được truyền vào.</p>
                <h5>Hướng dẫn</h5>

                <p class="p0">Phần 1: Tạo ứng dụng Spring MVC cơ bản</p>
                <p class="p0">Bước 1: Tạo dự án Spring MVC</p>
                <p class="p1">- Đặt tên dự án là "spring-greeting".</p>
                <p class="p1">- Công nghệ sử dụng:</p>
                <p class="p2"> - Tomcat 9</p>
                <p class="p2"> - Java 8 (hoặc 11)</p>
                <p class="p2"> - Version web: Java EE 8</p>
                <p class="p2"> - IDE: IntelliJ Ultimate</p>

                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_0.png"
                     style="width:60%;">

                <p class="p1">- Lưu ý phần version của JavaEE.</p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_1.png"
                     style="width:60%;">

                <p class="p1">- Bổ sung thư viện spring-webmvc bằng cách tìm kiếm trên trang Maven Repository.</p>
                <p class="p1">- Lưu ý: sử dụng thư viện Gradle và phiên bản 5.3.23 để đảm bảo tính ổn định và đồng
                    nhất.</p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_2.png"
                     style="width:60%;">

                <p class="p1">- Sau khi thêm thư viện thì load build Gradle:</p>

                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_3.png"
                     style="width:60%;">
                <p class="p1">- Trong thư mục WEB-INF ở webapp tạo các file .xml như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_4.png"
                     style="width:70%;">

                <p class="p1">- Cấu trúc thư mục dự án:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_5.png"
                     style="width:30%;">
                <p class="p1"> - Với Spring, bạn có thể sử dụng XML để cấu hình ứng dụng. Trong ứng dụng đơn giản, chúng
                    ta thường cấu hình ứng dụng với 3 file: </p>
                <p class="p2"> •<b> web.xml:</b> cấu hình ứng dụng web của java. Trong đó có chỉ ra file cấu hình Spring
                    MVC là dispatcher-servlet.xml. </p>
                <p class="p2"> •<b> dispatcher-servlet.xml:</b> cấu hình dành riêng cho ứng dụng Spring MVC. </p>
                <p class="p2"> •<b> applicationContext.xml:</b> định nghĩa các bean được chia sẻ giữa các servlet. </p>

                <p class="p0">Bước 2: Cấu hình dispatcher-servlet.xml</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
                    &lt;beans xmlns=&quot;http://www.springframework.org/schema/beans&quot;
                           xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
                           xmlns:context=&quot;http://www.springframework.org/schema/context&quot;
                           xmlns:mvc=&quot;http://www.springframework.org/schema/mvc&quot;
                           xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
                            http://www.springframework.org/schema/beans/spring-beans.xsd
                            http://www.springframework.org/schema/context
                            http://www.springframework.org/schema/context/spring-context.xsd
                            http://www.springframework.org/schema/mvc
                            http://www.springframework.org/schema/mvc/spring-mvc.xsd&quot;&gt;

                        &lt;context:component-scan base-package=&quot;com.codegym.springgreeting&quot;/&gt;

                        &lt;mvc:annotation-driven/&gt;

                        &lt;bean class=&quot;org.springframework.web.servlet.view.InternalResourceViewResolver&quot;&gt;
                            &lt;property name=&quot;prefix&quot; value=&quot;/WEB-INF/views/&quot;/&gt;
                            &lt;property name=&quot;suffix&quot; value=&quot;.jsp&quot;/&gt;
                        &lt;/bean&gt;
                    &lt;/beans&gt;
                </code></pre>
                <p class="p1">- Tập tin cấu hình này chứa đúng một thẻ
                    < bean> . Thẻ này chứa các thuộc tính khai báo các namespace để sử dụng cho các thẻ ở phần cấu hình.
                    Thông thường,
                    chúng ta dùng tới đâu thì khai báo tới đó. Tuy nhiên, chúng ta có thể khai báo tất cả những gì cần
                    thiết để
                    chuẩn bị cho các khả năng có thể sử dụng cho ứng dụng sau này.
                </p>
                <p class="p1">- Chúng ta hãy chú ý đến thẻ
                    < bean> có khai báo class ="org.springframework.web.servlet.view.InternalResourceViewResolver". Sau
                    khi một action
                    trong controller hoàn thành nhiệm vụ, thì nó phải chỉ ra view nào cần được sử dụng để hiển thị giao
                    diện kết quả
                    cho người dùng. Chỉ có tên view được chỉ định trong action, còn vị trí đặt view, hoặc phần mở rộng
                    của view thì
                    giao lại cho ViewResolver giải quyết.
                </p>
                <p class="p1">- Thẻ < context:component-scan
                    base-package="com.codegym.springgreeting"> sẽ giúp cho ứng dụng tham chiếu package tương ứng để kiểm
                    soát các bean.</p>

                <p class="p0"> Bước 3: Cấu hình applicationContext.xml</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
                    &lt;beans xmlns=&quot;http://www.springframework.org/schema/beans&quot;
                           xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
                           xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
                                http://www.springframework.org/schema/beans/spring-beans.xsd&quot;&gt;
                    &lt;/beans&gt;
                </code></pre>

                <p class="p0"> Bước 4: Cấu hình web.xml</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
                    &lt;web-app xmlns=&quot;http://xmlns.jcp.org/xml/ns/javaee&quot;
                         xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
                         xsi:schemaLocation=
                    &quot;http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd&quot;
                         version=&quot;3.1&quot;&gt;
                        &lt;context-param&gt;
                            &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
                            &lt;param-value&gt;/WEB-INF/applicationContext.xml&lt;/param-value&gt;
                        &lt;/context-param&gt;
                        &lt;listener&gt;
                            &lt;listener-class&gt;
                                    org.springframework.web.context.ContextLoaderListener
                            &lt;/listener-class&gt;
                        &lt;/listener&gt;
                        &lt;servlet&gt;
                            &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
                            &lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
                            &lt;load-on-startup&gt;1&lt;/load-on-startup&gt;
                        &lt;/servlet&gt;
                        &lt;servlet-mapping&gt;
                            &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
                            &lt;url-pattern&gt;/&lt;/url-pattern&gt;
                        &lt;/servlet-mapping&gt;
                    &lt;/web-app&gt;
                </code></pre>

                <p class="p1">- File web.xml được sử dụng để cấu hình nhiều công việc khác nhau cho ứng dụng web nói
                    chung. Trong phần này, chúng ta chỉ khai thác các khai báo liên quan đến ứng dụng Spring MVC.</p>
                <p class="p1">- Trong khai báo này thì org.springframework.web.servlet.DispatcherServlet để sử dụng để
                    tiếp nhận tất cả các yêu cầu có địa chỉ url được khai báo trong cặp thẻ
                    < url-pattern>.
                </p>
                <p class="p1">- DispatcherServlet sẽ phân giải để chuyển đến các action phù hợp với các yêu cầu dựa vào
                    định dạng url. </p>
                <p class="p1">- Trong file cấu hình này, chúng ta cũng sử dụng tên dispatcher để đặt tên cho
                    servlet. </p>
                <h5>Bước 5: Tạo Controller</h5>
                <p class="p1">- Tạo thư mục src/com.codegym.springgreeting và lớp GreetingController với nội dung như
                    sau:</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.codegym.springgreeting;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.web.bind.annotation.GetMapping;
                    @Controller
                    public class GreetingController {
                        @GetMapping("/greeting")
                        public String greeting() {
                            return "index";
                        }
                    }
                </code></pre>
                <p class="p1">- Trong đó:</p>
                <p class="p2">•	@Controller: là annotation để đánh dấu lớp GreetingController là một controller (đối tượng sẽ xử lý các request)</p>
                <p class="p2">•	@GetMapping: là annotation để đánh dấu phương thức greeting() là một phương thức dùng để xử lý request khi có một request GET được gửi đến đường dẫn "/greeting".</p>
                <p class="p0">Bước 6: Tạo thư mục views bên trong thư mục WEB-INF</p>
                <p class="p1">- Thư mục views là nơi chứa các file .jsp, là các file giao diện của ứng dụng. Tạo file File index.jsp với nội dung như sau:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                      &lt;title&gt;Greeting&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Hello Spring MVC&lt;/h1&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_6.png"
                     style="width:50%;">

                <h5>Phần 2: Nhận tham số từ url</h5>
                <p class="p0">Bước 1: Cập nhật class GreetingController</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.codegym.springgreeting;

                    import org.springframework.stereotype.Controller;
                    import org.springframework.ui.Model;
                    import org.springframework.web.bind.annotation.GetMapping;
                    import org.springframework.web.bind.annotation.RequestParam;

                    @Controller
                    public class GreetingController {
                        @GetMapping("/greeting")
                        public String greeting(@RequestParam String name, Model model) {
                            model.addAttribute("name", name);
                            return "index";
                        }
                    }
                </code></pre>

                <p class="p1">- Trong đó: </p>
                <p class="p2">•	@RequestParam: là annotation để đánh dấu rằng name là tham số được truyền vào</p>
                <p class="p2">•	model: là đối tượng để truyền dữ liệu từ controller sang view</p>
                <p class="p2">•	model.addAttribute(): là phương thức để truyền một dữ liệu từ controller sang view</p>
                <p class="p0">Bước 2: Cập nhật file index.jsp</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                      &lt;title&gt;Greeting&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Hello: ${name}&lt;/h1&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p2">•	${name}: là biểu thức để in giá trị của biến name</p>
                <p class="p0">Bước 3: Chạy lại server Tomcat</p>
                <p class="p0">Bước 4: Truy cập đường dẫn http://localhost:8080/greeting?name=John</p>
                <p class="p1">- Kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p1/img_7.png"
                     style="width:50%;">
            </div>
        </div>
    </div>
</div>
</body>
</html>
