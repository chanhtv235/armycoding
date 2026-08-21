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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Thiết kế Layout</a>
                <div role="main" id="yui_3_17_2_1_1714316808487_21"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714316808487_20">[Bài tập] Tạo layout với các thẻ HTML5 và CSS</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Luyện tập việc thiết kế bố cục cho các trang web.</p>
                            <h2>Nội dung</h2>
                            <p>Trong phần này, chúng ta sẽ sử dụng các thẻ HTML5 và CSS để thiết kế một trang web có bố
                                cục cơ bản tương tự như sau:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50986/mod_assign/intro/img_sem_elements.gif"
                                     width="219" height="258"></p>
                            <h2>Hướng dẫn</h2>
                            <p>Tương tự như khi tạo bố cục sử dụng div và các thuộc tính css, chúng ta có thể sử dụng
                                các thẻ của HTML5 để tạo bố cục cho trang web. Đây là cách làm được khuyến khích và sử
                                dụng phổ biến hiện nay.</p>
                            <p>Các thẻ HTML5 được sử dụng để tạo layout trong bài này bao gồm:&nbsp;header, nav,
                                section, article, aside và footer.</p>
                            <p>Mã nguồn tham khảo:</p>
                            <script src="https://jsfiddle.net/khacnhat/9Lkqcust/1/embed/html,css,result/"
                                    type="text/javascript"></script>
                            <iframe src="https://jsfiddle.net/9Lkqcust/1/embedded/html,css,result/?username=khacnhat"
                                    id="JSFEMB_19841" width="100%" height="634.21875" frameborder="0"
                                    sandbox="allow-modals allow-forms allow-same-origin allow-scripts allow-popups allow-top-navigation-by-user-activation allow-downloads"
                                    allow="midi; geolocation; microphone; camera; display-capture; encrypted-media;"></iframe>
                    </div>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
