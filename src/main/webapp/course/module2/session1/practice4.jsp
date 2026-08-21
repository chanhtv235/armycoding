<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>

<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">1. Tổng quan về java</a>
                <h4>[Thực hành] Giải phương trình bậc nhất </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc rẽ nhánh dựa trên câu lệnh if.</p>

                <h5>Mô tả</h5>
                <p>Viết chương trình LinearEquationResolver cho phép tìm ra nghiệm của một phương trình bậc nhất từ các
                    hệ số do người dùng nhập vào.</p>
                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo mới dự án</p>
                <p>Để tạo một dự án mới trong IntelliJ, chọn "New Project".</p>
                <img src="img/img-p41.png" style="width: 70%;">

                <p>Điền tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, và jdk.</p>
                <img src="img/img-p42.png" style="width: 70%;">

                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="img/img-p43.png" style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp LinearEquationResolver</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>
                <img src="img/img-p44.png" style="width: 70%;">

                <p>Đặt tên lớp là "LinearEquationResolver"</p>
                <img src="img/img-p45.png" style="width: 50%;">

                <p><b>Bước 3:</b> Nhận giá trị các hệ số từ người dùng</p>


                <p>Chương trình cần nhận giá trị các hệ số từ người dùng. Ở đây sử dụng thư viện Scanner trong gói
                    java.util để đọc giá trị mà người dùng nhập vào console (luồng in):</p>
                <p>Lần lượt chỉ dẫn người dùng và đọc các giá trị đầu vào, do hệ số của hàm bậc nhất có thể là số nguyên
                    hoặc số thực nên ta sử dụng hàm nextDouble và lưu giá trị vào biến có kiểu double:</p>
                <pre><code class="language-java language-markup">
                        import java.util.Scanner;

                        public class LinearEquationResolver {
                            public static void main(String[] args) {
                                System.out.println("Linear Equation Resolver");
                                System.out.println("Given a equation as 'a * x + b = c', please enter constants:");
                                Scanner scanner = new Scanner(System.in);
                                System.out.print("a: ");
                                double a = scanner.nextDouble();

                                System.out.print("b: ");
                                double b = scanner.nextDouble();

                                System.out.print("c: ");
                                double c = scanner.nextDouble();
                            }
                </code></pre>

                <p>Tiếp theo chúng ta sẽ khai báo đối tượng Scanner và sử dụng đối tượng này để có thể nhập dữ liệu từ
                    bàn phím</p>
                <p>Lưu ý: Cần import lớp Scanner từ gói java.util</p>

                <pre><code class="language-java language-markup">
                        import java.util.Scanner;

                        public class Rectangle {
                            public static void main(String[] args) {
                                float width;
                                float height;

                                Scanner scanner = new Scanner(System.in);//Khai báo đối tượng Scanner

                                System.out.println("Enter width: ");
                                width = scanner.nextFloat();//Nhập chiều rộng

                                System.out.println("Enter height: ");
                                height = scanner.nextFloat();//Nhập chiều cao
                            }
                        }

                </code></pre>

                <p><b>Bước 3:</b> Tìm nghiệm của phương trình</p>
                <p>Khi a != 0, phương trình bậc nhất chắc chắn có một nghiệm, khác hẳn với khi a ==0, do đó chúng ta sẽ
                    kiểm tra nếu a != 0 thì ngay lập tức tính nghiệm duy nhất đó, giúp chương trình sẽ rất nhanh chóng
                    có được một phần chức năng hoạt động được.</p>
                <p>Trong trường hợp còn lại (a == 0), có tới hai khả năng có thể xảy ra dựa trên việc hệ số b có bằng c
                    hay không, do đó ta cần tiếp tục sử dụng cấu trúc rẽ nhánh một lần nữa:</p>

                <pre><code class="language-java language-markup">
                    if (a != 0) {
                        double answer = (c - b) / a;
                        System.out.printf("Equation pass with x = %f!\n", answer);
                    } else {
                        if (b == c) {
                            System.out.print("The solution is all x!");
                        } else {
                            System.out.print("No solution!");
                        }
                    }
                </code></pre>

                <p><b>Bước 5:</b> Chạy chương trình, quan sát cửa sổ output:</p>

                <img src="img/img-p46.png" style="width: 70%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
