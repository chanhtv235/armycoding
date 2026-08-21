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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Layout and design responsive web </a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Prototype là gì?</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><p>Xu hướng chung trong quá trình thiết kế UI/UX cho một sản phẩm là
                            thực hiện các giai đoạn: sketch, wireframe, mockup và prototype. Mục tiêu của mỗi bước là để
                            cho phép bạn sửa chữa các vấn đề về khả năng sử dụng của sản phẩm trong khi chi phí sửa chữa
                            vẫn còn nhỏ.</p>
                            <p>Các định nghĩa đưa ra dưới đây là một phác thảo ngắn của&nbsp;<a
                                    href="https://designmodo.com/wireframing-prototyping-mockuping/" target="_blank">một
                                loạt các bài viết</a>&nbsp;chuyên sâu nghiên cứu UX của Marcin Treder_Giám đốc điều hành
                                của UXPIN.</p>
                            <h4><strong>1. Tại sao cần chúng?</strong></h4>
                            <p>Rất đơn giản thôi, bằng việc sketch, wireframe, mockup &amp; prototype&nbsp;sẽ giúp chúng&nbsp;ta:</p>
                            <ul>
                                <li>Dễ dàng hiểu Flow, dễ dàng trao đổi với đội nhóm về ý tưởng ứng dụng.</li>
                                <li>Giúp truyền đạt cho đội ngũ phát triển ứng dụng.</li>
                                <li>Trình bày cho nhà đầu tư, khách hàng về ý tưởng, sản phẩm.</li>
                            </ul>
                            <h4><strong>2. Quá trình các bước khi thiết kế ứng dụng bài bản</strong></h4>
                            <h4>2.1 Sketch (phác họa)</h4>
                            <p>Đơn giản là việc phác họa các màn hình của ứng dụng, thể hiện nội dung và tính năng của
                                ứng dụng trên giấy (độ chân thực thấp nhất (low-fidelity)). Đây là cách nhanh nhất để
                                trình bày ý tưởng và thảo luận với đội nhóm, tốt hơn rất nhiều so với việc chỉ mô tả mọi
                                thứ bằng lời. Là bước đệm để bạn nhảy tới wireframe.</p>
                            <p>Công cụ:&nbsp;Giấy bút &amp; khả năng vẽ đẹp chút</p>
                            <p><em>Tuy nhiên, với sự xuất hiện của nhiều công cụ hỗ trợ thì chủ yếu mọi người sẽ nhảy
                                thẳng tới bước Wireframe.</em></p>
                            <h4>2.2. Wireframe&nbsp;</h4>
                            <p>Wireframe được ví như "xương sống" của một thiết kế, nó chứa tất cả các phần quan trọng
                                của sản phẩm cuối cùng. Nó là một dạng hình dung nguyên sơ nhất về sản phẩm. Thông
                                thường wireframe sử dụng các yếu tố đồ hoạ đơn giản, như đường thẳng, hình hộp, hình học
                                cơ bản với tông màu xám, đen, trắng để biểu thị thông tin về kiến trúc, nội dụng hay bố
                                cục.</p>
                            <p>Với&nbsp;<em>Wireframe</em>&nbsp;cần thể hiện được:</p>
                            <ul>
                                <li>Nhóm nội dung, tính năng chính (là gì ?)</li>
                                <li>Cấu trúc thông tin (đặt các thứ ở đâu ?)</li>
                                <li>Màn hình và tương tác cơ bản cho user (thế nào ?)</li>
                            </ul>
                            <p><img src="https://viblo.asia/uploads/7a5b2710-3e97-449e-9453-d8fee5749529.png"
                                    width="600" height="486"></p>
                            <p>Đây là 1 khái niệm có nhiều người sẽ nhầm lẫn,&nbsp;(wireframe = mockup = prototype ??? )
                                Không đúng đâu nhé. Sự nhầm lẫn giữa&nbsp;<em>wireframe, mockup và prototype&nbsp;</em>cũng
                                như việc nhầm lẫn giữa 1 bản thiết kế nhà và bức hình chụp ngôi nhà đó khi đã xây xong
                                vậy.</p>
                            <p>Tóm lại, wireframe là bản thiết kế màn hình khung xương, với độ trung thực thấp
                                (low-fidelity) chưa bao gồm việc thiết kế giao diện ( màu sắc, hình ảnh).</p>
                            <p>Công cụ:&nbsp;<em>(có rất nhiều)&nbsp;</em>thường dùng Powerpoint /&nbsp;Balsamiq / Visio
                            </p>
                            <h4>2.3. Mockup</h4>
                            <p></p>
                            <p>Mockup là cấp độ tiếp theo từ Wireframe, là giai đoạn giữa và là cấu nối giữa cấu trúc (
                                wireframe) tới một bản mẫu. Đây là nơi các nhà thiết kế có thể sử dụng các yếu tố đồ hoạ
                                sáng tạo.Các khối hình học cơ bản, tông màu nhạt nhẽo được thay thế bằng các yếu tố đồ
                                hoạ tinh tế. Mock-up sử dụng wireframes và mang lại cho nó nhiều giá trị hơn phù hợp với
                                bản sắc của thương hiệu.</p>
                            <p>Mockup là bản thiết kế với mức độ trung thực từ&nbsp;<em>trung bình&nbsp;→ cao</em>.
                                “Trung bình” với bản thiết kế nháp, “cao” với bản thiết kế chuẩn (Bản thiết kế khi này
                                đã thêm màu, font, text, hình ảnh, logo,..)&nbsp;<em><br></em></p>
                            <p><img src="https://viblo.asia/uploads/28dbd4b6-5ddb-4efe-b158-c5218ad6c447.jpg"
                                    width="825" height="550"></p>
                            <p>Bản mockup sẽ:</p>
                            <ul>
                                <li>Thể hiện được cấu trúc thông tin nội dung, đồ họa màn hình, tập trung vào các tính
                                    năng. Bạn sẽ có 1&nbsp;<em>static map&nbsp;</em>cho ứng dụng.
                                </li>
                                <li>Phục vụ việc review lại thiết kế hoặc trinh bày với nhà đầu tư, cổ đông.</li>
                            </ul>
                            <p>Sau khi hoàn thành mockup, bạn đã có thể chuyển cho bên lập trình viên để cắt HTML/CSS,
                                bắt đầu xây dựng sản phẩm.</p>
                            <p>Công cụ:&nbsp;Sketch (onlyMac), Photoshop,&nbsp;Illustrator, Adobe XD.</p>
                            <h4>2.4. Prototype</h4>
                            <p></p>
                            <p>Nhắc tới Prototype chắc chắn đây là một bản thiết kế với&nbsp;độ trung thực cao nhất&nbsp;(high-fidelity).
                                Nó tương tự như bản&nbsp;<em>Mockup với độ trung thực cao&nbsp;</em>+&nbsp;UX, tương
                                tác, animation.</p>
                            <p>Prototype thường bị nhầm lẫn với wireframe, là nằm trong phân đoạn từ giữa tới cao về sự
                                chân thật của sản phẩm cuối cùng,mô phỏng tác động giao diện người dùng. Nó sẽ cho phép
                                người sử dụng để:</p>
                            <ul>
                                <li>
                                    <p>Trải nghiệm nội dung và tương tác với giao diện</p>
                                </li>
                                <li>
                                    <p>Kiểm tra sự tương tác chính một cách tương tự như sản phẩm cuối cùng</p>
                                </li>
                            </ul>
                            <p>Thông thường prototype là ở giai đoạn cuối cùng của thiết kế và đóng vai trò là cầu nối
                                để tới sản phẩm thực tế. Một quá trình phổ biến là nhanh chóng bắt đầu với một prototype
                                có độ chân thật thấp&nbsp;và sau đó dần dần lặp lại vào ngày càng nhiều các phiên bản
                                hi-fi. Đây thực sự là phương pháp nền tảng cho việc lấy người dùng làm trung tâm và
                                thiết kế định hướng khách hàng. Một bản mẫu cuối cùng có thể không có mọi tương tác và
                                hiệu ứng, nhưng nó sẽ có tác động quan trọng, cung cấp một sự hiểu biết rõ ràng về sản
                                phẩm cuối cùng sẽ hoạt động như thế nào. Vì vậy, nói cách khác, một bản mẫu làm việc tốt
                                sẽ giống như sản phẩm cuối cùng càng gần càng tốt.</p>
                            <p>Với lập trình viên, xây dựng cái này cũng mất công nên có thể coi nó là optional trong
                                quá trình thiết kế. Nhưng nếu bạn có bản prototype để trình bình bày với, đội nhóm, bạn
                                bè, nhà đầu tư, khách hàng thì đó là điều tuyệt với nhất.</p>
                            <p>Prototype cho chúng ta cảm giác như dùng một ứng dụng thực sự, nhưng thật ra chúng chỉ là
                                các hình ảnh kết nối với nhau.</p>
                            <p>Công cụ:&nbsp;HTML/CSS/Javascript,&nbsp;SketchUp (only Mac), Adobe XD</p>
                            <h4><strong>3. Tổng kết</strong></h4>
                            <table>
                                <tbody>
                                <tr>
                                    <td>Độ trung thực</td>
                                    <td>Mục đích</td>
                                    <td>Đặc tính</td>
                                    <td>Công cụ</td>
                                </tr>
                                <tr>
                                    <td>Wireframe</td>
                                    <td>Thấp</td>
                                    <td>Tài liệu, trao đổi, thảo luận nhanh</td>
                                    <td>Phác họa, đen trắng xám hoặc xanh, thể hiện được giao diện</td>
                                    <td>Powpoint/&nbsp;Balsamiq/ Viso</td>
                                </tr>
                                <tr>
                                    <td>Mockup</td>
                                    <td>Trung bình&nbsp;– Cao</td>
                                    <td>Thu thập ý kiến, xây dựng ứng dụng, trình bày nhà đầu tư.</td>
                                    <td>Giao diện có thiết kế UI, ảnh tĩnh</td>
                                    <td>Sketch (onlyMac), Photoshop,&nbsp;Illustrator, Adobe XD</td>
                                </tr>
                                <tr>
                                    <td>Prototype</td>
                                    <td>Cao</td>
                                    <td>Test người dùng, trình bày, dùng lại giao diện.</td>
                                    <td>UI chi tiết + UX animation, flow</td>
                                    <td>HTML/CSS/Javascript, SketchUp (only Mac), Adobe XD</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modified">Last modified: Saturday, 15 February 2020, 6:00 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
