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
                <a href="/course/module4/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">8. Session và cookie</a>
                <h4>[Thực hành] Đếm số lượt view trang </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập triển khai cơ chế session trong Spring MVC</p>
                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này, chúng ta sẽ triển khai một tính năng cho phép ghi nhận số lần người dùng
                    truy cập trang web trong một phiên làm việc.</p>
                <p class="p1">- Ứng dụng sẽ ghi nhận và hiển thị số lần truy cập. Khi người dùng truy cập vào một trang
                    trong ứng dụng thì số lần truy cập sẽ tăng lên.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án Spring MVC và đặt tên là spring_count_view</p>
                <p class="p1">-Chọn thư viện như trên hình bên dưới</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p1/img.png"
                     style="width:60%;">
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p1/img_1.png"
                     style="width:60%;">
                <p class="p1">-Cấu trúc dự án như bên dưới</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p1/img_2.png"
                     style="width:30%;">
                <p class="p0">Bước 2: Xây dựng lớp Counter</p>
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

                <p class="p1">- Trong lớp Counter chúng ta khai báo một biến count để tăng lượt view sau mỗi lần người
                    dùng truy cập trang và một phương thức increment() để thi hành việc tăng giá trị cho biến count.</p>

                <p class="p0">Bước 3: Xây dựng lớp CounterController</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                        package com.webcoder.validateinforuser.controller;

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

                <p class="p1">- Trong đó:</p>
                <p class="p2">• Annotation @SessionAttributes("counter") được sử dụng để lưu trữ model attribute trong
                    session. Trong đoạn mã trên, model attribute "counter" sẽ được thêm vào session nếu tên attribute
                    của @ModelAttribute và @SessionAttributes giống nhau.</p>
                <p class="p2">• Annotation @ModelAttribute liên kết một tham số phương thức hoặc một phương thức trả về
                    giá trị cho một model attribute và sau đó trả nó về một view cụ thể.</p>

                <p class="p0">Bước 4: Xây dựng view để hiển thị số lượt truy cập</p>
                <p class="p1">- index.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                &lt;!DOCTYPE html&gt;
                &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                &lt;head&gt;
                    &lt;meta charset=&quot;UTF-8&quot;&gt;
                    &lt;title&gt;Title&lt;/title&gt;
                &lt;/head&gt;
                &lt;body&gt;
                &lt;h1 th:text=&quot;${'View count: ' + counter.count}&quot;&gt;&lt;/h1&gt;
                &lt;/body&gt;
                &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 5: Chạy chương trình</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p1/img_3.png"
                     style="width:70%;">
                <p class="p1">- Refresh (F5) trang web để quan sát thêm.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
