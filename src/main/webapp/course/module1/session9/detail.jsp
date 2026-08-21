<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container">
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/overview.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">[Module 1]- Lập trình căn bản</a>
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>Hàm trong Javascript</h5>
            <ul style="list-style-type: none">
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=9&fileName=read1">[Bài đọc] Hàm (function) trong JavaScript
                </a></li>
                <hr>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course/module1/session9/practice1.jsp">[Thực hành] Tạo và gọi hàm</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course/module1/session9/practice2.jsp">[Thực hành] Chuyển đổi nhiệt độ</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course/module1/session9/practice3.jsp">[Thực hành] Tìm giá trị nhỏ nhất của mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session9/excercise1.jsp">[Bài tập] Hàm kiểm tra số nguyên tố</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session9/excercise2.jsp">[Bài tập] Chuyển đổi giữa feet và meters</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session9/excercise3.jsp">[Bài tập] Luyện tập tạo và sử dụng hàm 01</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session9/excercise4.jsp">[Bài tập] Luyện tập tạo và sử dụng hàm 02</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session9/excercise5.jsp">[*Bài tập] Ứng dụng quản lý sản phẩm sử dụng hàm</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session9/excercise6.jsp">[*Bài tập] Kiểm tra từ đối xứng</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
