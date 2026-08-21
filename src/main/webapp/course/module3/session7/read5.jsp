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
                    <h2>[Bài đọc] Sử dụng công cụ vẽ prototype</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><p></p>
                            <h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Tìm hiểu về các công cụ vẽ P<span>rototype.</span></p>
                            <h2>Nội dung</h2>
                            <p>Trong thế giới thiết kế ngày nay, chúng ta có hàng tá các công cụ tạo prototype. Các công
                                cụ tốt nhất sẽ giúp bạn lặp lại các quy trình một cách nhanh chóng, đồng thời vẫn giữ
                                được tính nhất quán trong thiết kế. Trong thực tế, chúng không chỉ đơn thuần là một công
                                cụ, mà chúng còn là nền tảng cho sự sáng tạo và thử nghiệm đối với đội ngũ thiết kế sản
                                phẩm.</p>
                            <h4><strong>1. UXPin</strong></h4>
                            <p><img src="https://img.idesign.vn/2017/12/18/42959/id_8congcuprototype_1.png" width="650"
                                    height="433"></p>
                            <p></p>
                            <p>Hiện tại thì đây là nền tảng end-to-end (end-to-end: quản lý tất cả các quy trình từ đầu
                                tới cuối) duy nhất trên thị trường, UXPin nhắm tới mục tiêu trở thành ”công cụ thống
                                trị” trong ngành thiết kế. Bên cạnh việc tạo ra các prototype tân tiến, nó còn hỗ trợ
                                các giai đoạn khác nhau của quá trình thiết kế như: tạo mẫu, cộng tác thiết kế, văn bản
                                hoá, đồng bộ dữ liệu.</p>
                            <p>Đây ắt hẳn là công cụ mạnh mẽ nhất với các tính năng hiện có. Đối với việc tạo prototype,
                                chúng ta sẽ có các chức năng cực kỳ hữu ích như: các điểm ngắt đáp ứng, dựng hoạt ảnh,
                                tương tác nâng cao, tạo mẫu CSS và các thư viện UI sẵn có.</p>
                            <p>Tính năng mới khá thú vị đó là hệ thống thiết kế. Bạn có thể nhập dữ liệu từ Sketch, hoặc
                                tạo dữ liệu mới từ UXPin, và sau đó gán dữ liệu đó tới mọi thành phần trong thiết kế.
                                Bạn có thể tạo ra các prototype một cách đồng nhất hơn, đồng thời chuẩn hoá các dữ liệu
                                cùng với nhóm phát triển của mình. Công cụ này có thể tích hợp với Sketch, Photoshop,
                                Jira và Slack (hiện tại thì công cụ này chưa được tích hợp với Illustrator).</p>
                            <p>Mặc dù còn nhiều thứ cần cải tiến, UXPin vẫn là một công cụ cực kỳ ”xịn” không chỉ cho
                                việc thiết kế prototype đa thiết bị mà còn giúp hỗ trợ cho các vấn đề khác như: quy
                                trình thiết kế, tính nhất quán trong thiết kế và sự đồng bộ dữ liệu phát triển.</p>
                            <h4><strong>2. Adobe XD</strong></h4>
                            <p><img src="https://img.idesign.vn/2017/12/18/42959/id_8congcuprototype_5.png" width="650"
                                    height="443"></p>
                            <p></p>
                            <p>Là tân binh mới của bộ dụng cụ Adobe’s Creative Cloud, Adobe XD ra mắt bản beta vào tháng
                                Ba 2016, và bản đầy đủ vào tháng Mười 2017.</p>
                            <p>Công cụ Adobe XD là nỗ lực của Adobe trong việc giành lại thị phần từ tay của Sketch; hai
                                phần mềm này nhanh chóng thiết lập mối quan hệ cạnh tranh. Với độ chính xác cao, Adobe
                                XD đang dần dần khẳng định được vị thế của mình trong giới thiết kế.</p>
                            <p>Adobe XD là một phần mềm độc lập, điều này cũng là một điểm sáng đối với một sản phẩm của
                                Adobe, thường thì bạn sẽ phải dính liền với các plugin của hãng. Tính đến thời điểm này,
                                giới hạn lớn nhất của công cụ này chính là việc thiếu các định dạng văn bản (gạch chân,
                                in nghiêng, viết hoa,…). Và ắt hẳn, chúng ta đều mong muốn sản phẩm non trẻ này phát
                                triển lớn mạnh hơn trong tương lai và trở thành một nền tảng end-to-end vững chắc.</p>
                            <h4><strong>3. Principle</strong></h4>
                            <p><img src="https://img.idesign.vn/2017/12/18/42959/id_8congcuprototype_3.png" width="650"
                                    height="394"></p>
                            <p></p>
                            <p>Principle là một ứng dụng tạo prototype chuyên sâu về việc dựng hoạt ảnh. Công cụ này có
                                chức năng biên tập theo timeline, tương tự như Adobe After Effects, Flash. Hơn thế nữa,
                                bạn sẽ có tận 2 cái timeline, điều nay cho phép bạn dựng hoạt ảnh của nhiều đối tượng
                                trên cùng một trang.</p>
                            <div id="oa-360-1576922980245_yr8vgkjgn">
                                <div id="oa-360-1576922980245_i0i71ooer"></div>
                            </div>
                            <p>Mặc dù tính năng dựng ảnh động và video của Principle có nhiều ưu điểm hàng đầu, các tính
                                năng còn lại thì không có gì ấn tượng. Các dự án không yêu cầu ’vật thể chuyển động’ sẽ
                                phù hợp với các công cụ khác hơn, nhưng nếu mục tiêu chính dự án của bạn là dựng hoạt
                                ảnh, Principle rất đáng để bạn thử qua đấy.</p>
                            <h4><strong>4. Webflow</strong></h4>
                            <p><img src="https://img.idesign.vn/2017/12/18/42959/id_8congcuprototype_2.jpg" width="650"
                                    height="406"></p>
                            <p></p>
                            <p>Webflow được giới thiệu là một công cụ tạo prototype không cần đùng đến code, nhưng hầu
                                hết các phần mềm được đề cập đến trong bài viết này cũng vậy. Điều thực sự làm phần mềm
                                này nổi bật chính là các tính năng quản lý trang web.</p>
                            <p>Webflow bao gồm một máy chủ CMS và các tính năng lưu trữ đi kèm với các lựa chọn dành cho
                                thiết kế. Đối với những trường hợp khi thiết kế và quản lý trang được gộp chung với
                                nhau, Webflow sẽ cung cấp cho bạn mọi thứ bạn cần. Công cụ này cho phép bạn dễ dàng tuỳ
                                chỉnh các trang web kể cả khi chúng đang hoạt động, tất cả đều thông qua một cái giao
                                diện đậm chất Photoshop.</p>
                            <p>Một công cụ kết hợp giữa hosting-prototyping, không có các dòng code rườm rà phức tạp,
                                Webflow là một công cụ tuyệt vời cho các nhà thiết kế độc lập với những công việc không
                                chỉ đơn thuần là thiết kế.</p>
                            <h4><strong>5. Marvel</strong></h4>
                            <p><img src="https://img.idesign.vn/2017/12/18/42959/id_8congcuprototype_4.png" width="650"
                                    height="291"></p>
                            <p>Bạn là dân ”ngoại đạo” và muốn tìm kiếm một phần mềm dễ sử dụng? Marvel là phần mềm dựng
                                prototype dành cho tất cả mọi người với giao diện cực kỳ đơn giản, dễ sử dụng và làm
                                quen. Công cụ này là sự lựa chọn hoàn hảo cho những người không phải là dân thiết kế
                                hoặc những nhà thiết kế UX ”thế hệ mới”.</p>
                            <p>Bên cạnh đó, Marvel có thể tích hợp sâu với Photoshop và Sketch, và phải nói phần mềm này
                                thực sự hữu ích khi bạn dùng nó để nhập thư viện dữ liệu từ Sketch.</p></div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 2:23 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
