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
                <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Mảng và phương thức</a>
                <h4>[Thực hành] Tìm giá trị trong mảng </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thực hiện thao tác duyệt mảng.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép tìm vị trí của một phần tử trong mảng.</p>
                <p>Ứng dụng có sẵn một danh sách tên của sinh viên, cho phép người dùng nhập vào một tên sinh viên, sau đó hiển thị vị trí của sinh viên đó trong danh sách (nếu tìm thấy) hoặc là thông báo không tìm thấy.</p>

                <h5>Hướng dẫn</h5>
                <p> <b>Bước 1:</b> Tạo mới dự án</p>
                <p>Đầu tiên chúng ta sẽ khởi động ứng dụng IntelIJ sau đó chọn New Project</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p21.png" style="width: 71%;">
                <p>Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p22.png" style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p23.png" style="width: 40%;">

                <p><b>Bước 2:</b> Tạo lớp StudentArray</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p24.png" style="width: 40%;">

                <p>Tạo mảng chứa danh sách tên sinh viên:</p>
                <pre><code class="language-javascript language-markup">
                    String[] students = {"Christian", "Michael", "Camila", "Sienna", "Tanya",
                                         "Connor", "Zachariah", "Mallory", "Zoe", "Emily"};
                </code></pre>

                <p>Khai báo biến lưu tên tìm kiếm và  gán với giá trị nhập vào</p>
                <pre><code class="language-javascript language-markup">
                    Scanner scanner = new Scanner(System.in);
                    System.out.print("Enter a name’s student:");
                    String input_name = scanner.nextLine();

                </code></pre>

                <p>Duyệt mảng sinh viên đã khai báo ở trên, tìm phần tử có giá trị bằng với tên đã nhập vào.</p>
                <pre><code class="language-javascript language-markup">
                    boolean isExist = false;
                    for (int i = 0; i < students.length; i++) {
                        if (students[i].equals(input_name)) {
                            System.out.println("Position of the students in the list " + input_name + " is: " + i);
                            isExist = true;
                            break;
                        }
                    }
                    if (!isExist) {
                        System.out.println("Not found" + input_name + " in the list.");
                    }
                </code></pre>

                <p><b>Bước 3:</b>Kết quả hiển thị trong cửa sổ output như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p25.png" style="width: 50%;">
            </div>
        </div>
    </div>
</div>


</body>
</html>
