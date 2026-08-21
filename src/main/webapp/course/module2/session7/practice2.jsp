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
                <a href="/course/module2/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Abstract class và interface</a>
                <h4>[Thực hành] triển khai interface 'Comparable' cho các lớp hình học </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thiết kế và triển khai interface</p>

                <h5>Mô tả</h5>
                <p>Sử dụng interface Comparable và triển khai phương thức compareTo() để hỗ trợ so sánh “hơn, kém, bằng” các đối tượng của các lớp hình học đã được viết ở bài trước. Trong Java, phương thức java.util.Arrays.sort() sử dụng compareTo() để triển khai, do đó, viết một chương trình sử dụng phương thức sort() để kiểm thử compareTo().</p>

                <h5>Hướng dẫn</h5>

                <p> Bước 1: Mở lại dự án của bài <a href="/course?module=2&session=6&fileName=practice1">[Thực hành] Hệ các đối tượng hình học trong bài "Kế thừa"</a>.</p>

                <p>Bước 2: : Tạo một lớp ComparableCircle kế thừa lớp Circle, triển khai interface Comparable:</p>

                <pre><code class="language-java">
                        public class ComparableCircle extends Circle
                                implements Comparable< ComparableCircle> {

                            public ComparableCircle() {
                            }

                            public ComparableCircle(double radius) {
                                super(radius);
                            }

                            public ComparableCircle(double radius, String color, boolean filled) {
                                super(radius, color, filled);
                            }

                            @Override
                            public int compareTo(ComparableCircle o) {
                                if (getRadius() > o.getRadius()) return 1;
                                else if (getRadius() < o.getRadius()) return -1;
                                else return 0;
                            }
                        }

                </code></pre>

                <p>Bước 3: Tạo chương trình để kiểm thử ComparableCircle:</p>
                <pre><code class="language-java">
                        import java.util.Arrays;

                        public class ComparableCircleTest {
                            public static void main(String[] args) {
                                ComparableCircle[] circles = new ComparableCircle[3];
                                circles[0] = new ComparableCircle(3.6);
                                circles[1] = new ComparableCircle();
                                circles[2] = new ComparableCircle(3.5, "indigo", false);

                                System.out.println("Pre-sorted:");
                                for (ComparableCircle circle : circles) {
                                    System.out.println(circle);
                                }

                                Arrays.sort(circles);

                                System.out.println("After-sorted:");
                                for (ComparableCircle circle : circles) {
                                    System.out.println(circle);
                                }
                            }
                        }

                </code></pre>
                <p>Kết quả như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p21.png"
                     style="width: 70%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
