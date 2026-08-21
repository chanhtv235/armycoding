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
                <a href="/course/module2/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">6.Kế thừa trong java</a>
                <h4>[Thực hành] Hệ các đối tượng hình học </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập kỹ năng lập bản thiết kế và triển khai lớp đối tượng kế thừa.</p>

                <h5>Mô tả</h5>
                <p>Thiết kế lớp đối tượng Shape và các lớp con của nó thành giản đồ UML theo mô tả dưới đây:</p>
                <h6>Lớp Shape</h6>
                <p>• Có hai thuộc tính là color (String) và filled (boolean).</p>
                <p>• Có hai phương thức khởi tạo, một trong số đó không cần đối số đầu vào mà sử dụng giá trị mặc định:
                    "green" cho color và true cho filled. Phương thức khởi tạo còn lại đặt giá trị cho thuộc tính của
                    color
                    và filled theo giá trị của đối số truyền vào.</p>
                <p>• Có các getter và setter cho tất cả các thuộc tính.</p>
                <p>• Được cài đè phương thức toString trả về chuỗi ký tự theo mẫu "A Shape with color of xxx and
                    filled/not
                    filled".</p>
                <p>• Có hai lớp con là Circle và Rectangle</p>
                <h6>Lớp Circle</h6>
                <p>• Có thêm thuộc tính radius (double).</p>
                <p>• Có ba phương thức khởi tạo. Phương thức khởi tạo mà không cần đối số đầu vào sẽ đặt giá trị mặc
                    định
                    cho radius là 1.0.</p>
                <p>• Có các getter và setter cho cả ba phương thức.</p>
                <p>• Có phương thức getArea và getPerimeter trả về diện tích và chu vi của hình.</p>
                <p>• Được cài đè phương thức toString trả về chuỗi ký tự theo mẫu "A Circle with radius=xxx, which is a
                    subclass of yyy". Trong đó yyy là kết quả thực thi từ phương thức toString của lớp Shape.</p>
                <h6>Lớp Rectangle</h6>
                <p>• Có thêm hai thuộc tính là width và length (double).</p>
                <p>• Có ba phương thức khởi tạo. Phương thức khởi tạo mà không cần đối số đầu vào sẽ đặt giá trị mặc
                    định
                    cho width và length là 1.0.</p>
                <p>• Có các getter và setter cho tất cả các thuộc tính.</p>
                <p>• Có phương thức getArea và getPerimeter trả về diện tích và chu vi của hình.</p>
                <p>• Được cài đè phương thức toString trả về chuỗi ký tự theo mẫu "A Rectangle with width=xxx and
                    length=zzz, which is a subclass of yyy".Trong đó yyy là kết quả thực thi từ phương thức toString của
                    lớp
                    Shape.</p>
                <p>• Có một lớp con là lớp Square.</p>
                <h6>Lớp Square<h6></h6>
                    <p><b>Chú ý</b>: trong thực tế, một “square” không phải là một “rectangle”, do đó quan hệ “lớp
                        square là lớp con
                        của lớp rectangle” là không hợp lý. Tình huống ở đây được đưa ra chỉ với mục đích luyện tập hiện
                        thực
                        hóa mô tả thành giản đồ UML và triển khai mã theo bản vẽ.</p>
                    <p>- Lớp Square:</p>
                    <p>• Không có thêm thuộc tính nào so với lớp cha.</p>
                    <p>• Không có phương thức khởi tạo nào sử dụng đối số dầu vào width và length, thay vào đó là đối số
                        side.</p>
                    <p>• Phương thức khởi tạo mà không cần đối số đầu vào sẽ đặt giá trị mặc định cho width và height
                        (side) là
                        1.0.</p>
                    <p>• Có getter và setter cho side.</p>
                    <p>• Cài đè phương thức setWidth và getWidth để chúng thay đổi giá trị của cả width và height, để
                        bảo toàn
                        tính “vuông”.</p>
                    <p>• Được cài đè phương thức toString trả về chuỗi ký tự theo mẫu "A Square with side=xxx, which is
                        a
                        subclass of yyy".Trong đó yyy là kết quả thực thi từ phương thức toString của lớp Rectangle.</p>
                    <p>Có cần phải cài đè phương thức getArea và getPerimeter không?</p>


                    <h5>Hướng dẫn</h5>

                    <p> Bước 1: Tạo dự án</p>
                    <p>Khởi động Intellij, trong màn hình tiếp theo chọn "New Project".</p>
                    <p> Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk.</p>
                    <p>Tự phân tích và vẽ hoàn chỉnh giản đồ UML của hệ lớp đối tượng. Sau đó so sánh với giản đồ mẫu ở
                        dưới.</p>
                    <img src="${pageContext.request.contextPath}/course/module2/session6/img/img-p11.png"
                         style="width: 50%;">

                    <p>Bước 2: : Viết mã triển khai và mã kiểm thử cho lớp Shape</p>

                    <p>Lớp Shape</p>

                    <pre><code class="language-java">
                        public class Shape {
                            private String color = "green";
                            private boolean filled = true;

                            public Shape() {
                            }

                            public Shape(String color, boolean filled) {
                                this.color = color;
                                this.filled = filled;
                            }

                            public String getColor() {
                                return color;
                            }

                            public void setColor(String color) {
                                this.color = color;
                            }

                            public boolean isFilled() {
                                return filled;
                            }

                            public void setFilled(boolean filled) {
                                this.filled = filled;
                            }

                            @Override
                            public String toString() {
                                return "A Shape with color of "
                                        + getColor()
                                        + " and "
                                        + (isFilled() ? "filled" : "not filled");
                            }
                        }

                </code></pre>

                    <p>Lớp ShapeTest (để kiểm thử)</p>
                    <pre><code class="language-java">
                        public class ShapeTest {
                            public static void main(String[] args) {
                                Shape shape = new Shape();
                                System.out.println(shape);

                                shape = new Shape("red", false);
                                System.out.println(shape);
                            }
                        }
                </code></pre>

                    <p>Quan sát kết quả:</p>
                    <img src="${pageContext.request.contextPath}/course/module2/session6/img/img-p12.png"
                         style="width: 70%;">
                    <p>Bước 3: Lớp Circle và mã kiểm thử:</p>
                    <p>Lớp Circle</p>

                    <pre><code class="language-java">
                    public class Circle extends Shape {
                        private double radius = 1.0;

                        public Circle() {
                        }

                        public Circle(double radius) {
                            this.radius = radius;
                        }

                        public Circle(double radius, String color, boolean filled) {
                            super(color, filled);
                            this.radius = radius;
                        }

                        public double getRadius() {
                            return radius;
                        }

                        public void setRadius(double radius) {
                            this.radius = radius;
                        }

                        public double getArea() {
                            return radius * radius * Math.PI;
                        }

                        public double getPerimeter() {
                            return 2 * radius * Math.PI;
                        }

                        @Override
                        public String toString() {
                            return "A Circle with radius="
                                    + getRadius()
                                    + ", which is a subclass of "
                                    + super.toString();
                        }
                    }
                </code></pre>

                    <p>Chương trình để kiểm thử</p>
                    <pre><code class="language-java">
                        public class CircleTest {
                            public static void main(String[] args) {
                                Circle circle = new Circle();
                                System.out.println(circle);

                                circle = new Circle(3.5);
                                System.out.println(circle);

                                circle = new Circle(3.5, "indigo", false);
                                System.out.println(circle);
                            }
                        }
                <p>Quan sát kết quả:</p>
                     <img src="${pageContext.request.contextPath}/course/module2/session6/img/img-p13.png"
                          style="width: 70%;">
                </code></pre>
                    <p>Bước 4: Lớp Rectangle và mã kiểm thử</p>
                    <p>Lớp Rectangle</p>
                    <pre><code class="language-java">
                        public class Rectangle extends Shape {
                            private double width = 1.0;
                            private double length = 1.0;

                            public Rectangle() {
                            }

                            public Rectangle(double width, double length) {
                                this.width = width;
                                this.length = length;
                            }

                            public Rectangle(double width, double length, String color, boolean filled) {
                                super(color, filled);
                                this.width = width;
                                this.length = length;
                            }

                            public double getWidth() {
                                return width;
                            }

                            public void setWidth(double width) {
                                this.width = width;
                            }

                            public double getLength() {
                                return length;
                            }

                            public void setLength(double length) {
                                this.length = length;
                            }

                            public double getArea() {
                                return width * this.length;
                            }

                            public double getPerimeter() {
                                return 2 * (width + this.length);
                            }

                            @Override
                            public String toString() {
                                return "A Rectangle with width="
                                        + getWidth()
                                        + " and length="
                                        + getLength()
                                        + ", which is a subclass of "
                                        + super.toString();
                            }
                        }
                      </code></pre>
                    <p>Chương trình để kiểm thử</p>
                    <pre><code class="language-java">
                        public class RectangleTest {
                            public static void main(String[] args) {
                                Rectangle rectangle = new Rectangle();
                                System.out.println(rectangle);

                                rectangle = new Rectangle(2.3, 5.8);
                                System.out.println(rectangle);

                                rectangle = new Rectangle(2.5, 3.8, "orange", true);
                                System.out.println(rectangle);
                            }
                        }

                </code></pre>

                    <p>Quan sát kết quả:</p>
                    <img src="${pageContext.request.contextPath}/course/module2/session6/img/img-p14.png"
                         style="width: 70%;">
                    <p>Bước 5: Lớp Square và mã kiểm thử</p>
                    <p>Lớp Square</p>
                    <pre><code class="language-java">
                        public class Square extends Rectangle {
                            public Square() {
                            }

                            public Square(double side) {
                                super(side, side);
                            }

                            public Square(double side, String color, boolean filled) {
                                super(side, side, color, filled);
                            }

                            public double getSide() {
                                return getWidth();
                            }

                            public void setSide(double side) {
                                setWidth(side);
                                setLength(side);
                            }

                            @Override
                            public void setWidth(double width) {
                                setSide(width);
                            }

                            @Override
                            public void setLength(double length) {
                                setSide(length);
                            }

                            @Override
                            public String toString() {
                                return "A Square with side="
                                        + getSide()
                                        + ", which is a subclass of "
                                        + super.toString();
                            }
                        }

                </code></pre>
                    <p>Chương trình để kiểm thử</p>
                    <pre><code class="language-java">
                        public class SquareTest {
                            public static void main(String[] args) {
                                Square square = new Square();
                                System.out.println(square);

                                square = new Square(2.3);
                                System.out.println(square);

                                square = new Square(5.8, "yellow", true);
                                System.out.println(square);
                            }
                        }
                </code></pre>
                <p> Quan sát kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session6/img/img-p15.png"
                         style="width: 70%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
