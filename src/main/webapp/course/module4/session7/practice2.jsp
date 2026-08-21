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
                <h4>[Thực hành] Custom Validation</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập tạo các tùy biến validator tùy biến.</p>
                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này, chúng ta phát triển một ứng dụng cho phép validate số điện thoại của
                    người dùng.</p>
                <p class="p1">- Ứng dụng cho phép nhập số điện thoại và hiển thị thông báo tương ứng với giá trị của số
                    điện thoại.</p>
                <p class="p2">• Số điện thoại không được để trống.</p>
                <p class="p2">• Bắt đầu bằng số 0.</p>
                <p class="p2">• Có độ dài từ 10 - ký tự.</p>
                <p class="p2">• Chỉ bao gồm số.</p>


                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án Spring MVC có tên customize-phone-validate</p>
                <p class="p1">-Chọn thư viện như hướng dẫn bài trước:</p>
                <p class="p1">- Cấu trúc dự án như dưới:</p>

                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p2/img.png"
                     style="width:40%;">

                <p class="p0">Bước 2: Tạo class PhoneNumber</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customize_phone_validate.model;

                    import org.springframework.validation.Errors;
                    import org.springframework.validation.Validator;

                    public class PhoneNumber implements Validator {
                        private String number;

                        public String getNumber() {
                            return number;
                        }

                        public void setNumber(String number) {
                            this.number = number;
                        }

                        @Override
                        public boolean supports(Class<?> clazz) {
                            return PhoneNumber.class.isAssignableFrom(clazz);
                        }

                        @Override
                        public void validate(Object target, Errors errors) {
                            PhoneNumber phoneNumber = (PhoneNumber) target;
                            String number = phoneNumber.getNumber();
                            if ("".equals(number)){
                                errors.rejectValue("number", "number.empty");
                            }else if (!number.matches("(^0[0-9]{9}$)")){
                                errors.rejectValue("number", "number.matches");
                            }
                        }
                    }
                </code></pre>

                <p class="p1">- Giải thích các annotation:</p>
                <p class="p2"><b>•supports:</b> là phương thức xác định class này được Validate.</p>
                <p class="p2"><b>• validate(Object target, Errors errors):</b> là phương thức dùng để xác minh cho đối tượng và
                    trả về lỗi trong errors nếu có.</p>


                <p class="p0">Bước 3: Thêm cấu hình trong file AppConfig</p>
                <p>-Tạo class AppConfig và config MessageSource như bên dưới</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Bean
                    public MessageSource messageSource() {
                        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
                        messageSource.setBasename("validation-message");
                        messageSource.setDefaultEncoding("UTF-8");
                        return messageSource;
                    }
                </code></pre>
                <p class="p0">Bước 4: Tạo resource bundle có tên validation-message.properties</p>
                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p2/img_1.png"
                     style="width:50%;">
                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p2/img_2.png"
                     style="width:40%;">

                <p class="p1">- Khai báo các thông tin trong file như sau:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    number.empty = phoneNumber not empty.
                    number.matches = phoneNumber not match.
                </code></pre>


                <p class="p0">Bước 5: Tạo PhoneController</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customize_phone_validate.controller;

                    import com.webcoder.customize_phone_validate.model.PhoneNumber;
                    import jakarta.validation.Valid;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.ui.Model;
                    import org.springframework.validation.BindingResult;
                    import org.springframework.web.bind.annotation.GetMapping;
                    import org.springframework.web.bind.annotation.ModelAttribute;
                    import org.springframework.web.bind.annotation.PostMapping;

                    @Controller
                    public class PhoneController {
                        @GetMapping("/")
                        public String showForm(Model model){
                            model.addAttribute("phoneNumber", new PhoneNumber());
                            return "/index";
                        }

                        @PostMapping("/")
                        public String checkValidation (@Valid @ModelAttribute("phoneNumber")PhoneNumber phoneNumber,
                                                       BindingResult bindingResult, Model model){
                            new PhoneNumber().validate(phoneNumber, bindingResult);
                            if (bindingResult.hasFieldErrors()){
                                return "/index";
                            } else {
                                model.addAttribute("phoneNumber", phoneNumber);
                                return "/result";
                            }
                        }
                    }
                </code></pre>



                <p class="p0">Bước 6: Tạo view</p>
                <p class="p1">- index.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form action=&quot;#&quot; th:action=&quot;@{/}&quot; th:object=&quot;${phoneNumber}&quot;
      method=&quot;POST&quot;&gt;
    &lt;table&gt;
       &lt;tr&gt;
          &lt;td&gt;PhoneNumber&lt;/td&gt;
          &lt;td&gt;&lt;input type=&quot;text&quot; th:field=&quot;*{number}&quot;/&gt;&lt;/td&gt;
          &lt;td th:if=&quot;${'${#fields.hasErrors(\'number\')}'}&quot; th:errors=&quot;*{number}&quot;&gt;Name Error&lt;/td&gt;
       &lt;/tr&gt;
    &lt;/table&gt;
    &lt;button type=&quot;submit&quot;&gt;submit&lt;/button&gt;
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
&lt;h1&gt;Your phone &lt;span th:text=&quot;${phoneNumber.number}&quot;&gt;&lt;/span&gt;&lt;/h1&gt;
&lt;/body&gt;
&lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 7: Chạy chương trình</p>
                <p class="p1">- - Nhập số điện thoại không phù hợp:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session7/img/p2/img_3.png"
                     style="width:40%;">
            </div>
        </div>
    </div>
</div>
</body>
</html>
