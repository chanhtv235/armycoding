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
                <a href="${pageContext.request.contextPath}/course/module3/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về CSDL Mysql</a>
                <header class="entry-header">
                    <h1 class="entry-title">Kiểu dữ liệu trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Chọn Database trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Tạo bảng trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Việc xác định đúng kiểu dữ liệu của các trường trong một bảng rất quan trọng đối với việc tối ưu hóa cơ sở dữ liệu của bạn. Bạn chỉ nên sử dụng kiểu dữ liệu và kích cỡ của trường thực sự cần sử dụng. Ví dụ: không định nghĩa trường rộng 10 ký tự, nếu bạn biết rằng chỉ sử dụng 2 ký tự.  </p>
                        <p> <strong>Kiểu dữ liệu trong MySQL</strong> có thể được chia thành 3 kiểu như sau: </p>
                        <ul>
                            <li> Numeric </li>
                            <li> Date and Time </li>
                            <li> Các kiểu chuỗi </li>
                        </ul>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Kiểu dữ liệu Numeric</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Kiểu dữ liệu Date và Time trong MySQL</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Kiểu dữ liệu chuỗi trong MySQL</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Kiểu dữ liệu Numeric </h2>
                        <p> MySQL sử dụng tất cả các loại dữ liệu số ANSI SQL tiêu chuẩn, vì vậy nếu bạn đã từng tiếp cận với một hệ thống cơ sở dữ liệu khác, kiểu dữ liệu numeric tương tự như vậy. </p>
                        <p> Danh sách sau đây cho thấy các loại dữ liệu số phổ biến và mô tả của chúng: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="10%">Kiểu dữ liệu</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>INT</td>
                                <td>Một số nguyên với kích cỡ thông thường, có thể là signed hoặc unsigned. Nếu có dấu, thì dãy giá trị có thể là từ -2147483648 tới 2147483647, nếu không dấu thì dãy giá trị là từ 0 tới 4294967295. Bạn có thể xác định một độ rộng lên tới 11 chữ số.</td>
                            </tr>
                            <tr>
                                <td>TINYINT</td>
                                <td>Một số nguyên với kích cỡ rất nhỏ, có thể là signed hoặc unsigned. Nếu có dấu, thì dãy giá trị có thể là từ -128 tới 127, nếu không dấu thì dãy giá trị là từ 0 tới 255. Bạn có thể xác định một độ rộng lên tới 4 chữ số.</td>
                            </tr>
                            <tr>
                                <td>MEDIUMINT</td>
                                <td>Một số nguyên với kích cỡ trung bình, có thể là signed hoặc unsigned. Nếu có dấu, thì dãy giá trị có thể là từ -8388608 tới 8388607, nếu không dấu thì dãy giá trị là từ 0 tới 16777215. Bạn có thể xác định một độ rộng lên tới 9 chữ số.</td>
                            </tr>
                            <tr>
                                <td>BIGINT</td>
                                <td>Một số nguyên với kích cỡ lớn, có thể là signed hoặc unsigned. Nếu có dấu, thì dãy giá trị có thể là từ -9223372036854775808 tới 9223372036854775807, nếu không dấu thì dãy giá trị là từ 0 tới 18446744073709551615. Bạn có thể xác định một độ rộng lên tới 20 chữ số.</td>
                            </tr>
                            <tr>
                                <td>FLOAT(M, D)</td>
                                <td>Một số thực dấu chấm động không dấu. Bạn có thể định nghĩa độ dài hiển thị (M) và số vị trí sau dấy phảy (D). Điều này là không bắt buộc và sẽ có mặc định là 10,2: với 2 là số vị trí sau dấu phảy và 10 là số chữ số (bao gồm các phần thập phân). Phần thập phân có thể lên tới 24 vị trí sau dấu phảy đối với một số FLOAT.</td>
                            </tr>
                            <tr>
                                <td>DOUBLE(M, D)</td>
                                <td>Một số thực dấu chấm động không dấu. Bạn có thể định nghĩa độ dài hiển thị (M) và số vị trí sau dấy phảy (D). Điều này là không bắt buộc và sẽ có mặc định là 16,4: với 4 là số vị trí sau dấu phảy và 16 là số chữ số (bao gồm các phần thập phân). Phần thập phân có thể lên tới 53 vị trí sau dấu phảy đối với một số DOUBLE. REAL là đồng nghĩa với DOUBLE.</td>
                            </tr>
                            <tr>
                                <td>DECIMAL(M, D)</td>
                                <td>Một kiểu khác của dấu chấm động không dấu. Mỗi chữ số thập phân chiếm 1 byte. Việc định nghĩa độ dài hiển thị (M) và số vị trí sau dấy phảy (D) là bắt buộc. NUMERIC là một từ đồng nghĩa cho DECIMAL.</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Kiểu dữ liệu Date và Time trong MySQL </h2>
                        <p> Kiểu dữ liệu Date và Time được phân loại thành: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="10%">Kiểu dữ liệu</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>DATE </td>
                                <td>Một date trong định dạng YYYY-MM-DD, giữa 1000-01-01 và 9999-12-31. Ví dụ, ngày 25 tháng 12 năm 2015 sẽ được lưu ở dạng 2015-12-25.</td>
                            </tr>
                            <tr>
                                <td>DATETIME </td>
                                <td>Một tổ hợp Date và Time trong định dạng YYYY-MM-DD HH:MM:SS, giữa 1000-01-01 00:00:00 và 9999-12-31 23:59:59. Ví dụ, 3:30 chiều ngày 25 tháng 12, năm 2015 sẽ được lưu ở dạng 2015-12-25 15:30:00.</td>
                            </tr>
                            <tr>
                                <td>TIMESTAMP </td>
                                <td>Một Timestamp từ giữa nửa đêm ngày 1/1/1970 và 2037. Trông khá giống với định dạng DATETIME trước, khác biệt ở chỗ không có dấu gạch nối giữa các số. Ví dụ, 3:30 chiều ngày 25 tháng 12, năm 2015 sẽ được lưu dưới dạng 20151225153000 ( YYYYMMDDHHMMSS ).</td>
                            </tr>
                            <tr>
                                <td>TIME </td>
                                <td>Lưu time trong định dạng HH:MM:SS.</td>
                            </tr>
                            <tr>
                                <td>YEAR(M) </td>
                                <td>Lưu 1 năm trong định dạng 2 chữ số hoặc 4 chữ số. Nếu độ dài được xác định là 2 (ví dụ: YEAR(2)), YEAR có thể từ 1970 tới 2069 (70 tới 69). Nếu độ dài được xác định là 4, YEAR có thể từ 1901 tới 2155. Độ dài mặc định là 4.</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>

                        <h2 id="goto-h2-3"> Kiểu dữ liệu chuỗi trong MySQL </h2>
                        <p> Ngoài các kiểu dữ liệu số hoặc kiểu dữ liệu date và time, thì còn một kiểu dữ liệu mà bạn thường sử dụng nhất trong MySQL là kiểu dữ liệu chuỗi. Dưới đây liệt kê các kiểu dữ liệu chuỗi và phần miêu tả của chúng trong MySQL: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="10%">Kiểu dữ liệu</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>CHAR(M)</td>
                                <td>Một chuỗi có độ dài cố định có độ dài từ 1 tới 255 ký tự (ví dụ CHAR(5)). Nếu giá trị thật của một trường kiểu Char không bằng với độ dài khai báo thì phần thiếu bên phải của nó sẽ được thêm bằng các kí tự trắng một cách tự động. Định nghĩa độ dài là không bắt buộc, giá trị mặc định là 1.</td>
                            </tr>
                            <tr>
                                <td>VARCHAR(M)</td>
                                <td>Dữ liệu kiểu chuỗi có độ dài thay đổi, có độ dài từ 1 đến 255 kí tự (ví dụ Varchar(24)). Bạn phải định nghĩa độ dài khi tạo một trường VARCHAR.</td>
                            </tr>
                            <tr>
                                <td>DATE </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>BLOB hoặc TEXT</td>
                                <td>Trường kiểu này có độ dài tối đa 65535 kí tự. BLOBs là viết tắt của "Binary Large Objects", và được sử dụng để lưu trữ một lượng lớn dữ liệu nhị phân như các bức ảnh hoặc các loại tập tin khác. Với TEXT, trường cũng lưu trữ được một lượng lớn dữ liệu. Điểm khác nhau giữa chúng là: khi sắp xếp và so sánh dữ liệu đã lưu trữ thì với BLOBs là phân biệt kiểu chữ, còn với TEXT là không phân biệt kiểu chữ. Bạn không phải xác định độ dài với BLOBs hoặc TEXT.</td>
                            </tr>
                            <tr>
                                <td>TINYBLOB hoặc TINYTEXT</td>
                                <td>Một cột BLOB hoặc TEXT với độ dài tối đa là 255 ký tự. Bạn không cần xác định độ dài với TINYBLOB hoặc TINYTEXT.</td>
                            </tr>
                            <tr>
                                <td>MEDIUMBLOB hoặc MEDIUMTEXT</td>
                                <td>Một cột BLOB hoặc TEXT với độ dài tối đa là 16777215 ký tự. Bạn không cần xác định độ dài với MEDIUMBLOB hoặc MEDIUMTEXT.</td>
                            </tr>
                            <tr>
                                <td>LONGBLOB hoặc LONGTEXT</td>
                                <td>Một cột BLOB hoặc TEXT với độ dài tối đa là 4294967295 ký tự. Bạn không cần xác định độ dài với LONGBLOB hoặc LONGTEXT.</td>
                            </tr>
                            <tr>
                                <td>ENUM </td>
                                <td>Khi định nghĩa một trường kiểu này, tức là, ta đã chỉ ra một danh sách các đối tượng mà trường phải nhận (có thể là Null). Ví dụ, nếu ta muốn một trường nào đó chỉ nhận một trong các giá trị "A" hoặc "B" hoặc "C" thì ta phải định nghĩa kiểu ENUM cho nó như sau: ENUM ('A', 'B', 'C'). Và chỉ có các giá trị này (hoặc NULL) có thể xuất hiện trong trường đó.</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Chọn Database trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Tạo bảng trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>

        </div>
        </div>
    </div>
    </div>
</body>
</html>
