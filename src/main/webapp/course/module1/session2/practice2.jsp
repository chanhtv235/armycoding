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
                <a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=detail" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Git và html</a>
                <h4>[Thực hành] Tạo dự án mới trên GitHub</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thao tác tạo dự án mới trên GitHub.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập thao tác quan trọng khi làm việc với GitHub đó là tạo một dự án
                    mới.</p>


                <h5>Hướng dẫn</h5>
                <p>Trong phần hướng dẫn này, chúng ta sẽ tạo một dự án mới trên GitHub và bắt đầu đưa mã nguồn lên đó.
                    Các bước thực hiện như sau:</p>
                <p>1. Đi đến trang: https://github.com và login bằng tài khoản đã đăng ký</p>
                <p>2. Nhấn vào mục "New repository" để bắt đầu tạo một Repository mới:</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p21.png" style="width: 70%;">
                <br>
                <br>
                <p>3. Trong màn hình tạo Repository mới, chúng ta điền tên của dự án mới vào. Chẳng hạn chúng ta đặt tên
                    dự án mới là "sbc-module1". Sau đó nhấn và nút "Create repository".</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p22.png" style="width: 50%;">
                <br>
                <br>
                <p>Kết quả sẽ được một Repository mới. Giao diện ban đầu của Repository này chứa các hướng dẫn cần thiết
                    để làm việc với nó:</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p23.png" style="width: 70%;">
                <br>
                <br>
                <p>4. Sau khi đã tạo được Remote Repository trên GitHub, bây giờ chúng ta vào máy tính (tới vị trí cần
                    tạo Local Repository) và đồng bộ nó tới Remote Repository trên.</p>
                <p>Chúng ta sẽ tạo một thư mục mới trên máy tính của mình, có thể đặt tên bất kỳ. Chẳng hạn chúng ta có
                    thể đặt tên thưc mục là "sbc-module1" (có thể giống hoặc không giống với tên của Repository trên
                    github).</p>
                <p>5. Di chuyển vào trong thư mục " sbc-module1" vừa tạo, mở “Git Bash Here” và sử dụng lệnh git init để
                    khởi tạo Repository mới.</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p24.png" style="width: 70%;">
                <br>
                <br>
                <p>6. Tiếp theo, sử dụng lệnh git remote add origin để kết nối tới Remote Repository (chú ý sử dụng dúng
                    đường dẫn của Repository mà bạn vừa tạo):
                </p>
                <pre><code class="language-javascript language-markup">
                  git remote add origin https://github.com/chanhtv235/sbc-module1.git
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p25.png" style="width: 70%;">
                <br>
                <br>
                <p>Như vậy là Local Repository và Remote Repository đã được liên kết với nhau. Bây giờ chúng ta có thể
                    bắt đầu làm việc trên dự án của mình.</p>
                <p>7. Trong thư mục "sbc-module1", chúng ta tạo một file mới có tên là "README.md".
                    Bằng câu lệnh:
                </p>
                <pre><code class="language-javascript language-markup">
                 echo "# sbc-module1" >> README.md
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p26.png" style="width: 70%;">
                <br>
                <br>
                <p>Đây là file dùng để chứa mô tả về dự án này, hầu hết tất cả các Repository đều có file này để giới
                    thiệu cho người khác biết về mục đích của dự án. Chúng ta có thể viết một nội dung bất kỳ vào file
                    này.( có thể mở file này bằng phần mềm Notepad</p>
                <p>8. Sử dụng câu lệnh git add README.md vào trong chỉ mục của Git.</p>

                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p27.png" style="width: 70%;">
                <br>
                <br>
                <p>9. Sử dụng câu lệnh git commit để lưu lại các thay đổi.</p>
                <pre><code class="language-javascript language-markup">
                  git commit -m "Add README"
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p28.png" style="width: 70%;">
                <br>
                <br>
                <p>Trong câu lệnh trên, tuỳ chọn -m được sử dụng để ghi một "message" đánh dấu cho thay đổi vừa rồi. Nó
                    giải thích rằng chúng ta vừa thêm một file README mới. Chúng ta cần ghi các thông điệp có ý nghĩa để
                    dễ dàng cho việc hiểu và cộng tác nhóm sau này.</p>
                <p>10. Sử dụng câu lệnh git push để đẩy các thay đổi ở Local Repository lên trên Remote Repository.</p>
                <p>git push origin master</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p29.png" style="width: 70%;">
                <br>
                <br>
                <p>Như vậy là chúng ta đã hoàn thành một luồng làm việc cơ bản với GitHub. Local Repository và Remote
                    Repository đã được đồng bộ với nhau.</p>
                <p>Thử quay lại trang dự án ở trên GitHub thì chúng ta sẽ thấy một giao diện như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p210.png" style="width: 70%;">
                <br>
                <br>
                <p>11. Hãy lặp lại các bước từ 7 đến 10 để tạo các file mới.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
