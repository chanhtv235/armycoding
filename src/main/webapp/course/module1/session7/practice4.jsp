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
                <a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Cấu trúc lặp</a>
                <h4>[Thực hành] Sử dụng vòng lặp lồng nhau</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp lồng nhau</p>
                <h5>Mô tả</h5>
                <p>Chương trình hiển thị bảng với dữ liệu như sau</p>
                <img src="img/img-p4.png" style="width: 50%;">
                <p>Hướng dẫn thực hiện</p>
                <p>Bước 1: Phân tích vòng lặp sử dụng trong bài toán</p>
                <p>Vòng lặp for ngoài dùng để in ra số dòng. Gồm 10 dòng. Do đó vòng lặp sẽ là:</p>
                <pre><code class="language-javascript language-markup">
                     for (i = 1; i <= 10; i++)
                </code></pre>

                <p>Vòng lặp trong in ra giá trị từng cột trên mỗi dòng. Gồm 10 cột cho mỗi dòng.
                Do đó vòng lặp sẽ là:</p>
                <pre><code class="language-javascript language-markup">
                    for (j = 1; j <= 10; j++)
                </code></pre>

                <p>Mỗi cột có giá trị bằng i * j.</p>
                <p>Bước 2: Viết mã sử dụng vòng lặp for lồng nhau</p>
                <pre><code class="language-javascript language-markup">
                    let sout;
                    sout = "<table border='1' width='300' cellspacing='0' cellpadding='3'>"
                    for (i = 1; i <= 10; i++) {
                        sout = sout + "<tr>";
                        for (j = 1; j <= 10; j++) {
                            sout = sout + "<td>" + i * j + "</td>";
                        }
                        sout = sout + "</tr>";
                    }
                    sout = sout + "</table>";
                    document.write(sout);
                </code></pre>
                <p>Bước 3: Thực thi chương trình. Quan sát kết quả.</p>
                <p>Bước 4: Thay đổi mã trên với vòng lặp while lồng nhau</p>
                <pre><code class="language-javascript language-markup">
                    let sout, i, j;
                    sout = "<table border='1' width='300' cellspacing='0' cellpadding='3'>";
                    i = j = 1;
                    while (i <= 10) {
                        sout = sout + "<tr>";
                        while (j <= 10) {
                            sout = sout + "<td>" + i * j + "</td>";
                            j++;
                        }
                        sout = sout + "</tr>";
                        j = 1;
                        i++;
                    }
                    sout = sout + "</table>";
                    document.write(sout);
                </code></pre>
                <p>Bước 5: Thực thi chương trình. Quan sát kết quả.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
