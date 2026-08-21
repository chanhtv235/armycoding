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
                <h4>[Thực hành] Tìm giá trị lớn nhất trong mảng </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thao tác duyệt mảng.</p>

                <h5>Mô tả</h5>
                 <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép xác định phần tử có giá trị lớn nhất trong mảng.</p>
                 <p>Ứng dụng cho phép người dùng lần lượt nhập vào giá trị tài sản của các tỷ phú thế giới (đơn vị tỉ đô), tối đa cho phép nhập 20 giá trị, sau đó hiển thị giá trị tài sản lớn nhất và vị trí của nó trong danh sách.</p>

                <h5>Hướng dẫn</h5>
                <p> <b>Bước 1:</b> Tạo mới dự án</p>
                <p>Đầu tiên chúng ta sẽ khởi động ứng dụng IntelIJ sau đó chọn New Project</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p31.png" style="width: 71%;">
                <p>Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p32.png" style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p33.png" style="width: 40%;">

                <p><b>Bước 2:</b> Tạo lớp NumberArray</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p34.png" style="width: 40%;">

                <p>Khai báo các biến, nhập và kiểm tra kích thước mảng</p>
                <pre><code class="language-javascript language-markup">
                    int size;
                    int[] array;
                    Scanner scanner = new Scanner(System.in);
                    do {
                        System.out.print("Enter a size:");
                        size = scanner.nextInt();
                        if (size > 20)
                            System.out.println("Size should not exceed 20");
                    } while (size > 20);

                </code></pre>
                <p>Nhập giá trị cho các phần tử của mảng</p>
                <pre><code class="language-javascript language-markup">
                    array = new int[size];
                    int i = 0;
                    while (i < array.length) {
                        System.out.print("Enter element" + (i + 1) + " : ");
                        array[i] = scanner.nextInt();
                        i++;
                    }

                </code></pre>
                <p>In ra danh sách tài sản đã nhập</p>
                <pre><code class="language-javascript language-markup">
                    System.out.print("Property list: ");
                    for (int j = 0; j < array.length; j++) {
                        System.out.print(array[j] + "\t");
                    }

                </code></pre>

                <p>Duyệt các phần tử trong mảng để tìm GTLN và vị trí</p>
                <pre><code class="language-javascript language-markup">
                    int max = array[0];
                    int index = 1;
                    for (int j = 0; j < array.length; j++) {
                        if (array[j] > max) {
                            max = array[j];
                            index = j + 1;
                        }
                    }
                    System.out.println("The largest property value in the list is " + max + " ,at position " + index);

                </code></pre>

                <p><b>Bước 3:</b>Thực thi chương trình và quan sát kết quả.</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p35.png" style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
