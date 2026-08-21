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
                <h4>[Thực hành] Ứng dụng quản lý danh sách khách hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập phát triển phần mềm web backend, sử dụng Spring MVC.</p>

                <h5>Mô tả</h5>
                <p class="p1">- Thực hiện 2 chức năng:</p>
                <p class="p2">1. Hiển thị danh sách khách hàng.</p>
                <p class="p2">2. Hiển thị thông tin chi tiết của một khách hàng</p>
                <p class="p1">Giao diện như hình vẽ</p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p2/img.png"
                     style="width: 40%;">


                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo và hoàn thiện một dự án bằng Java Servlet</p>
                <p class="p1">- Đặt tên dự án là "customer-management".</p>

                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p2/img_1.png"
                     style="width:60%;">
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p2/img_2.png"
                     style="width:60%;">
                <p class="p1">- Cấu trúc thư mục như hình vẽ</p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p2/img_3.png"
                     style="width:30%;">


                <p class="p0">Bước 2: Import thư viện và cấu hình cho dự án </p>
                <p class="p1">- Tại file build.gradle bổ sung thư viện spring-webmvc và jstl:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    dependencies {
                        compileOnly('javax.servlet:javax.servlet-api:4.0.1')

                        // https://mvnrepository.com/artifact/org.springframework/spring-webmvc
                        implementation group: 'org.springframework', name: 'spring-webmvc', version: '5.3.23'

                        // https://mvnrepository.com/artifact/javax.servlet/jstl
                        implementation group: 'javax.servlet', name: 'jstl', version: '1.2'

                    }
                </code></pre>
                <p class="p1">- Sau khi thêm thư viện thì load build Gradle:</p>
                <p class="p1">- Cấu hình khởi tạo môt DispatcherServlet trong file web.xml:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
                    &lt;web-app xmlns=&quot;http://xmlns.jcp.org/xml/ns/javaee&quot;
                             xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
                             xsi:schemaLocation=
                    &quot;http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd&quot;
                             version=&quot;4.0&quot;&gt;
                        &lt;context-param&gt;
                            &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
                            &lt;param-value&gt;/WEB-INF/applicationContext.xml&lt;/param-value&gt;
                        &lt;/context-param&gt;
                        &lt;listener&gt;
                            &lt;listener-class&gt;org.springframework.web.context.ContextLoaderListener&lt;/listener-class&gt;
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

                <p class="p1">- DispatcherServlet cần được cung cấp một cấu hình để có thể khởi động vòng đời của nó.
                    Một cách để có cấu hình này là tạo file cấu hình .xml, chẳng hạn WEB-INF/dispatcher-servlet.xml:</p>


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

                    &lt;!--c&#x1ea5;u h&igrave;nh &#x0111;&#x1ec3; Spring bi&#x1ebf;t qu&eacute;t qua t&#x1ea5;
                    t c&#x1ea3; c&aacute;c package c&#x1ee7;a d&#x1ef1; &aacute;n &#x0111;&#x1ec3; t&#x1ea1;o ra c&aacute;c Bean--&gt;
                    &lt;context:component-scan base-package=&quot;com.example&quot;/&gt;
                    &lt;!--c&#x1ea5;u h&igrave;nh c&oacute; th&#x1ebb; s&#x1eed; d&#x1ee5;ng c&aacute;
                    c Annotation &#x0111;&#x1ec3; &#x0111;&#x1ecb;nh ngh&#x0129;a Bean--&gt;
                    &lt;mvc:annotation-driven/&gt;
                    &lt;!--c&#x1ea5;u h&igrave;nh Bean ViewResolver --&gt;
                    &lt;bean class=&quot;org.springframework.web.servlet.view.InternalResourceViewResolver&quot;&gt;
                        &lt;property name=&quot;prefix&quot; value=&quot;/WEB-INF/views/&quot;/&gt;
                        &lt;property name=&quot;suffix&quot; value=&quot;.jsp&quot;/&gt;
                    &lt;/bean&gt;
                &lt;/beans&gt;

                </code></pre>

                <p class="p1">-ApplicationContext là một Spring container để quản lý các bean và được cấu hình file
                    applicationContext.xml</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
                    &lt;beans xmlns=&quot;http://www.springframework.org/schema/beans&quot;
                           xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
                           xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
                                http://www.springframework.org/schema/beans/spring-beans.xsd&quot;&gt;

                    &lt;/beans&gt;

                </code></pre>

                <p class="p0">Bước 3: Sử dụng Spring MVC controller để xử lý request xem danh sách khách hàng</p>
                <p class="p1">- Tạo một class controller (được ấn định bằng annotation @Controller), bổ sung cho nó một
                    handle method có khả năng thông báo ra tên của view cần dùng.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Controller
                    public class CustomerController {
                        @GetMapping("/customers")
                        public String showList() {
                            return " list";
                        }
                    }
                </code></pre>

                <p class="p1"> - Bật thử app và xác nhận rằng controller đã hoạt động hay chưa bằng cách gửi request tới URL: <a href="#">http://localhost:8080/customers</a></p>
                <p class="p0">Bước 4: Tạo CustomerService và Customer Repository</p>

                <p class="p1">-	Lưu ý: thực hiện DI </p>
                <p class="p2">+ Sử dụng @Repository và @Service để định nghĩa ra các bean để Spring quản lý</p>
                <p class="p2">+ Sử dụng @Autowrite để tiêm 1 đối tượng CustomerRepository vào CustomerService</p>
                <p class="p1">-	Tạo interface IcustomerRepository bên trong có danh sách khách hàng (sử dụng static để giả lập database) và có method</p>
                <p class="p2">+ List< Customer>findAll() </p>
                <p class="p2">+ Customer findById(int id)</p>
                <p class="p1">-	Tạo class CustomerRepository triển khai từ interface ICustomerRepository</p>
                <p class="p1">-	Tương tự tạo ICustomerService và CustomerSerice với các method</p>
                <p class="p2">+ List< Customer>findAll() </p>
                <p class="p2">+ Customer findById(int id)</p>

                <h5>Bước 5: Sử dụng cơ chế DI tiêm customerService vào Customer controller</h5>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Controller
                    public class CustomerController {
                        @Autowired
                        private CustomerService customerService;

                        @GetMapping("/customers")
                        public String showList() {
                            List< Customer> customers = customerService.findAll();
                            return "list ";
                        }
                    }
                </code></pre>

                <p class="p1">- Spring MVC có cơ chế riêng để khai báo model cho template:</p>


                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                        @Controller
                        public class CustomerController {
                            @Autowired
                            private CustomerService customerService;

                            @GetMapping("/customers")
                            public String showList(Model model) {
                                List< Customer> customers = customerService.findAll();
                                model.addAttribute("customers", customers);
                                return "list ";
                            }
                        }
                </code></pre>

                <p class="p1">- Sử dụng JSTL để hiển thị dữ liệu:</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                    &lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot; %&gt;
                    ...
                    &lt;c:forEach var=&quot;c&quot; items=&quot;${customers}&quot;&gt;
                        &lt;tr&gt;
                            &lt;td&gt;
                                &lt;c:out value=&quot;${c.id}&quot;/&gt;
                            &lt;/td&gt;
                            &lt;td&gt;
                                    &lt;a href=&quot;customers/detail?id=${c.id}&quot;&gt;${c.name}&lt;/a&gt;
                            &lt;/td&gt;
                            &lt;td&gt;
                                &lt;c:out value=&quot;${c.email}&quot;/&gt;
                            &lt;/td&gt;
                            &lt;td&gt;
                                &lt;c:out value=&quot;${c.address}&quot;/&gt;
                            &lt;/td&gt;
                        &lt;/tr&gt;
                    &lt;/c:forEach&gt;

                </code></pre>

                <p class="p1">- Đoạn code hoàn thiện sau khi thay thế:</p>


                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                    &lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot; %&gt;
                    &lt;style&gt;
                        table {
                            border: 1px solid #000;
                        }

                        th, td {
                            border: 1px dotted #555;
                        }
                    &lt;/style&gt;
                    &lt;table&gt;
                        &lt;caption&gt;Customers List&lt;/caption&gt;
                        &lt;thead&gt;
                        &lt;tr&gt;
                            &lt;th&gt;Id&lt;/th&gt;
                            &lt;th&gt;Name&lt;/th&gt;
                            &lt;th&gt;Email&lt;/th&gt;
                            &lt;th&gt;Address&lt;/th&gt;
                        &lt;/tr&gt;
                        &lt;/thead&gt;
                        &lt;tbody&gt;
                        &lt;c:forEach var=&quot;c&quot; items=&quot;${customers}&quot;&gt;
                            &lt;tr&gt;
                                &lt;td&gt;
                                    &lt;c:out value=&quot;${c.id}&quot;/&gt;
                                &lt;/td&gt;
                                &lt;td&gt;
                                    &lt;a href=&quot;customers/detail?id=${c.id}&quot;&gt;${c.name}&lt;/a&gt;
                                &lt;/td&gt;
                                &lt;td&gt;
                                    &lt;c:out value=&quot;${c.email}&quot;/&gt;
                                &lt;/td&gt;
                                &lt;td&gt;
                                    &lt;c:out value=&quot;${c.address}&quot;/&gt;
                                &lt;/td&gt;
                            &lt;/tr&gt;
                        &lt;/c:forEach&gt;
                        &lt;/tbody&gt;
                    &lt;/table&gt;
                </code></pre>
               <p>Chạy chương trình và xem kết quả</p>
               <p class="p0">Bước 6-Thực hiện thêm chức năng Xem chi tiết với giao diện như sau </p>
                <img src="${pageContext.request.contextPath}/course/module4/session1/img/p2/img_4.png"
                     style="width:50%;">
            </div>
        </div>
    </div>
</div>
</body>
</html>
