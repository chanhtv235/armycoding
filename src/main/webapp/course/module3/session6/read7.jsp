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
                <a href="${pageContext.request.contextPath}/course/module3/session6/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Cascading Style Sheets</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Định dạng văn bản bằng CSS</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Định dạng được văn bản bằng CSS.</p>
                            <h2 id="yui_3_17_2_1_1654249064472_20">Nội dung</h2>
                            <h3>Màu sắc văn bản</h3>
                            <p>Thuộc tính color được sử dụng để thiết lập màu sắc cho văn bản. <br>Với CSS, màu sắc
                                thường được chỉ định bởi:<br><br></p>
                            <ul>
                                <li>một giá trị HEX - ví dụ "#ff0000"</li>
                                <li>một giá trị RGB - ví dụ "rgb(255,0,0)"</li>
                                <li>một tên màu sắc (bằng tiếng Anh) - ví dụ "red"</li>
                            </ul>
                            <p>Hãy xem Các giá trị màu CSS bạn sẽ thấy một danh sách đầy đủ các giá trị có thể cho màu
                                sắc. <br>Màu mặc định của văn bản trong một trang được xác định bởi bộ chọn body như
                                sau.</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/24ceebxu/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Lưu ý: <i>Nếu bạn định nghĩa thuộc tính color bạn cũng nên định nghĩa luôn thuộc tính
                                background-color.</i></p>
                            <h3>Căn chỉnh văn bản</h3>
                            <p>Thuộc tính text-align được sử dụng để căn chỉnh theo chiều ngang cho một văn bản. Một văn
                                bản có thể được canh trái hoặc canh phải, canh giữa, hoặc dàn đều (justified). Ví dụ sau
                                cho thấy canh giữa, canh trái và canh phải văn bản (canh trái là mặc định nếu hướng của
                                văn bản là trái sang phải, và canh phải là mặc định nếu hướng của văn bản là
                                phải-sang-trái):</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/phrbxoas/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Khi thuộc tính text-align được thiết lập là "justify", mỗi dòng sẽ được kéo dãn do đó
                                chúng có chiều rộng bằng nhau, và các lề trái và phải thẳng hàng nhau (như trong các tờ
                                báo\tạp chí):
                            </p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/1L3dfnq0/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Trang trí văn bản</h3>
                            <p>Thuộc tính text-decoration được sử dụng để thiết lập hoặc loại bỏ trang trí khỏi văn bản.
                                Giá trị text-decoration: none; thường được sử dụng để loại bỏ các dấu gach chân khỏi các
                                liên kết:</p>
                            <h4>Ví dụ</h4>
                            <p>Các giá trị khác của text-decoration được sử dụng để trang trí văn bản:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/yc475490/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Lưu ý: Nên tránh để gạch chân với các văn bản không phải là liên kết vì sẽ dễ gây hiểu
                                nhầm.
                            </p>
                            <h3>Chuyển đổi văn bản</h3>
                            <p>Thuộc tính text-transform được sử dụng để chỉ định ký tự chữ hoa và chữ thường trong một
                                văn bản. Nó có thể được sử dụng để chuyển tất cả mọi thứ thành chữ hoa hoặc chữ thường,
                                hoặc in hoa chữ cái đầu tiên của mỗi từ:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/zoxvy1jk/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Thụt lề văn bản</h3>
                            <p>Thuộc tính text-ident được sử dụng để chỉ định thụt lề dòng đầu tiên của một đoạn văn
                                bản:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/67ag8wfk/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Khoảng cách giữa các ký tự</h3>
                            <p>Thuộc tính letter-spacing được sử dụng để xác định khoảng cách giữa các ký tự trong một
                                văn bản. Ví dụ sau cho thấy cách để tăng hoặc giảm khoảng cách giữa các ký tự:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/qe64pt4h/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Chiều cao dòng</h3>
                            <p>Thuộc tính line-height được sử dụng để xác định khoảng cách giữa các dòng:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/vez0vjh3/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Hướng của văn bản</h3>
                            <p>Thuộc tính direction được sử dụng để thay đổi hướng văn bản của một phần tử:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/sdkxjtj3/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Khoảng cách giữa các từ</h3>
                            <p>Thuộc tính word-spacing được sử dụng để xác định khoảng cách giữa các từ trong một văn
                                bản. Ví dụ sau cho thấy cách để tăng hoặc giảm khoảng cách giữa các từ:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/ggo1jtbu/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Friday, 3 June 2022, 4:42 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
