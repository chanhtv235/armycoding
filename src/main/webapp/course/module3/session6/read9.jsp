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
                <div role="main" id="yui_3_17_2_1_1714164467583_23"><span id="maincontent"></span>
                    <h2>[Bài đọc] Đường viền trong CSS</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714164467583_22">
                        <div class="no-overflow" id="yui_3_17_2_1_1714164467583_21"><h2
                                id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p id="yui_3_17_2_1_1714164467583_20">Sử dụng được đường viền bằng CSS.</p>
                            <h2 id="yui_3_17_2_1_1714164467583_26">Nội dung</h2>
                            <h3>Các thuộc tính CSS về đường viền</h3>
                            <p>Các thuộc tính CSS về đường viền cho phép bạn xác định kiểu (style), chiều rộng và
                                màu<br>sắc cho đường viền của một phần tử nào đó.<br>Phần tử này có viền kiểu là đường
                                rãnh (groove), rộng 15px và màu xanh lá cây.</p>
                            <h3>Kiểu đường viền</h3>
                            <p>Thuộc tính <b>border-style</b> chỉ định loại\kiểu đường viền sẽ hiển thị. Các giá trị cho
                                phép đối với thuộc tính này:</p>
                            <ul>
                                <li>dotted - đường viền là các điểm (dấu chấm)</li>
                                <li>dashed - đường viền là các nét đứt</li>
                                <li>solid - đường viền là nét liền mảnh</li>
                                <li>double - đường viền là nét đôi</li>
                                <li>groove - đường viền 3D có xẻ rãnh. Hiệu ứng phụ thuộc vào màu viền</li>
                                <li>ridge - đường viền 3D tròn nổi. Hiệu ứng phụ thuộc vào màu viền</li>
                                <li>inset - đường viền 3D khung chìm. Hiệu ứng phụ thuộc vào màu viền</li>
                                <li>outset - đường viền 3D khung nổi. Hiệu ứng phụ thuộc vào màu viền</li>
                                <li>none - không có đường viền</li>
                                <li>hidden - đường viền ẩn</li>
                            </ul>
                            <p>Thuộc tính border-style có thể có từ một đến bốn giá trị (thiết lập cho 4 đường viền trên
                                (top), phải (right), dưới (bottom), và trái (left)).</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/x0sc5tqd/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Chiều rộng đường viền</h3>
                            <p>Thuộc tính border-width chỉ định chiều rộng của bốn đường viền.</p>
                            <p>Chiều rộng có thể được thiết lập như với một giá trị cụ thể (trong px, pt, cm, em, v.v.)
                                hoặc bằng cách sử dụng một trong ba giá trị được định nghĩa trước: thin, medium hoặc
                                thick.</p>
                            <p>Thuộc tính border-width có thể có từ một đến bốn giá trị (đường viền trên, đường viền
                                phải, đường viền dưới, và đường viền trái).</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/c8zce510/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Màu sắc đường viền</h3>
                            <p>Thuộc tính border-color được sử dụng để thiết lập màu sắc của bốn đường viền (trên, dưới,
                                trái, phải).</p>
                            <p>Màu sắc có thể được thiết lập theo các giá trị:</p>
                            <ul>
                                <li>Tên - chỉ định tên một màu sắc cụ thể (tiếng Anh), ví dụ "red"</li>
                                <li>RGB - chỉ định một giá trị RGB, ví dụ "rgb(255,0,0)"</li>
                                <li>Hex - chỉ định một giá trị hex, ví dụ "#ff0000"</li>
                                <li>transparent - đường viền trong suốt</li>
                            </ul>
                            <p>Thuộc tính border-color có thể có từ một đến bốn giá trị (cho đường viền trên, đường viền
                                phải, đường viền dưới, và đường viền trái). Nếu border-color không được thiết lập, nó kế
                                thừa màu sắc của các phần tử.</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/43p2wusj/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h3>Đường viền - Các cạnh cụ thể</h3>
                            <p>Từ những ví dụ ở trên, bạn đã thấy rằng có thể chỉ định một đường viền khác nhau cho mỗi
                                cạnh của hộp.</p>
                            <p>Trong CSS, cũng có các thuộc tính để chỉ định cụ thể cho mỗi đường viền (trên (top), phải
                                (right), dưới (bottom) và trái (left)):</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/szn9nao2/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <p>Ví dụ ở trên cho kết quả tương tự như sau:</p>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/970z6vwq/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <p>Vì vậy, đây là cách thức hoạt động của nó:</p>
                            <p>Nếu thuộc tính border-style có bốn giá trị:</p>
                            <ul>
                                <li>border-style: dotted solid double dashed;
                                    <ul>
                                        <li>đường viền trên là dotted</li>
                                        <li>đường viền phải là solid</li>
                                        <li>đường viền dưới là double</li>
                                        <li>đường viền trái là dashed</li>
                                    </ul>
                                </li>
                            </ul>
                            <p>Nếu thuộc tính border-style có 3 giá trị:</p>
                            <ul>
                                <li>border-style: dotted solid double;
                                    <ul>
                                        <li>đường viền trên là dotted</li>
                                        <li>đường viền phải và trái là solid</li>
                                        <li>đường viền dưới là double</li>
                                    </ul>
                                </li>
                            </ul>
                            <p>Nếu thuộc tính border-style có hai giá trị:</p>
                            <ul>
                                <li>border-style: dotted solid;
                                    <ul>
                                        <li>đường viền trên và dưới là dotted</li>
                                        <li>đường viền phải và trái là solid</li>
                                    </ul>
                                </li>
                            </ul>
                            <p>Nếu thuộc tính border-style có một giá trị:</p>
                            <ul>
                                <li>border-style: dotted;
                                    <ul>
                                        <li>tất cả bốn cạnh đều có viền là dotted</li>
                                    </ul>
                                </li>
                            </ul>
                            <h3>Đường viền - Thuộc tính rút gọn</h3>
                            <p>Như bạn có thể thấy ở những ví dụ ở trên, có rất nhiều thuộc tính được xem xét khi làm
                                việc với các đường viền.</p>
                            <p>Để rút gọn mã, chúng ta cũng có thể để xác định tất cả các thuộc tính đó trong một thuộc
                                tính.</p>
                            <p>Thuộc tính border là thuộc tính rút gọn cho các thuộc tính sau đây:</p>
                            <ul>
                                <li>border-width</li>
                                <li>border-style (required)</li>
                                <li>border-color</li>
                            </ul>
                            <h4>Ví dụ</h4>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/zxdb4mfm/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Sunday, 5 June 2022, 11:32 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
