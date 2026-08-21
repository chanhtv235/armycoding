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
                <h4>[Thực hành] Hiển thị thời gian của hệ thống</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập các bước để tạo và khởi chạy một ứng dụng Java.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ tạo một ứng dụng Java để hiển thị thời gian hiện tại của máy tính.</p>

                <h5>Hướng dẫn</h5>
                <p> Bước 1: Tạo mới dự án</p>
                <p>Đầu tiên chúng ta sẽ khởi động ứng dụng IntelIJ sau đó chọn New Project</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p11.png" style="width: 70%;">
                <p>Trong cửa sổ tiếp theo, đặt tên dự án là "system-time", chọn nơi lưu trữ dự án trên ổ cứng của bạn, chọn
                ngôn ngữ là "java", chọn jdk là "1.8". Sau đó nhấn "create".</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p12.png" style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p13.png" style="width: 70%;">

                <p>Bước 2: Tạo lớp SystemTime</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p14.png" style="width: 70%;">

                <p>Sau đó đặt tên class là SystemTime.</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p15.png" style="width: 70%;">
                <p>Bước 3: Tạo hàm main() ở trong lớp SystemTime</p>

                <pre><code class="language-javascript language-markup">
                        public class SystemTime {
                            public static void main(String[] args) {

                            }
                        }

                </code></pre>

                <p>Lưu ý: Có thể sử dụng cách gõ tắt: psvm + TAB để tạo nhanh hàm main().</p>
                <p> Bước 4: Nhập đoạn mã sau vào hàm main() để hiển thị thời gian của máy tính:</p>
                <pre><code class="language-javascript language-markup">
                    public class SystemTime {
                        public static void main(String[] args) {
                            Date now = new Date(); // Lấy thời gian hiện tại

                            System.out.println("Now is: " + now);
                        }
                    }
                </code></pre>

                <p>Lưu ý: Có thể sử dụng cách gõ nhanh: sout + TAB để gọi nhanh phương thức System.out.println().</p>
                <p> Bước 5: Chạy ứng dụng và xem kết quả</p>
                <p>Để chạy ứng dụng, nhấn vào biểu tượng sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p16.png" style="width: 70%;">


                <p> Kết quả hiển thị trong cửa sổ output như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session1/img/img-p17.png" style="width: 70%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
