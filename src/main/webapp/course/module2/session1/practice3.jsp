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
                <h4>[Thực hành] Sử dụng toán tử </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng toán tử và biểu thức.</p>

                <h5>Mô tả</h5>
                <p>Viết một ứng dụng để tính diện tích của hình chữ nhật dựa vào chiều rộng và chiều cao được nhập vào.</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b>  Tạo mới dự án</p>
                <p>Để tạo một dự án mới trong IntelliJ, chọn "New Project".</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p31.png" style="width: 70%;">

                <p>Đặt tên dự án là "Operator-Expression", chọn vị trí lưu trữ dự án trên ổ cứng, chọn ngôn ngữ, chọn jdk. Sau đó nhấn "Create":</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p32.png" style="width: 70%;">

                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p33.png" style="width: 70%;">

                <p><b>Bước 2:</b> Tạo lớp Rectangle:</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p34.png" style="width: 70%;">

                <p>Đặt tên class là "Rectangle":</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p35.png" style="width: 50%;">

                <p>Trong lớp Rectangle, tạo hàm main(). Sau đó khai báo 2 biến width, height lần lượt lưu giá trị của chiều rộng và chiều cao hình chữ nhật.</p>
                <pre><code class="language-java language-markup">
                    public class Rectangle {
                        public static void main(String[] args) {
                            float width;
                            float height;
                        }
                    }
                </code></pre>
                <p>Tiếp theo chúng ta sẽ khai báo đối tượng Scanner và sử dụng đối tượng này để có thể nhập dữ liệu từ bàn phím</p>
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
                <p>Tính diện tích của hình chữ nhật và hiển thị ra màn hình.</p>

                <pre><code class="language-java language-markup">
                        float area = width * height;
                        System.out.println("Area is: " + area);

                </code></pre>

                <p><b>Bước 3:</b> Chạy chương trình.</p>
                <p>Kết quả hiển thị trong cửa sổ output như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p36.png" style="width: 70%;">


            </div>
        </div>
    </div>
</div>


</body>
</html>
