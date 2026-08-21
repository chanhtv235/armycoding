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

                <a href="/course/module2/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Vòng lặp trong java</a>

                <h4>[Bài tập] Hiển thị các loại hình</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc lặp lồng nhau.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng hiển thị một menu cho phép người dùng lựa chọn
                    hiển
                    thị các hình. Menu gồm các lựa chọn như sau</p>
                <pre>
                    Menu:
                    1.	Print the rectangle
                    2.	Print the square triangle (The corner is square at 4 different angles:
                                               top-left, top-right, botton-left, botton-right)
                    3.	Print isosceles triangle
                    4.	Exit
                </pre>
                <p>Lưu ý: biểu diễn các hình có thể sử dụng ký hiệu * hoặc một ký hiệu khác.</p>

                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Sử dụng bài hướng dẫn in menu để in menu như trong phần mô tả.</p>
                <p><b>Bước 2:</b> In các loại hình</p>
                <p><b><i>1. In hình chữ nhật</i></b></p>
                <pre><b>
                    * * * * * * *
                    * * * * * * *
                    * * * * * * *
                </b></pre>
                <p>Biết chiều dài, chiều rộng. Sử dụng 2 vòng lặp lồng nhau. Vòng lặp ngoài hiển thị số dòng (chiều
                    dài), vòng lặp
                    trong hiển thị số cột (chiều rộng)</p>
                <p><b><i>2. In hình tam giác vuông, có cạnh góc vuông ở botton-left</i></b></p>
                <pre><b>
                    *
                    * *
                    * * *
                    * * * *
                    * * * * *
                    </b></pre>

                <p> Sử dụng 2 vòng lặp. Vòng lặp ngoài hiển thị số dòng (chiều dài), vòng lặp trong hiển thị số lượng *
                    có trong mỗi
                    dòng.</p>
                <pre>
                for(int i=1; i <= 5; i++)
                    for(int j=1; j < i; j++)
                </pre>

                <p><b><i>3. In hình tam giác vuông, có cạnh góc vuông ở top-left</i></b></p>
                <pre><b>
                    * * * * *
                    * * * *
                    * * *
                    * *
                    *
                </b></pre>

                <p>Sử dụng 2 vòng lặp. Vòng lặp ngoài hiển thị số dòng (chiều dài), vòng lặp trong hiển thị số lượng *
                    có trong mỗi
                    dòng.</p>
                <pre>
                    for(int i=7;i>=1;i--)
                    for(int j=1;j<=i;j++)
                </pre>
                <p><b><i>4. In hình tam giác cân.</i></b></p>
                <p>Sử dụng 2 vòng lặp bên trong 1 vòng lặp. Vòng lặp ngoài hiểu thị số dòng (chiều dài), 2 vòng lặp bên
                    trong in ra
                    dấu <b>*</b></p>
            </div>
        </div>
    </div>

</body>
</html>
