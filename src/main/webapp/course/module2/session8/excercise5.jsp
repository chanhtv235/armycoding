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
                <a href="/course/module2/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Java collection framework</a>

                <h4>[Optional] [Bài tập] Kiểm tra chuỗi Palindrome sử dụng Queue</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Queue</p>

                <h5>Mô tả</h5>
                <p>Kiểm tra chuỗi Palindrome sử dụng Queue.</p>
                <p>Khái niệm: Một chuỗi được gọi là Palindrome nếu như đọc xuôi giống đọc ngược.</p>
                <p>Bài toán: Cho trước một chuỗi, kiểm tra xem chuỗi đó có phải là chuỗi palindrome hay không?</p>
                <p>Ví dụ về chuỗi palindrome: Able was I ere I saw Elba</p>

                <h5>Hướng dẫn</h5>
                <p>Giải pháp:</p>
                <p>Để tránh ảnh hưởng tới chuỗi ban đầu, đọc chuỗi nói trên vào stack và queue.</p>
                <p>So sánh từng phần tử của stack và queue, nếu giống nhau từng cặp thì đó là chuỗi Palindrome, ngược lại
                thì chuỗi trên không phải là chuỗi Palindrome.</p>


            </div>
        </div>
    </div>

</body>
</html>
