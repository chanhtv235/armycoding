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
                <a href="/course/module2/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">5.Static, access modifier</a>
                <h4>[Thực hành] Static Property </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Static Property</p>

                <h5>Mô tả</h5>
                <p>Giả sử chúng ta có một lớp Car với một số thuộc tính (biến thể hiện). Bất cứ khi nào các đối tượng
                    mới được khởi tạo từ lớp Car này, mỗi đối tượng mới sẽ có bản sao riêng biệt của các biến thể hiện
                    này.</p>
                <p>Tuy nhiên, giả sử chúng ta đang tìm kiếm một thuộc tính chứa số lượng đối tượng Xe được khởi tạo và
                    được chia sẻ trên tất cả các trường hợp để chúng ta có thể truy cập và tăng nó khi khởi tạo.</p>
                <h5>Hướng dẫn</h5>

                <p> Bước 1: Tạo dự án</p>
                <p>Khởi động Intellij, trong màn hình tiếp theo chọn "New Project".</p>
                <p> Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk.</p>

                <p>Bước 2: Xây dựng lớp Car</p>

                <p>Cấu trúc dự án như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session5/img/img-p21.png"
                     style="width: 30%;">
                <p>Trong lớp Car chúng ta khai báo thuộc tính static numberOfCars:</p>
                <pre><code class="language-java">
                    public class Car {
                        private String name;
                        private String engine;
                        public static int numberOfCars;
                        public Car(String name, String engine) {
                            this.name = name;
                            this.engine = engine;
                            numberOfCars++;
                        }
                        // getters and setters
                    }
                </code></pre>

                <p>Trong lớp Main, gọi thuộc tính static numberOfCars:</p>
                <pre><code class="language-java">
                        public class Main {
                            public static void main(String[] args) {
                                Car car1 = new Car("Mazda 3","Skyactiv 3");
                                System.out.println(Car.numberOfCars);
                                Car car2 = new Car("Mazda 6","Skyactiv 6");
                                System.out.println(Car.numberOfCars);
                            }
                        }
                </code></pre>
                <p>Trong Java, nếu một thuộc tính được khai báo là static, thì một bản sao của thuộc tính đó được tạo và
                    chia sẻ giữa tất cả các đối tượng của lớp đó. Không quan trọng chúng ta khởi tạo một lớp bao nhiêu
                    lần, sẽ luôn chỉ có một bản sao của thuộc tính tĩnh. Giá trị của thuộc tính tĩnh này sẽ được chia sẻ
                    trên tất cả các đối tượng của lớp.</p>
                <p> Bước 3: Chạy và quan sát kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session5/img/img-p22.png"
                     style="width: 30%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
