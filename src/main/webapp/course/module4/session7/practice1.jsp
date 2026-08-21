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
                <a href="/course/module4/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Validation</a>
                <h4>[Thực hành] Validating Form Input  </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập validate các trường dữ liệu trong form.</p>
                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này chúng ta sẽ phát triển chức năng cho phép validate thông tin người dung.</p>
                <p class="p1">- Chức năng này cho phép nhập vào thông tin người dùng và hiển thị các thông báo tương ứng với giá trị của các trường dữ liệu.</p>
                <p class="p1">- Yêu cầu đối với dữ liệu người dùng gồm có:</p>
                <p class="p2">•	Tên bắt buộc nhập, có độ dài tối thiểu 2 ký tự, tối đa 30 ký tự.</p>
                <p class="p2">•	Tuổi bắt buộc nhập, có giá trị nhỏ nhất là 18.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án Spring MVC và đặt tên là validate-infor-user</p>
                <p class="p1">-Chọn thư viện như trên hình bên dưới</p>
                <p class="p1">-Phần này chúng ta không sử dụng phần kết nối database</p>
                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p1/img.png"
                     style="width:60%;">
                <p class="p1">-Cấu trúc dự án như bên dưới</p>
                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p1/img_1.png"
                     style="width:30%;">
                <p class="p0">Bước 2: Tạo class User</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.validateinforuser.model;

                    import jakarta.validation.constraints.Min;
                    import jakarta.validation.constraints.NotEmpty;
                    import jakarta.validation.constraints.Size;

                    public class User {
                        @NotEmpty
                        @Size(min = 2, max = 30)
                        private String name;

                        @Min(18)
                        private int age;

                        public User() {
                        }

                        public User(String name, int age) {
                            this.name = name;
                            this.age = age;
                        }

                        public String getName() {
                            return name;
                        }

                        public void setName(String name) {
                            this.name = name;
                        }

                        public int getAge() {
                            return age;
                        }

                        public void setAge(int age) {
                            this.age = age;
                        }
                    }
                </code></pre>

                <p class="p1">- Giải thích các annotation:</p>
                <p class="p2">•	@NotEmpty: không để trống.</p>
                <p class="p2">•	@Size(min = 2, max = 30): độ dài ký tự từ 2 đến 30.</p>
                <p class="p2">•	@Min(18): giá trị nhỏ nhất là 18.</p>


                <p class="p0">Bước 3: Tạo class UserController</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">

                    import com.webcoder.validateinforuser.model.User;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.validation.BindingResult;
                    import org.springframework.validation.annotation.Validated;
                    import org.springframework.web.bind.annotation.GetMapping;
                    import org.springframework.web.bind.annotation.ModelAttribute;
                    import org.springframework.web.bind.annotation.PostMapping;
                    import org.springframework.web.servlet.ModelAndView;

                    @Controller
                    public class UserController {
                        @GetMapping("/user")
                        public ModelAndView showForm() {
                            ModelAndView modelAndView = new ModelAndView("/index");
                            modelAndView.addObject("user", new User());
                            return modelAndView;
                        }

                        @PostMapping("/validateUser")
                        public ModelAndView checkValidation(@Validated @ModelAttribute("user") User user,
                                                            BindingResult bindingResult) {
                            if (bindingResult.hasFieldErrors()) {
                                return new ModelAndView("/index");
                            }
                            return new ModelAndView("/result");
                        }

                    }
                </code></pre>

                <p class="p1">-Trong đó:</p>
                <p class="p2">•	@Validate: gắn validate vào model User</p>
                <p class="p2">•	BindingResult: lớp để giữ kết quả xác nhận và ràng buộc của model User</p>

                <p class="p0">Bước 4: Tạo view</p>
                <p class="p1">- index.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form th:object=&quot;${user}&quot; th:action=&quot;@{/validateUser}&quot; method=&quot;post&quot; &gt;
    &lt;table&gt;
        &lt;tr&gt;
            &lt;td&gt;Name:&lt;/td&gt;
            &lt;td&gt;&lt;input th:field=&quot;*{name}&quot;&gt;&lt;/td&gt;
            &lt;td th:if=&quot;${'${#fields.hasErrors(\'name\')}'}&quot; th:errors=&quot;*{name}&quot;&gt;Name Error&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Age:&lt;/td&gt;
            &lt;td&gt;&lt;input th:field=&quot;*{age}&quot;&gt;&lt;/td&gt;
            &lt;td th:if=&quot;${'${#fields.hasErrors(\'name\')}'}&quot; th:errors=&quot;*{age}&quot;&gt;Name Error&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;
                &lt;button type=&quot;submit&quot;&gt;Submit&lt;/button&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
    &lt;/table&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;


                </code></pre>

                <p class="p0 p1">-result.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                &lt;!DOCTYPE html&gt;
                &lt;html lang=&quot;en&quot;&gt;
                &lt;head&gt;
                    &lt;meta charset=&quot;UTF-8&quot;&gt;
                    &lt;title&gt;Title&lt;/title&gt;
                &lt;/head&gt;
                &lt;body&gt;
                &lt;h1&gt;Congratulations! You are old enough to sign up for this site.&lt;/h1&gt;
                &lt;/body&gt;
                &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 5: Chạy chương trình</p>
                <p class="p1">- Nhập liệu sai:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p1/img_2.png"
                     style="width:70%;">
            </div>
        </div>
    </div>
</div>
</body>
</html>
