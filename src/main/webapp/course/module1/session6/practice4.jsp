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
                <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">6. Cấu trúc điều kiện</a>
                <h4>[Thực hành] Luyện tập với cấu trúc switch-case</h4>

                <h5>Mục tiêu</h5>

                <p>Luyện tập sử dụng cấu trúc switch...case.</p>

                <h5>Mô tả</h5>

                <h6>Bài 1: Viết lại cấu trúc if sau thành cấu trúc switch</h6>
                <pre><code class="language-javascript language-markup">
                    if (browser == 'Edge') {
                        alert("You've got the Edge!");
                    } else if (browser == 'Chrome' || browser == 'Firefox'
                              || browser == 'Safari' || browser == 'Opera') {
                        alert('Okay we support these browsers too');
                    } else {
                        alert('We hope that this page looks ok!');
                    }
                </code></pre>
                <p>Hướng dẫn </p>
                <pre><code class="language-javascript language-markup">
                    switch (browser) {
                        case 'Edge':
                            alert("You've got the Edge!");
                            break;
                        case 'Chrome':
                        case 'Firefox':
                        case 'Safari':
                        case 'Opera':
                            alert('Okay we support these browsers too');
                            break;
                        default:
                            alert('We hope that this page looks ok!');
                    }
                </code></pre>

                <h6>Bài 2: Viết lại cấu trúc if sau thành cấu trúc switch</h6>
                <pre><code class="language-javascript language-markup">
                    let a = prompt('a?', '');
                    if (a == 0) {
                        alert(0);
                    }
                    if (a == 1) {
                        alert(1);
                    }
                    if (a == 2 || a == 3) {
                        alert('2,3');
                    }
                </code></pre>
                <p>Hướng dẫn</p>
                <pre><code class="language-javascript language-markup">
                    let a = prompt('a?', '');
                    switch (a) {
                        case 0:
                            alert(0);
                            break;
                        case 1:
                            alert(1);
                            break;
                        case 2:
                        case 3:
                            alert('2,3');
                            break;
                    }
                </code></pre>

                <h6>Bài 3: Sử dụng cấu trúc if…else, nhập vào một số, kiểm tra giá trị của số nhập vào</h6>
                <p>•	Nếu số đó lớn hơn 0 hiển thị 1 </p>
                <p>•	Còn lại nếu số đó nhỏ hơn 0 thì hiển thị -1</p>
                <p>•	Còn lại hiển thị 0</p>
                <h6>Hướng dẫn </h6>
                <p>Bước 1: Tạo file sign.html</p>
                <p>Bước 2: Khai báo biến value nhận giá trị đầu vào từ hộp thoại, mặc định không nhập gì value = 0</p>
                <pre><code class="language-javascript language-markup">
                    let value = prompt('Type a number', 0);
                </code></pre>
                <p> Bước 3: Viết khối if…else..if</p>
                <pre><code class="language-javascript language-markup">
                    if (value > 0) {
                        alert(1);
                    } else if (value < 0) {
                        alert(-1);
                    } else {
                        alert(0);
                    }

                </code></pre>
                <h6>Bước 4: Thực thi chương trình. Nhập giá trị 0, -5, 5. Quan sát kết quả nhận được</h6>

            </div>
        </div>
    </div>
</div>

</body>
</html>
