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
                <h4>[Thực hành] Khai báo và sử dụng biến</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập khai báo và sử dụng biến với các kiểu dữ liệu khác nhau.</p>

                <h5>Mô tả</h5>
                <p>Khai báo các biến sau và hiển thị giá trị của chúng ra màn hình:</p>
                <p>Biến i kiểu số nguyên, có giá trị là 10</p>
                <p>Biến f kiểu số thực, có giá trị là 20.5</p>
                <p>Biến d kiểu số thực lớn, có giá trị là 20.5</p>
                <p>Biến b kiểu logic, có giá trị là true</p>
                <p>Biến c kiểu ký tự, có giá trị là 'a'</p>
                <p>Biến s kiểu chuỗi, có giá trị là "Hà Nội".</p>


                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b>  Tạo mới dự án</p>
                <p>Để tạo một dự án mới trong IntelliJ, chọn "New Project".</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p21.png" style="width: 70%;">
                <p>Đặt tên dự án là "Variable-DataType", chọn vị trí lưu trữ dự án trên ổ cứng, chọn ngôn ngữ, chọn jdk. Sau đó nhấn "Create":</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p22.png" style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p23.png" style="width: 70%;">
                <p><b>Bước 2:</b> Tạo lớp VariableDataType</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p24.png" style="width: 70%;">

                <p>Đặt tên class là "VariableDataType":</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p25.png" style="width: 70%;">

                <p>Trong class "VariableDataType", chúng ta khai báo một hàm main() như sau:</p>
                <pre><code class="language-java language-markup">
                        public class VariableDataType {
                            public static void main(String[] args) {

                            }
                        }
                </code></pre>
                <p>Thêm các đoạn code sau vào trong hàm main:</p>
                <pre><code class="language-java language-markup">
                        public class VariableDataType {
                            public static void main(String[] args) {
                                int i = 10; // khai báo biến i là kiểu int có giá trị là 10
                                float f = 20.5f; // Khai báo biến f có kiểu là float có giá trị là 20.5
                                double d = 20.5; // Khai báo biến d có kiểu là double có giá trị là 20.5
                                boolean b = true; // Khai báo biến b là kiểu boolean có giá trị là true
                                char c = 'a'; // Khai báo biến c có kiểu là char có giá trị là kí tự a
                                String s = "Hà Nội"; //Khai báo biến s có kiểu là String có giá trị là chuỗi Hà Nội
                            }
                        }
                </code></pre>
                <p>Thêm vào các câu lệnh để hiển thị các giá trị ra màn hình:</p>
                <pre><code class="language-java language-markup">
                        System.out.println("i = " + i);
                        System.out.println("f = " + f);
                        System.out.println("d = " + d);
                        System.out.println("b = " + b);
                        System.out.println("c = " + c);
                        System.out.println("s = " + s);
                </code></pre>

                <p><b>Bước 3:</b> Chạy chương trình.</p>
                <p>Kết quả hiển thị trong cửa sổ output như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p26.png" style="width: 70%;">


            </div>
        </div>
    </div>
</div>


</body>
</html>
