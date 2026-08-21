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
                <a href="/course/module2/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">4.Class và object</a>
                <h4>[Thực hành] Lớp hình chữ nhật</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập định nghĩa lớp, tạo đối tượng và sử dụng các phương thức của đối tượng.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng để tính diện tích và chu vi của hình chữ nhật. Ứng dụng cũng cho phép hiển thị hình chữ nhật. Ứng dụng được thiết kế theo mô hình Hướng Đối tượng.</p>
                <p>Lớp Hình chữ nhật có các thuộc tính: width (chiều rộng), height (chiều cao), phương thức khởi tạo không tham số và có 2 tham số, các phương thức: getArea() (tính diện tích), getPerimeter() (tính chu vi) và display() (hiển thị).</p>
                <p>Sau đây là biểu đồ lớp:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session4/img/img-p1.png" style="width: 30%;">

                <h5>Hướng dẫn</h5>

                <p> Bước 1: Tạo dự án</p>
                 <p>Khởi động Intellij, trong màn hình tiếp theo chọn "New Project".</p>
                <p> Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk.</p>
                <p> Cấu trúc của dự án sau khi tạo mới như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session4/img/img-p12.png" style="width: 50%;">

                <p>Bước 2: Tạo lớp Rectangle</p>

                <p>Khai báo các thuộc tính (properties), định nghĩa các phương thức khởi tạo (contructors).</p>
                <pre><code class="language-java">
                        public class Rectangle {
                            double width, height;

                            public Rectangle() {
                            }

                            public Rectangle(double width, double height) {
                                this.width = width;
                                this.height = height;
                            }
                        }
                </code></pre>

                <p>Định nghĩa các phương thức getArea(), getPerimeter(), display()</p>
                <pre><code class="language-java">
                        public double getArea() {
                            return this.width * this.height;
                        }

                        public double getPerimeter() {
                            return (this.width + this.height) * 2;
                        }

                        public String display() {
                            return "Rectangle{" + "width=" + width + ", height=" + height + "}";
                        }

                </code></pre>
                <p>Đoạn code đầy đủ của class Rectangle sẽ như sau:</p>
                <pre><code class="language-javascript language-markup">
                        public class Rectangle {
                            double width, height;

                            public Rectangle() {
                            }

                            public Rectangle(double width, double height) {
                                this.width = width;
                                this.height = height;
                            }

                            public double getArea() {
                                return this.width * this.height;
                            }

                            public double getPerimeter() {
                                return (this.width + this.height) * 2;
                            }

                            public String display() {
                                return "Rectangle{" + "width=" + width + ", height=" + height + "}";
                            }
                        }
                </code></pre>

                <p>Tạo class Main chứa phương thức main để thực thi chương trình</p>
                <pre><code class="language-java">
                        public class Main {

                            public static void main(String[] args) {
                            }
                        }
                </code></pre>
                <p>Khai báo các biến lưu kích thước hình chữ nhật và gán giá trị</p>
                <pre><code class="language-java">
                        Scanner scanner = new Scanner(System.in);
                        System.out.print("Enter the width:");
                        double width = scanner.nextDouble();
                        System.out.print("Enter the height:");
                        double height = scanner.nextDouble();

                </code></pre>
                <p>Chạy chương trình, quan sát kết quả</p>
                <p>Khởi tạo một đối tượng thuộc lớp Rectangle với phương thức khởi tạo chứa 2 tham số width, height</p>
                <pre><code class="language-java">
                        Rectangle rectangle = new Rectangle(width, height);
                </code></pre>

                <p>Gọi các phương thức của lớp Rectangle thông qua đối tượng rectangle đã tạo để hiển thị các thông số của hình chữ nhật</p>
                <pre><code class="language-java">
                        System.out.println("Your Rectangle \n"+ rectangle.display());
                        System.out.println("Perimeter of the Rectangle: "+ rectangle.getPerimeter());
                        System.out.println("Area of the Rectangle: "+ rectangle.getArea());
                </code></pre>
                <p>Đoạn code đầy đủ của class Main</p>
                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class Main {

                            public static void main(String[] args) {
                                Scanner scanner = new Scanner(System.in);
                                System.out.print("Enter the width:");
                                double width = scanner.nextDouble();
                                System.out.print("Enter the height:");
                                double height = scanner.nextDouble();
                                Rectangle rectangle = new Rectangle(width, height);
                                System.out.println("Your Rectangle \n"+ rectangle.display());
                                System.out.println("Perimeter of the Rectangle: "+ rectangle.getPerimeter());
                                System.out.println("Area of the Rectangle: "+ rectangle.getArea());
                            }
                        }

                </code></pre>

                <p> Bước 3: Thực thi chương trình và quan sát kết quả.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
