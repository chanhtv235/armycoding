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
                <a href="/course/module2/session12/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Exception trong java</a>
                <h4>[Thực hành] Validate email</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Regular Expression.</p>

                <h5>Mô tả</h5>
                <p>- Viết phương thức để kiểm tra tính hợp lệ của một email.</p>

                <p>- Một email hợp lệ cần đạt các yêu cầu sau:</p>

                <p class="p1">+ Bắt đầu bằng một ký tự</p>
                <p class="p1">+ Không chứa các ký tự đặc biệt</p>
                <p class="p1">+ Có một ký tự @ ngăn cách tên email và domain</p>
                <p class="p1">+Domain phải hợp lệ</p>
                <h5>Hướng dẫn</h5>

                <p class="p0"> Bước 1: Tạo Pattern</p>
                <p> Chúng ta có Email Regular Expression Pattern như sau:</p>
                <pre class="language-regex"><code>
                     ^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$;
                </code></pre>
                <p>Mô tả</p>
                <img src="${pageContext.request.contextPath}/course/module2/session12/img/img-p11.png"
                     style="width: 70%;">
                <p class="p0">Bước 2: Tạo lớp EmailExample</p>
                <p>Ở đây ta tạo một biến static String EMAIL_REGEX chứa định dạng Regular Expression của email. Sau đó
                    tạo một phương thức validate() để kiểm tra email cần kiểm tra có hợp lệ với EMAIL_REGEX đã định
                    nghĩa hay không.</p>
                <pre class="language-java"><code>
                        public class EmailExample {
                            private static Pattern pattern;
                            private Matcher matcher;

                            private static final String EMAIL_REGEX =
                                                      "^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$";

                            public EmailExample() {
                                pattern = Pattern.compile(EMAIL_REGEX);
                            }

                            public boolean validate(String regex) {
                                matcher = pattern.matcher(regex);
                                return matcher.matches();
                            }
                        }
                 </code></pre>
                <p class="p0">Bước 3:Xây dựng mẫu email hợp lệ/không hợp lệ cho việc kiểm thử</p>

                <p class="p1">Xây dựng mẫu email hợp lệ</p>
                <p class="p2">- a@gmail.com</p>
                <p class="p2">- ab@yahoo.com</p>
                <p class="p2">- abc@hotmail.com</p>
                <p class="p1"> Xây dựng mẫu email Không hợp lệ</p>
                <p class="p2"> - @gmail.com</p>
                <p class="p2">- ab@gmail.</p>
                <p class="p2">- @#abc@gmail.com</p>
                <p class="p0"> Bước 4: Tạo lớp kiểm thử EmailExampleTest</p>

                <pre class="language-java"><code>
                    public class EmailExampleTest {
                        private static EmailExample emailExample;
                        public static final String[] validEmail =
                                                new String[]{"a@gmail.com", "ab@yahoo.com", "abc@hotmail.com"};
                        public static final String[] invalidEmail =
                                                new String[]{"@gmail.com", "ab@gmail.", "@#abc@gmail.com"};

                        public static void main(String args[]) {
                            emailExample = new EmailExample();
                            for (String email : validEmail) {
                                boolean isvalid = emailExample.validate(email);
                                System.out.println("Email is " + email + " is valid: " + isvalid);
                            }
                            for (String email : invalidEmail) {
                                boolean isvalid = emailExample.validate(email);
                                System.out.println("Email is " + email + " is valid: " + isvalid);
                            }
                        }
                    }
                </code></pre>
                <p class="p0">Quan sát kết quả khi thực thi kiểm thử:</p>
                <pre class="language-text"><code>
                    Email is a@gmail.com is valid: true
                    Email is ab@yahoo.com is valid: true
                    Email is abc@hotmail.com is valid: true
                    Email is @gmail.com is valid: false
                    Email is ab@gmail. is valid: false
                    Email is @#abc@gmail.com is valid: false
                </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
