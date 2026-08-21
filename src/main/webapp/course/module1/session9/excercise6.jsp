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
            <a href="${pageContext.request.contextPath}/course/module1/session9/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 9. Hàm trong javascript</a>

            <h4>[*Bài tập] Kiểm tra từ đối xứng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng phương thức đệ quy.</p>

            <h5>Mô tả</h5>
            <p>Xây dựng chương trình sử dụng đệ quy để kiểm tra một từ có phải là từ đối xứng không.</p>
            <p>  Phương thức kiểm tra chuỗi đối xứng có nguyên mẫu như sau:</p>
            <p>function isPalindrome(s) ;</p>
            <p>Phương thức isPalindrome() trả về true nếu chuỗi truyền vào là chuỗi đối xứng. Còn lại trả về false.</p>
            <h5>Hướng dẫn</h5>
            <p>Một chuỗi palindrome là một từ được đọc theo thứ tự xuôi, ngược đều giống nhau.</p>
            <p>Ví dụ, rotor và redder là các chuỗi palindrome, nhưng motor thì không phải.</p>
            <p>Kiểm tra một chuỗi là một palindrome được chia thành hai bài toán con</p>
            <p>(1) Kiểm tra xem ký tự đầu tiên và ký tự cuối cùng của chuỗi có bằng nhau.</p>
            <p>(2) Bỏ qua hai ký tự đầu và cuối, kiểm tra xem phần còn lại của chuỗi con là một palindrome.</p>
            <p>Bài toán con thứ hai (2) giống như vấn đề ban đầu nhưng nhỏ hơn về kích thước.</p>


        </div>
    </div>
</div>
</body>
</html>
