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
                <a href="/course/module4/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Validation</a>

                <h4>[Bài tập] Phát triển tính năng validate thông tin bài hát</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập triển khai cơ chế validate trong Spring MVC.</p>
                  <h5>Mô tả</h5>
                <p class="p1">-Trong phần này chúng ta sẽ phát triển tính năng validate thông tin bài hát trong ứng dụng nghe nhạc cá nhân.</p>
                <p class="p1">-Hãy tạo một web-app có chức năng:</p>
                <p class="p2">•	Thêm mới bài hát</p>
                <p class="p2">•	Cập nhật thông tin bài hát</p>
                <p class="p1">-Các thông tin của một bài hát bao gồm:</p>
                <p class="p2">•	Tên bài hát. Yêu cầu validate:</p>
                <p class="p3">o	Không được phép để trống</p>
                <p class="p3">o	Không vượt quá 800 ký tự</p>
                <p class="p3">o	Không chứa các kí tự đặc biệt như @ ; , . = - + , ….</p>
                <p class="p2">•	Nghệ sĩ thể hiện. Yêu cầu validate:</p>
                <p class="p3">o	Không được phép để trống</p>
                <p class="p3">o	Không quá 300 ký tự</p>
                <p class="p3">o	Không chứa các kí tự đặc biệt như @ ; , . = - + , ….</p>
                <p class="p2">•	Thể loại nhạc (nhập thông tin theo dạng text). Yêu cầu validate:</p>
                <p class="p2">o	Không được phép để trống</p>
                <p class="p2">o	Không vượt quá 1000 ký tự</p>
                <p class="p2">o	Ngoại trừ dấu phẩy “,” , các ký tự đặc biệt còn lại không được phép lưu vào DB.</p>
                <p class="p1">-Lưu ý: Không cần triển khai chức năng upload bài hát.</p>
            </div>
        </div>
    </div>

</body>
</html>
