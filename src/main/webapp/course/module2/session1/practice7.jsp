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
                <a href="/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">1. Tổng quan về java</a>
                <h4>[Thực hành] Tính chỉ số cân nặng của cơ thể </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc điều khiển if.</p>

                <h5>Mô tả</h5>
                <p>Chỉ số khối cơ thể (Body mass index-BMI) là một thước đo sức khoẻ dựa trên cân nặng và chiều cao. Nó
                    được tính bằng cách lấy cân nặng đơn vị tính kilogam chia cho bình phương của chiều cao đơn vị tính
                    mét. Công thức:</p>
                <p>bmi = weight / height2</p>
                <p>Chỉ số BMI đối với người trên 20 tuổi được phân loại và diễn giải theo bảng sau:</p>
                <img src="img/img-p70.png" style="width: 70%;">
                <p>Ví dụ: Một người có cân nặng là 65Kg và chiều cao là 1.75m thì BMI là 65 / 1.752 = 22.22. Chỉ số này
                    nằm trong khoảng 18.5 đến 25.0 cho nên được phân loại là Normal (bình thường).</p>
                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo mới dự án</p>
                <p>Để tạo một dự án mới trong IntelliJ, chọn "New Project".</p>
                <img src="img/img-p71.png" style="width: 70%;">

                <p>Điền tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, và jdk.</p>
                <img src="img/img-p72.png" style="width: 50%;">

                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="img/img-p73.png" style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp BodyMassIndex</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>
                <img src="img/img-p74.png" style="width: 70%;">

                <p>Đặt tên lớp là "BodyMassIndex"</p>
                <img src="img/img-p75.png" style="width: 40%;">


                <p>Nhập dữ liệu từ bàn phím</p>

                <pre><code class="language-java">
                    Scanner scanner = new Scanner(System.in);
                    double weight, height, bmi;
                    System.out.print("Your weight (in kilogram):");
                    weight = scanner.nextDouble();

                    System.out.print("Your height (in meter):");
                    height = scanner.nextDouble();
                </code></pre>

                <p>Tính chỉ số BMI theo công thức.</p>
                <pre><code class="language-java">
                       bmi = weight / Math.pow(height, 2);
                </code></pre>
                <p>Lưu ý: Sử dụng hàm Math.pow(x,2) để bình phương của một số.</p>
                <p>Hiển thị chỉ số và phân loại kết quả.</p>

                <pre><code class="language-java">
                       System.out.printf("%-20s%s", "bmi", "Interpretation\n");

                        if (bmi < 18)
                            System.out.printf("%-20.2f%s", bmi, "Underweight");
                        else if (bmi < 25.0)
                            System.out.printf("%-20.2f%s", bmi, "Normal");
                        else if (bmi < 30.0)
                            System.out.printf("%-20.2f%s", bmi, "Overweight");
                        else
                            System.out.printf("%-20.2f%s", bmi, "Obese");
                </code></pre>

                <p>Đoạn code đầy dủ của hàm main sẽ như sau:</p>
                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class BodyMassIndex {

                            public static void main(String[] args) {
                                Scanner scanner = new Scanner(System.in);
                                double weight, height, bmi;
                                System.out.print("Your weight (in kilogram):");
                                weight = scanner.nextDouble();

                                System.out.print("Your height (in meter):");
                                height = scanner.nextDouble();
                                bmi = weight / Math.pow(height, 2);
                                System.out.printf("%-20s%s", "bmi", "Interpretation\n");

                                if (bmi < 18)
                                    System.out.printf("%-20.2f%s", bmi, "Underweight");
                                else if (bmi < 25.0)
                                    System.out.printf("%-20.2f%s", bmi, "Normal");
                                else if (bmi < 30.0)
                                    System.out.printf("%-20.2f%s", bmi, "Overweight");
                                else
                                    System.out.printf("%-20.2f%s", bmi, "Obese");
                            }

                </code></pre>

                <p><b>Bước 3:</b> Chạy và quan sát kết quả.</p>

                <img src="img/img-p76.png" style="width: 40%;">
            </div>
        </div>
    </div>
</div>


</body>
</html>
