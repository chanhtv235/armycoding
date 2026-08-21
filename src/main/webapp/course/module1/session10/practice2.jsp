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
                <a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Lập trình OOP</a>
                <h4>[Thực hành] Xây dựng lớp Hình Tròn</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo và sử dụng lớp</p>

                <h5>Mô tả</h5>
                <p>Hãy xây dựng lớp hình tròn theo sơ đồ lớp sau:</p>
                <img src="img/img-p2.png" style="width: 50%;">
                <h6>Lớp Circle (hình tròn) gồm:</h6>
                <p>1.	Thuộc tính:</p>
                <p>-	bán kính (radius) sẽ nhận vào giá trị dạng số thực</p>
                <p>-	màu sắc (color) sẽ nhận vào giá trị dạng chuỗi.</p>
                <p>2.	Phương thức:</p>
                <p>-	Circle() là phương thức khởi tạo để tạo đối tượng không tham số.</p>
                <p>-	getRadius() là phương thức trả về bán kính của hình tròn</p>
                <p>-	getArea() là phương thức trả về diện tích hình tròn theo công thức S = Math.PI * radius * radius</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b>: Tạo lớp Circle với phương thức khởi tạo có 1 tham số truyền vào</p>
                <pre><code class="language-javascript language-markup">
                    class Circle{
                        constructor(radius) {
                            this.radius = radius;
                        }
                    }
                </code></pre>
                <p><b>Bước 2:</b> Xây dựng phương thức trả về bán kính của hình tròn</p>
                <pre><code class="language-javascript language-markup">
                    getRadius() {
                        return radius;
                    }
                </code></pre>
                <p><b>Bước 3:</b>Xây dựng phương thức tính diện tích hình tròn</p>
                <pre><code class="language-javascript language-markup">
                    getArea() {
                         return Math.PI * radius * radius;
                    }
                </code></pre>
                <p><b>Bước 4:</b> Sử dụng lớp vừa tạo. Tạo đối tượng hình tròn với bán kính là 2</p>
                <pre><code class="language-javascript language-markup">
                    let circle = new Circle(2);
                </code></pre>
                <p><b>Bước 5:</b> Truy cập phương thức của lớp hình tròn vừa tạo và gán cho các biến radius, area</p>
                <pre><code class="language-javascript language-markup">
                    let radius = circle.getRadius(); // 2
                    let area = circle.getArea(); // 12.566370614359172
                </code></pre>
                <p><b>Bước 6:</b>Hiển thị bán kính và diện tích</p>
                <pre><code class="language-javascript language-markup">
                    alert("radius: " + radius + "; area: " + area);
                </code></pre>
                <p><b>Bước 7:</b> Chạy chương trình. Quan sát kết quả.</p>
                <p>Tạo đối tượng Hình tròn khác, với bán kính có giá trị khác nhau. Thực hiện lại các bước 4, 5, 6, 7 để xem kết quả trả về.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
