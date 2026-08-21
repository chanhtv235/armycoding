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
                <a href="/course/module2/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Exception trong java</a>
                <h4>[Thực hành] Sử dụng lớp NumberFormatException</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng try-catch để xử lý ngoại lệ.</p>

                <h5>Mô tả</h5>
                <p>Viết một ứng dụng máy tính đơn giản, cho phép thực hiện các phép Cộng, Trừ, Nhân, Chia.</p>
                <p> Ứng dụng hiển thị thông báo nếu người dùng nhập số bất hợp lệ.</p>
                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b>  Tạo lớp CalculationExample</p>
                <p>Tạo phương thức <b>calculate</b> với đầu vào là 2 số nguyên x và y. In ra kết quả Cộng, Trừ, Nhân, Chia.</p>
                <p>Khi y = 0 hoặc x=y=0 sẽ xuất hiện thông báo lỗi ngoại lệ.</p>
                <pre><code class="language-java">
                        public class CalculationExample {
                            public static void main(String[] args) {
                                 Scanner scanner = new Scanner(System.in);
                                        System.out.println("Hãy nhập x: ");
                                     int x = scanner.nextInt();
                                        System.out.println("Hãy nhập y: ");
                                        int y = scanner.nextInt();
                                CalculationExample calc = new CalculationExample();
                                calc.calculate(x, y);

                            }

                            private void calculate(int x, int y) {
                                try {
                                    int a = x + y;
                                    int b = x - y;
                                    int c = x * y;
                                    int d = x / y;
                                    System.out.println("Tổng x + y = " + a);
                                    System.out.println("Hiệu x - y = " + b);
                                    System.out.println("Tích x * y = " + c);
                                    System.out.println("Thương x / y = " + d);
                                } catch (Exception e) {
                                    System.err.println("Xảy ra ngoại lệ: " + e.getMessage());
                                }
                            }
                        }

                </code></pre>

                <p><b>Bước 2:</b>  Xây dựng mẫu account hợp lệ</p>
                <pre><code class="language-java">
                    1.	x=5, y=5;
                    2.	x=0, y=1
                </code></pre>
                <p><b>Bước 3:</b>  Xây dựng mẫu account không hợp lệ</p>
                <pre><code class="language-java">
                    1.	y=0;
                    2.	x=0, y=0;
                </code></pre>
                <p><b>Bước 4:</b> Chạy chương trình và kiểm tra kết quả</p>
                <pre><code class="language-text">
                    <b>※ Với x= 5, y=5;</b>
                            Tổng x + y = 10
                            Hiệu x - y = 0
                            Tích x * y = 25
                            Thương x / y = 1
                    <b>※ Với x = 0, y = 1;</b>
                            Tổng x + y = 1
                            Hiệu x - y = -1
                            Tích x * y = 0
                            Thương x / y = 0
                    <b>※ Với y = 0 hoặc x=y=0;</b>
                            Xảy ra ngoại lệ: / by zero
                </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
