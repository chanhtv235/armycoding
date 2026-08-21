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
                <h4>[Thực hành] Triển khai interface 'Comparator' để so sánh cách lớp hình học </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thiết kế và triển khai interface</p>

                <h5>Mô tả</h5>
                <p>Ở bài thực hành trước đã tiến hành cho các lớp hình học triển khai interface Comparable để hỗ trợ so sánh “hơn, kém, bằng”.</p>
                <p>Phương án này không phù hợp khi mà vì lý do gì đó, không thể thay đổi các lớp đã có sẵn, cũng như không thể tùy ý tạo ra và sử dụng các lớp kế thừa mới.</p>
                <p>Trong trường hợp đó, ta có thể sử dụng những đối tượng thuộc những lớp mà có triển khai interface Comparator và phương thức compare() của nó, để phục phụ việc so sánh, như hướng dẫn dưới đây.</p>
                <p><b><i>(Gợi ý triển khai một Comparator có khả năng so sánh các Circle).Học viên tự triển khai Comparator cho các lớp hình học còn lại.</i></b></p>
                <h5>Hướng dẫn</h5>

                <p> Bước 1: Mở lại dự án của bài <a href="/course?module=2&session=6&fileName=practice1">[Thực hành] Hệ các đối tượng hình học</a>.</p>

                <p>Bước 2: : Tạo một lớp CircleComparator triển khai interface Comparator:</p>

                <pre><code class="language-java">
                        import java.util.Comparator;

                        public class CircleComparator implements Comparator< Circle> {

                            @Override
                            public int compare(Circle c1, Circle c2) {
                                if (c1.getRadius() > c2.getRadius()) return 1;
                                else if (c1.getRadius() < c2.getRadius()) return -1;
                                else return 0;
                            }
                        }


                </code></pre>

                <p>Bước 3: Tạo chương trình để kiểm thử CircleComparatorTest:</p>
                <pre><code class="language-java">
                        import java.util.Arrays;
                        import java.util.Comparator;

                        public class CircleComparatorTest {
                            public static void main(String[] args) {
                                Circle[] circles = new Circle[3];
                                circles[0] = new Circle(3.6);
                                circles[1] = new Circle();
                                circles[2] = new Circle(3.5, "indigo", false);

                                System.out.println("Pre-sorted:");
                                for (Circle circle : circles) {
                                    System.out.println(circle);
                                }

                                Comparator circleComparator = new CircleComparator();
                                Arrays.sort(circles, circleComparator);

                                System.out.println("After-sorted:");
                                for (Circle circle : circles) {
                                    System.out.println(circle);
                                }
                            }
                        }

                </code></pre>
                <p>Kết quả như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p31.png"
                     style="width: 70%;">
                
            </div>
        </div>
    </div>
</div>


</body>
</html>
