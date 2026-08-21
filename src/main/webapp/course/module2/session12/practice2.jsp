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
                <h4>[Thực hành] Validate account</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Regular Expression.</p>

                <h5>Mô tả</h5>
                <p>- Viết phương thức để kiểm tra tính hợp lệ của tên tài khoản.</p>

                <p>- Một tài khoản hợp lệ cần đạt các yêu cầu sau:</p>

                <p class="p1">+ Không chứa các ký tự đặc biệt</p>
                <p class="p1">+ Ít nhất là 6 ký tự</p>
                <p class="p1">+ Không chứa các ký tự viết hoa</p>
                <p class="p1">+Cho phép dấu gạch dưới (_)</p>
                <h5>Hướng dẫn</h5>

                <p class="p0"> Bước 1: Tạo Pattern</p>
                <p> Chúng ta có Account Regular Expression Pattern như sau:</p>
                <pre class="language-regex"><code>
                     ^[_a-z0-9]{6,}$
                </code></pre>
                <p>Mô tả</p>
                <img src="${pageContext.request.contextPath}/course/module2/session12/img/img-p21.png"
                     style="width: 50%;">
                <p class="p0">Bước 2: Tạo lớp AccountExample</p>
                <p>Ở đây ta tạo một biến static String ACCOUNT_REGEX chứa định dạng Regular Expression của tài khoản.
                    Sau đó tạo một phương thức validate() để kiểm tra tài tài khoản cần kiểm tra có hợp lệ với
                    ACCOUNT_REGEX đã định nghĩa hay không.</p>
                <pre class="language-java"><code>
                    public class AccountExample {
                        /*Không chứa các ký tự đặc biệt
                          Phải dài hơn 6 ký tự
                          Không chứa các ký tự viết hoa
                          Cho phép dấu gạch dưới (_)
                        */
                        private static final String ACCOUNT_REGEX = "^[_a-z0-9]{6,}$";

                        public AccountExample() {
                        }

                        public boolean validate(String regex) {
                            Pattern pattern = Pattern.compile(ACCOUNT_REGEX);
                            Matcher  matcher = pattern.matcher(regex);
                            return matcher.matches();
                        }
                    }
                 </code></pre>
                <p class="p0">Bước 3: Xây dựng mẫu account hợp lệ</p>
                <p class="p3">123abc_</p>
                <p class="p3">_abc123</p>
                <p class="p3">______</p>
                <p class="p3">123456</p>
                <p class="p3">abcdefg</p>
                <p class="p0"> Bước 4: Tạo lớp kiểm thử EmailExampleTest</p>
                <p class="p3">.@</p>
                <p class="p3">12345</p>
                <p class="p3">1234_</p>
                <p class="p3">abcde</p>
                <p class="p0">Bước 5: Tạo lớp kiểm thử AccountExampleTest</p>
                <pre class="language-java"><code>
                    public class AccountExampleTest {

                        private static AccountExample accountExample;

                        public static final String[] validAccount
                                                = new String[]{"123abc_", "_abc123", "______", "123456", "abcdefgh"};
                        public static final String[] invalidAccount
                                                = new String[]{".@", "12345", "1234_", "abcde"};

                        public static void main(String args[]) {
                            accountExample = new AccountExample();
                            for (String account : validAccount) {
                                boolean isValid = accountExample.validate(account);
                                System.out.println("Account is " + account + " is valid: " + isValid);
                            }
                            for (String account : invalidAccount) {
                                boolean isValid = accountExample.validate(account);
                                System.out.println("Account is " + account + " is valid: " + isValid);
                            }
                        }
                    }
                </code></pre>
                <p class="p0">Kết quả khi thực thi kiểm thử:</p>
                <pre class="language-regex"><code>
                        Account is 123abc_ is valid: true
                        Account is _abc123 is valid: true
                        Account is _______ is valid: true
                        Account is 123456 is valid: true
                        Account is abcdefg is valid: true
                        Account is .@ is valid: false
                        Account is 12345 is valid: false
                        Account is 1234_ is valid: false
                        Account is abcde is valid: false
                </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
