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
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 8.Cấu trúc mảng</a>
            <h4>[Bài tập] Luyện tập mảng 02</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập thao tác với mảng hai chiều, một chiều</p>

            <h5>Mô tả</h5>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo mảng 2 chiều, gồm một bộ các phần tử có sẵn, in ra các phần tử
                trong mảng. Chú ý: Sử dụng vòng lặp for lồng nhau</p>
            <p>Ví dụ mảng sau:</p>
            <pre><code class="language-javascript language-markup">
                    let a = [
                            [1, 2, 1, 24],
                            [8, 11, 9, 4],
                            [7, 0, 7, 27],
                            [7, 4, 28, 14],
                            [3, 10, 26, 7]
                            ];
                </code></pre>
            <pre><code class="language-javascript language-markup">
                 - Kết quả mẫu
                    "row 0"
                    " 1"
                    " 2"
                    " 1"
                    " 24"
                    "row 1"
            </code></pre>

            <span>Xem hướng dẫn tại:</span>
            <a href="https://www.w3resource.com/javascript-exercises/javascript-array-exercise-10.php">Link</a>
            <p><b>Bài 2- </b> Viết một chương trình để in các ký tự trong một mảng theo thứ tự đảo ngược. Ví dụ, nếu một
                mảng chứa các ký tự [ 'c', 's', 'c', '2', '6', '1' ] sau khi thực hiện đảo ngược sẽ là "162csc"</p>
            <p><b>Bài 3- </b> Viết một chương trình khai báo một mảng ký tự và kích thước của mảng. Chương trình này đếm
                số ký tự số trong mảng.</p>
            <p><b>Bài 4- </b> Viết một chương trình để đếm số từ trong một chuỗi</p>
            <p><b>Bài 5- </b> Viết một chương trình nhập vào 2 chuỗi, sau đó kiểm tra xem hai chuỗi có giống nhau hay
                không.</p>
            <p><b>Bài 6- </b> Viết chương trình nhập vào một mảng ký tự, tìm tất cả các ký tự trong mảng là (-) và thay
                thế các ký tự này bởi ký tự ( _ )</p>

        </div>
    </div>
</div>
</body>
</html>
