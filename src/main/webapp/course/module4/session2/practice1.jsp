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
                <a href="/course/module4/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2. Spring Controller</a>
                <h4>[Thực hành] Ứng dụng kiểm tra email hợp lệ sử dụng Gradle</h4>

                <h5>Mục tiêu</h5>
                <p class="p1"> - Luyện tập sử dụng Controller trong Spring MVC.</p>

                <h5>Mô tả</h5>

                <p class="p1">- Trong phần này, chúng ta sẽ xây dựng một ứng dụng cho phép kiểm tra tính hợp lệ của một
                    email.</p>
                <p class="p1">- Ứng dụng cho phép người dùng nhập vào một email, nhấn nút kiểm tra và sẽ hiển thị thông
                    báo kết quả.</p>
                <p class="p1">- Một email hợp lệ phải đạt những yêu cầu sau:</p>
                <p class="p2">• Bắt đầu bằng một ký tự</p>
                <p class="p2">• Không chứa các ký tự đặc biệt</p>
                <p class="p2">• Có một ký tự @ ngăn cách tên email và domain</p>
                <p class="p2">• Domain phải hợp lệ</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo project tên spring-email-validation sử dụng Gradle</p>
                <img src="${pageContext.request.contextPath}/course/module4/session2/img/p1/img.png"
                     style="width:60%;">
                <img src="${pageContext.request.contextPath}/course/module4/session2/img/p1/img_1.png"
                     style="width:60%;">

                <p class="p0">Bước 2: Add thêm thư viện spring-webmvc và JSTL vào dự án.</p>
                <p class="p1">-Xem hướng dẫn bài trước</p>

                <p class="p0">Bước 3: Tạo ra các package và file như hình bên dưới.</p>

                <img src="${pageContext.request.contextPath}/course/module4/session2/img/p1/img_2.png"
                     style="width:30%;">

                <p class="p1">- Bổ sung cài đặt các file applicationContext.xml, dispatcher-servlet.xml, web.xml như
                    các bài trước.</p>
                <p class="p1">- Xoá file index.jsp</p>

                <p class="p0">Bước 4: Tạo EmailController trong package controller</p>

                <p class="p1">- EmailController xử lý validate email.</p>
                <p class="p1">- Trước hết chúng ta có Email Regular Expression Pattern như sau:</p>
                <p class="p2">^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$;</p>
                <p class="p1">- Mô tả pattern:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session2/img/p1/img_3.png"
                     style="width:60%;">

                <p class="p1">- Ở đây ta tạo một biến static String EMAIL_REGEX chứa định dạng regular expression của
                    email. Sau đó tạo một phương thức validate để kiểm tra email cần kiểm tra có hợp lệ với EMAIL_REGEX
                    đã định nghĩa hay không.</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.web_coder.spring_email_validation.controller;

                    import org.springframework.stereotype.Controller;
                    import org.springframework.ui.Model;
                    import org.springframework.web.bind.annotation.GetMapping;
                    import org.springframework.web.bind.annotation.PostMapping;
                    import org.springframework.web.bind.annotation.RequestParam;

                    import java.util.regex.Matcher;
                    import java.util.regex.Pattern;

                    @Controller
                    public class EmailController {
                        private static final String EMAIL_REGEX
                                                        = "^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$";
                        private static Pattern pattern = Pattern.compile(EMAIL_REGEX);

                        @GetMapping(value = "")
                        public String home() {
                            return "home";
                        }

                        @PostMapping(value = "/validate")
                        public String user(@RequestParam("email") String email, Model model) {
                            boolean isValid = this.validate(email);
                            if (!isValid) {
                                model.addAttribute("message", "Email is invalid");
                                return "home";
                            }
                            model.addAttribute("email", email);
                            return "success";
                        }

                        private boolean validate(String regex) {
                            Matcher matcher = pattern.matcher(regex);
                            return matcher.matches();
                        }
                    }

                </code></pre>
                <p class="p0">Bước 5: Sửa file index.jsp</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;EmailValidation&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Email Validate&lt;/h1&gt;
                    &lt;h3 style=&quot;color:red&quot;&gt;${message}&lt;/h3&gt;

                    &lt;form action=&quot;validate&quot; method=&quot;post&quot;&gt;
                       &lt;input type=&quot;text&quot; name=&quot;email&quot;&gt;&lt;br&gt;
                       &lt;input type=&quot;submit&quot; value=&quot;Validate&quot;&gt;
                    &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>
                <p class="p0">Bước 6: Sửa file success.jsp</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Success&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h3&gt;Hi ${email}&lt;/h3&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p0">Bước 7 Chạy chương trình và quan sát kết quả với các trường hợp khác nhau:</p>
                <p class="p1">- Nhập email hợp lệ: web_coder@gmail.com</p>
                <p class="p1">- Nhập email không hợp lệ: web_coder@codegym.gmail.com</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
