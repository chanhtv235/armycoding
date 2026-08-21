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
                <a href="/course/module2/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Exception trong java</a>
                <h4>[Thực hành] Debug ứng dụng Java</h4>

                <h5>Mục tiêu</h5>
                <p>Bài viết này hướng dẫn debug ứng dụng Java bằng Jetbrains IntelliJ.</p>

                <h5>Mô tả</h5>
                <p>Debug ám chỉ việc tìm và giải quyết các vấn đề trong chương trình mà làm cho chương trình hoạt động
                    không như mong muốn: không chạy được, chạy và bị crash, chạy không đúng chức năng được mô tả…</p>
                <p>Để đạt được mục tiêu đó có nhiều phương pháp, ghi thông số hoạt động ra console, ghi thông số hoạt
                    động ra file log, đọc và theo dõi bộ nhớ của chương trình, kiểm thử đơn vị,…</p>
                <p>IntelliJ cung cấp phương án debug tương tác một cách rất trực quan, mời các bạn cùng theo dõi.</p>

                <h5>Hướng dẫn</h5>

                <p> Bước 1: Chuẩn bị một chương trình Java đơn giản.</p>
                <p>Ở đây sử dụng chương <a href="https://github.com/chanhtv235/43_web_coder_m2/tree/session8-debug">trình giải phương trình bậc nhất</a> (checkout sang nhánh session8-debug để
                    xem code)</p>

                <p>Bước 2: : Đặt các breakpoints</p>

                <p>Để bắt đầu một phiên debug, trước tiên cần định vị các câu lệnh đứng ở vị trí mà ta muốn tạm ngừng sự
                    thực thi của chương trình. Trong hình dưới đây, ta tạm ngừng sự thực thi ở trước câu lệnh đọc giá
                    trị biến a và b.</p>

                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p11.png"
                     style="width: 50%;">

                <p>Để đặt được debug như thế, nhấn chuột phải vào phần lề trái của Editor.</p>
                <p>Khi trỏ chuột vào breakpoints, những thuộc tính của nó sẽ hiện ra, bạn có thể right-click vào để hiển
                    thị hộp thoại chi tiết:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p12.png"
                     style="width: 50%;">

                <p>Ta có thể đặt điều kiện để breakpoint chỉ được kích hoạt trong một số điều kiện nhất định, trong ví
                    dụ sau đây, breakpoint thứ 2 chì được kích hoạt khi a khác 0:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p13.png"
                     style="width: 50%;">

                <p>Bước 3: Bắt đầu phiên debug</p>
                <p>Một khi những điểm break đã được định vị, bạn có thể bắt đầu phiên debug. Có nhiều cách để thực hiện,
                    hình sau đây thể hiện cách đơn giản nhất</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p14.png"
                     style="width: 50%;">

                <p>Bạn sẽ thấy dòng mã ở điểm break đầu tiên chuyển sang màu xanh, ám chỉ rằng trình thực thi đang tạm
                    dừng tại trước câu lệnh đó. Bạn cũng quan sát thấy kiểu và giá trị của các biến có trong ngữ cảnh
                    tại thời điểm tạm dừng:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p15.png"
                     style="width: 50%;">

                <p>Bạn cũng sẽ quan sát thấy một panel “Debug” hiện lên ở phần cạnh dưới của IDE. Nó hiển thị chi tiết
                    thông tin về các biến và hằng có mặt trong ngữ cảnh:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p16.png"
                     style="width: 50%;">

                <p>Để ý mũi tên xổ xuống ở tab Console, ám chỉ rằng có một số output mới đã xuất hiện ở console mà bạn
                    chưa được nhìn thấy.</p>
                <p>Bước 4: Theo dõi sự vận hành của chương trình</p>
                <p>Theo dõi chương trình vận hành qua từng dòng mã</p>
                <p>Đơn giản là nhấn nút như ở hình dưới đây, hoặc nhấn F8 và nhập giá trị vào từ bàn phím theo yêu cầu
                    của câu lệnh. Để ý, mỗi khi điểm debug chuyển sang dòng mới, số dòng đó sẽ được cập nhật ở panel
                    Frames.</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p17.png"
                     style="width: 50%;">

                <p>Khi cần cho trình thực thi chạy tự do tới điểm debug tiếp theo (hoặc tới điểm kết thúc chương trình),
                    bạn nhấn nút như hình dưới, hoặc nhấn phím tắt (có thể khác nhau ở mỗi môi trường):</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p18.png"
                     style="width: 50%;">

                <h6>Theo dõi chương trình vận hành qua từng lời gọi phương thức</h6>
                <p>Để dễ theo dõi, trước tiên bạn hãy kết thúc phiên debug hiện tại và bắt đầu bằng một phiên mới.
                </p>
                <p> Khi gặp điểm debug đầu tiên, hãy nhấn nút như hình dưới đây, hoặc sử dụng phím tắt:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p19.png"
                     style="width: 50%;">
                <p>Bạn sẽ thấy điểm debug chuyển sang một vị trí khác lạ:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p120.png"
                     style="width: 50%;">

                <p>Điều này có nghĩa là trình thực thi đã bước vào bên trong phương thức nextDouble của gói java.util.
                    Hãy để ý rằng một frame mới đã được thêm vào danh sách các frames:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session10/img/img-p121.png"
                     style="width: 50%;">
                <p>Chú ý luôn lưu ý dấu mũi tên xổ xuống ở tab Console.</p>
                <p>Hãy sử dụng các nút điều khiển debug đã học để tiếp tục debug chương trình.</p>


            </div>
        </div>
    </div>
</div>


</body>
</html>
