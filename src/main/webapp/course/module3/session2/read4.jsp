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
                <a href="${pageContext.request.contextPath}/course/module3/session2/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Thiết kế CSDL</a>
                <div role="main" id="yui_3_17_2_1_1714149644202_23"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714149644202_26">
                        [Bài đọc] 11 quy tắc quan trọng trong thiết kế CSDL</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714149644202_22">
                        <div class="no-overflow" id="yui_3_17_2_1_1714149644202_21"><h2>Nguyên tắc số 1: Xác định chiến
                            lược cho CSDL</h2>
                            <p>Khi bắt đầu thiết kế một CSDL, việc đầu tiên chúng ta cần biết là CSDL đó được sử dụng để
                                làm gì:&nbsp;<span>Quản lý dữ liệu</span>&nbsp;hay&nbsp;<span>Phân tích dữ liệu</span>.
                                Có rất nhiều lập trình viên áp dụng các quy tắc chuẩn hóa một cách cứng nhắc mà không
                                nghĩ đến mục đích của CSDL, từ đó sinh ra các vấn đề nghiêm trọng về hiệu suất cũng như
                                khả năng tùy biến và mở rộng.</p>
                            <p>Như đã nói ở trên, có 2 dạng mục đích</p>
                            <ul>
                                <li><span>Quản lý dữ liệu</span>: CSDL thiết kế cho ứng dụng cho phép người dùng đọc và
                                    thay đổi dữ liệu (thêm, sửa, xóa...). Kiểu CSDL này gọi là OLTP (On-line
                                    Transactional Processing).
                                </li>
                                <li><span>Phân tích dữ liệu</span>: CSDL được thiết kế cho việc phân tích dữ liệu, cho
                                    phép người dùng xác định được xu hướng và điểm mấu chốt mang tính vĩ mô hơn. Kiểu
                                    CSDL này được gọi là OLAP (On-Line Analytical Processing)
                                </li>
                            </ul>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/1.jpg"
                                    width="490" height="133" alt="nature application"></p>
                            <p>Nói cách khác, nếu bạn đang cần thêm, sửa, xóa dữ liệu thì nên thiết kế theo hướng chuẩn
                                hóa dữ liệu, nếu không phải thì nên thiết kế theo hướng khử chuẩn hóa (làm phẳng dữ liệu
                                để đưa ra bức tranh tổng thể).</p>
                            <p>Dưới đây là một ví dụ đơn giản về việc khử chuẩn hóa một CSDL.</p>
                            <p>&nbsp;<img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/2.jpg"
                                          width="520" height="243" alt="denormalization"></p>
                            <h2>Nguyên tắc số 2: Chia nhỏ dữ liệu một cách hợp lý</h2>
                            <p>Thực ra đây chính là nguyên tắc đầu tiên trong chuẩn 1NF. Một trong những dấu hiệu cho
                                việc vi phạm nguyên tắc này là khi câu truy vấn cần sử dụng quá nhiều hàm xử lý chuỗi
                                như SUBSTRING, CHARINDEX ... Dưới đây là một ví dụ đơn giản về việc chia nhỏ dữ liệu&nbsp;</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/3.jpg"
                                    width="486" height="248" alt="1nf"></p>
                            <h2>Nguyên tắc số 3: Đừng lạm dụng nguyên tắc 2</h2>
                            <p>Quanh ta có rất nhiều lâp trình viên "đáng yêu". Khi họ đọc được một nguyên tắc nào đó,
                                họ lao đầu vào việc áp dụng nguyên tắc mà không cần suy nghĩ, từ đó dẫn đến hậu quả
                                không mong muốn. "nguyên tắc" ở đây bao gồm cả nguyên tắc số 2 đã đề cập ở trên. Vậy nên
                                khi chia nhỏ dữ liệu, dừng lại một chút và tự hỏi bản thân: "có cần thiết không?". Như
                                vậy, việc chia nhỏ dữ liệu sẽ trở nên hợp lý hơn.</p>
                            <p>Dưới đây là một ví dụ về việc chia nhỏ dữ liệu một cách "mất não"</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/4.jpg"
                                    width="428" height="171" alt="over-decomposition"></p>
                            <h2>Nguyên tắc số 4: Coi những dữ liệu trùng lặp là kẻ thù lớn nhất&nbsp;</h2>
                            <p>Hãy tập trung và tái cấu trúc các dữ liệu trùng lặp. Vấn đề ở đây không phải là việc
                                chiếm tài nguyên bộ nhớ, mà chính là sự nhầm lẫn mà nó có thể&nbsp; gây ra.</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/5.jpg"
                                    width="519" height="304" alt="duplicate data"></p>
                            <p>Như ví dụ trên, "5th Standard" và "Fifth standard" đồng nghĩa với nhau. Có thể là do ai
                                đó đã không chú ý khi nhập dữ liệu, hoặc do sơ suất trong quá trình kiểm soát dữ liệu
                                nhập vào. Khi bạn xuất ra một bản báo cáo, những dữ liệu này sẽ xuất hiện riêng biệt, dễ
                                gây bối rối và nhầm lẫn cho người đọc.</p>
                            <p>Một trong số những phương pháp xử lý vấn đề này là chuyển bớt dữ liệu sang một bảng khác
                                và để lại một khóa ngoại (foreign key). Như trong ví dụ trên, chúng ta có thể tạo một
                                bảng Standard và kết nối lại như sau:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/6.jpg"
                                    width="419" height="311" alt="duplicate data resolve"></p>
                            <h2>Nguyên tắc số 5: Chú ý đến các dữ liệu có sử dụng ký tự phân chia</h2>
                            <p>Nguyên tắc thứ 2 của chuẩn 1NF yêu cầu dữ liệu là đơn nhất. Khi dữ liệu của một trường
                                quá phức tạp có thể gây khó khăn trong quá trình truy vấn, và tất nhiên là ảnh hưởng đến
                                cả hiệu năng truy vấn.</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/7.jpg"
                                    width="588" height="293" alt="seperators"></p>
                            <p>Như ví dụ trên, trường "Syllabus" có quá nhiều dữ liệu và thậm chí là trùng lặp. Để giải
                                quyết vấn đề này, chúng ta có thể tách thành các bảng Syllabus, bảng Subject và sử dụng
                                một bảng nối để giải quyết quan hệ n-n giữa 2 bảng này. Cụ thể như sau:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/8.jpg"
                                    width="549" height="416" alt="rule 5"></p>
                            <h2>Nguyên tắc số 6: Chú ý đến các phụ thuộc hàm</h2>
                            <p><a href="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/9.jpg"><img
                                    src="https://www.codeproject.com/KB/database/359654/aa10.jpg" width="480"
                                    height="364" alt="partial dependencies"></a></p>
                            <p>Chú ý đến các trường chỉ phụ thuộc một phần vào khóa chính. Như ví dụ trên, khóa chính ở
                                đây là "Roll No" và "Standard". trong khi đó, trường "Syllabus" chỉ phụ thuộc vào
                                "Standard" chứ không phụ thuộc trực tiếp với "Roll No" (có thể coi ở đây là Mã học
                                sinh). Như vậy, mỗi khi cần thay đổi Standard thì chúng ta sẽ phải cập nhật lại toàn bộ
                                bảng. Như vậy rõ ràng là rất tốn công và không hợp lý. Vậy chúng ta có thể xử lý đơn
                                giản hơn, tách cột Syllabus ra và ghép với bảng Standard như hình trên.</p>
                            <p>Nguyên tắc này chính là phát biểu của chuẩn 2NF: Các thuộc tính không khóa phải phụ thuộc
                                hàm đầy đủ vào khóa chính</p>
                            <h2>Nguyên tắc số 7: Hạn chế các cột chứa kết quả</h2>
                            <p>Nếu chiến lược thiết kế CSDL là OLTP (Transactional: quản lý dữ liệu) thì tốt nhất là hãy
                                hạn chế các cột chứa kết quả tính toán, trừ khi các phép tính quá phức tạp và ảnh hưởng
                                đến hiệu năng. Còn tất nhiên trong chiến lược OLAP (Analytical: phân tích dữ liệu) thì
                                việc tính toán là rất thường xuyên, vậy nên việc lưu lại kết quả là cần thiết.</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/10.jpg"
                                    width="607" height="259" alt="rule 7"></p>
                            <p>Quan sát ví dụ trên, bảng này chứa cột "Average" chứa điểm trung bình, được tính theo
                                công thức "Total Marks"/"Total Subject". Dữ liệu này chỉ phụ thuộc hàm vào các cột không
                                phải khóa chính, do vậy nó vi phạm chuẩn 3NF ("Các thuộc tính không khóa phải phụ thuộc
                                hàm vào khóa chính"). Tuy vậy hãy nhớ rằng việc áp dụng chuẩn còn phải phụ thuộc vào yêu
                                cầu bài toán, không nên áp dụng một cách mù quáng. Những dữ liệu tính toán có vẻ "dư
                                thừa", như đã nói ở trên, sẽ có ích trong một số trường hợp cụ thể.&nbsp;</p>
                            <h2>Nguyên tắc số 8: nếu đặt hiệu năng lên trên hết, đừng quá cứng nhắc trong việc loại bỏ
                                dữ liệu thừa</h2>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/11.jpg"
                                    width="521" height="244" alt="denormalization"></p>
                            <p>Đừng quá cứng nhắc trong việc loại bỏ những dữ liệu có vẻ "dư thừa". Nếu hiệu năng của
                                CSDL đang gặp vấn đề, hãy nghĩ đến việc khử chuẩn hóa nó. Khi chuẩn hóa, chúng ta cần
                                phải sử dụng lệnh "JOIN" để lấy dữ liệu từ nhiều bảng, thì việc khử chuẩn hóa cho phép
                                giảm số câu lệnh "JOIN", từ đó tăng hiệu năng truy vấn.</p>
                            <h2>Nguyên tắc số 9: Dữ liệu đa chiều là một con quái vật</h2>
                            <p>Các dự án OLAP&nbsp; thường xuyên phải xử lý dữ liệu đa chiều. Dưới đây là một ví dụ cụ
                                thể để bạn có thể hình dung ra được "dữ liệu đa chiều" trông ra sao.</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/12.jpg"
                                    width="497" height="393" alt="multidimensional data"></p>
                            <p>Như ví dụ trên, chúng ta có 3 chiều dữ liệu là Customer Name, Date và Country, dùng để
                                lưu trữ tổng doanh số của từng khách hàng theo thời gian. Đối với tình huống này, có một
                                cách tiếp cận tốt hơn. Ta có thể tạo ra một bảng Doanh số (Sale FACT Table), chứa các
                                khóa ngoại của các bảng Country, Year và Customer (tương ứng với 3 chiều dữ liệu). Cụ
                                thể như sau:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/13.jpg"
                                    width="380" height="461" alt="simplify multidimension data"></p>
                            <h2>Nguyên tắc số 10: Thiết kế tập trung hóa tên - giá trị</h2>
                            <p>Tên và Giá trị trong một bảng mang ý nghĩa Khóa và dữ liệu tương ứng của khóa. Như ví dụ
                                dưới đây, chúng ta có một bảng Tên quốc gia và Loại tiền tệ, đây là một dạng dữ liệu
                                kiểu Khóa - Giá trị (Key - Value)</p>
                            <p id="yui_3_17_2_1_1714149644202_20"><img
                                    src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/14.jpg"
                                    width="427" height="401" alt="key value"></p>
                            <p>Đối với các dữ liệu dạng như trên, việc tập trung hóa và phân loại dữ liệu bằng một
                                trường phân loại (Type) sẽ hiệu quả hơn.</p>
                            <h2>Nguyên tắc số 11: Sử dụng khóa chính - khóa ngoại tự tham chiếu đối với trường hợp phân
                                cấp không giới hạn</h2>
                            <p>Có thể chúng ta đã gặp nhiều về trường hợp phân cấp không giới hạn. Ví dụ như một chiến
                                lược marketing đa cấp khi mỗi nhân viên bán hàng đều có thể có những nhân viên cấp dưới
                                họ. Đối với các kịch bản như thế này, hãy sử dụng khóa chính - khóa ngoại tự tham chiếu
                                để xử lý vấn đề.</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/15.jpg"
                                    width="264" height="351" alt="multilevel data"></p>
                            <h2>Tổng kết</h2>
                            <p>Nội dung của bài viết không phải là cổ súy việc bỏ qua các nguyên tắc thiết kế, thay&nbsp;
                                vào đó, đừng áp đặt các nguyên tắc một cách mù quáng mà hãy nhìn vào bản chất của dự án
                                và những dữ liệu chúng ta cần xử lý trước tiên, từ đó đưa ra phương án thiết kế dữ
                                liệu.</p>
                            <ul>
                                <li>1NF: Loại bỏ các dữ liệu lặp và dư thừa</li>
                                <li>2NF: tất cả các trường phải phụ thuộc hàm đầy đủ vào khóa chính</li>
                                <li>3NF: không có dữ liệu nào phụ thuộc hàm vào các trường không phải khóa chính</li>
                            </ul>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50256/mod_page/content/1/16.jpg"
                                    width="442" height="249" alt="normalization"></p></div>
                    </div>
                    <div class="modified">Last modified: Tuesday, 8 September 2020, 8:43 AM</div>
                </div>


            </div>
        </div>
    </div>
</body>
</html>
