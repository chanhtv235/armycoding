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
                <a href="/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Thiết kế Layout</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài tập] Phát triển trang web xem hoạt hình trực tuyến</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <ul>
                                <li>Luyện tập tạo layout sử dụng thẻ &lt;div&gt; và css</li>
                                <li>Luyện tập sử dụng thẻ &lt;video&gt;</li>
                                <li>Luyện tập nhúng youtube video sử dụng &lt;iframe&gt;</li>
                            </ul>
                            <h2>Nội dung</h2>
                            <p>Sự phát triển của internet đã giúp cho trẻ em dễ dàng tiếp cận với nhiều loại thông tin
                                khác nhau, trong đó có cả những thông tin hữu ích và nguy hại. Để phòng ngừa những nội
                                dung nguy hại có thể ngấm vào trẻ em khi lang thang trên mạng, đặc biệt là xem các video
                                trên youtube hoặc các trang web có xen lẫn những nội dung phim bạo lực. Website chuyên
                                biệt về phim hoạt hình ra đời nhằm tập hợp có chọn lọc những nội dung hữu ích, phù hợp
                                với trình độ và tâm lý lứa tuổi trẻ em. Để đáp ứng được nhu cầu xem phim hoạt hình từ
                                trẻ nhỏ website cần có những tiêu chí sau:</p>
                            <p>Phim nói chung và phim hoạt hình rất hay và ý nghĩa có tính giáo dục cao tuy nhiên phần
                                lớn là phim nước ngoài được dịch lại và có phụ đề, nên trẻ con rất khó tiếp cận, do đó
                                website cần sưu tầm và tổng hợp tất cả các phim có Audio Việt – Thuyết minh, chất lượng
                                phim đạt chuẩn HD 720p đến FullHD 1080p.</p>
                            <p>Các phim hoạt hình hiển thị được sắp xếp theo tiêu chí mới cập nhật hoặc có số lượng
                                người xem nhiều nhất.</p>
                            <p>Người xem có thể tìm kiếm phim theo tên.</p>
                            <p>Website đúng trọng tâm, đơn giản, dễ sử dụng, dễ xem, đặc biệt là link gốc trên Server
                                giúp tải nhanh, chống giật, không đặt quảng cáo ở bất kỳ vị trí nào trên site cũng như
                                trong phim.</p>
                            <p><b>Giao diện mô phỏng dạng sau:</b></p>
                            <p><b><img
                                    src="https://james.codegym.vn/pluginfile.php/50320/mod_assign/intro/web%20hoat%20hinh.png"
                                    alt="" width="973" height="877" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"><br></b></p>
                            <h2><b>Hướng dẫn</b></h2>
                            <p>1.<span class="Apple-tab-span" style="white-space: pre;"> </span>Mức cơ bản:&nbsp;</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Bố cục phân chia thành
                                các phần header, head-link, left content, right content, footer</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Phần header: Logo bên
                                trái.</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Phần head-link: chứa các
                                liên kết trang.</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Phần content: Left
                                content là menu chứa danh sách các video có sẵn. Right Content chứa nội dung video được
                                chọn trong phần menu. Mặc định hiển thị video đầu tiên trong danh sách video ở phần menu
                                trái.</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Phần footer: Chứa thông
                                tin bản quyền&nbsp;</p>
                            <p>2.<span class="Apple-tab-span" style="white-space: pre;"> </span>Mức trung bình:</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Sử dụng css bỏ phần gạch
                                chân của link, khi chuyển link phần text của link bôi đậm và chuyển màu khác.</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Khi di chuyển trang xuống
                                dưới phần header giữ cố định.</p>
                            <p>3.<span class="Apple-tab-span" style="white-space: pre;"> </span>Mức nâng cao:</p>
                            <p>-<span class="Apple-tab-span" style="white-space: pre;"> </span>Khi hiển thị dưới màn
                                hình khác nhau giao diện hiển thị phù hợp.</p>

                    </div>

                </div>
            </div>

</body>
</html>
