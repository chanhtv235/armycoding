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
                <a href="/course/module2/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2.Vòng lặp trong java</a>
                <h4>[Thực hành] Tìm ước số chung lớn nhất </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp while.</p>

                <h5>Mô tả</h5>

                <p>Trong toán học, nếu số nguyên a chia hết cho số nguyên b thì số b được gọi là ước của số nguyên a, a được gọi là bội của b. Số nguyên dương b lớn nhất là ước của cả hai số nguyên a, b được gọi là ước số chung lớn nhất (ƯCLN) của a và b. Trong trường hợp cả hai số nguyên a và b đều bằng 0 thì chúng không có ƯCLN vì khi đó mọi số tự nhiên khác không đều là ước chung của a và b. Nếu chỉ một trong hai số a hoặc b bằng 0, số kia khác 0 thì ƯCLN của chúng bằng giá trị tuyệt đối của số khác 0.</p>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng để tìm ước số chung lớn nhất của hai số.</p>
                <p>Ứng dụng cho phép nhập vào hai số nguyên và hiển thị ước số chung lớn nhất của hai số đó.</p>

                <h5>Hướng dẫn</h5>
                <p> <b>Bước 1: </b> Tạo mới dự án</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p31.png"
                     style="width: 71%;">
                <p>Đặt tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p32.png"
                     style="width: 50%;">
                <p>Cấu trúc dự án sau khi tạo mới như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p33.png"
                     style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp GreatestCommonFactor</p>
                <p>Cấu trúc dự án sau khi tạo lớp GreatestCommonFactor như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p34.png"
                     style="width: 50%;">

                <p>Khai báo hai biến số nguyên a, b và nhập giá trị cho a, b từ bàn phím</p>

                <pre><code class="language-java">
                        int a;
                        int b;
                        Scanner input = new Scanner(System.in);
                        System.out.println("Enter a: ");
                        a = input.nextInt();
                        System.out.println("Enter b: ");
                        b = input.nextInt();
                </code></pre>
                <p>Sử dụng hàm abs() để trả về giá trị tuyệt đối (phần dương) của a, b</p>
                <pre><code class="language-java">
                        a = Math.abs(a);
                        b = Math.abs(b);
                </code></pre>
                <p>Kiểm tra a, b có bằng 0 hay không</p>
                <pre><code class="language-java">
                        if (a == 0 || b == 0) {
                            System.out.println("No greatest common factor");
                        }
                </code></pre>
                <p>Tìm ước số chung lớn nhất của a, b</p>
                <p>Sử dụng vòng lặp kiểm tra trong khi a khác b thì</p>
                <p>Nếu a < b: a = a – b</p>
                <p>Còn lại b = b – a</p>
                <p>Mã nguồn như sau</p>

                <pre><code class="language-java">
                        while (a != b) {
                            if (a > b)
                                a = a - b;
                            else
                                b = b - a;
                        }

                </code></pre>

                <p>Kết thúc vòng lặp. In ra ước số chung lớn nhất của a, b là a</p>
                <pre><code class="language-java">
                        System.out.println("Greatest common factor: " + a);
                </code></pre>


                <p> Bước 3: Thực thi chương trình và quan sát kết quả.</p>
                <pre>
                    Nhập a = 0, b = 0
                    Nhập a = 0, b = 6
                    Nhập a = 6, b = 0
                    Nhập a = 3, b = 6
                    Nhập a = 6, b = 3
                </pre>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p35.png"
                     style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
