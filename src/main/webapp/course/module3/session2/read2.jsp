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
                <a href="${pageContext.request.contextPath}/course/module3/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Thiết kế CSDL</a>
                <div role="main"><span id="maincontent"></span><h2>[Bài đọc] ERD Diagram</h2><div class="box py-3 generalbox center clearfix"><div class="no-overflow"><h2>Mục tiêu</h2>
                    <p>- Tìm hiểu về ERD(Entity Relationship Diagram) vai trò và thành phần của ERD.</p>
                    <h2>Nội dung</h2>
                    <h3><span id="1_ERD_la_gi">ERD là gì?</span></h3>
                    <p><span>ERD là tên gọi tắt của&nbsp;Entity Relationship Diagram trong đó:</span></p>
                    <ul>
                        <li>Entity&nbsp;nghĩa là các&nbsp;<strong>thực thể</strong></li>
                        <li>Relationship là các&nbsp;<strong>mối quan hệ</strong>, (giữa các thực thể đó).</li>
                    </ul>
                    <p><span>Từ đó có thể hiểu rằng&nbsp;ERD là một sơ đồ, thể hiện các thực thể có trong database, và mối quan hệ giữa chúng với nhau.</span></p>
                    <h3><span><span>Vai trò của ERD trong thiết kế cơ sở dữ liệu</span></span></h3>
                    <p><span><span><span>Mục tiêu của mô hình ERD trong quá trình thiết kế cơ sở dữ liệu đó là phân tích dữ liệu, xác định các đơn vị thông tin cơ bản cần thiết của tổ chức, mô tả cấu trúc và mối liên hệ giữa chúng</span></span></span></p>
                    <p><span><span><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/6d0787fc-73e6-4779-b4dd-14db89e44eee.png" width="825" height="204"></span></span></p>
                    <p><span>ERD là mô hình trung gian để chuyển những yêu cầu quản lý dữ liệu trong thế giới thực thành mô hình cơ sở dữ liệu quan hệ</span></p>
                    <h3><span>Thành phần cơ bản của ERD</span></h3>
                    <p>Để xây dựng sơ đồ ERD cần phải nắm được các khái niệm sau:</p>
                    <ul>
                        <li>Entity (Thực thể)</li>
                        <li>Relationship (Mối quan hệ)</li>
                        <li>Property/ Attributes (Thuộc tính)</li>
                        <li>Entity Set (Tập thực thể)</li>
                        <li>Relationship Set (Tập mối quan hệ)</li>
                    </ul>
                    <h4>Thực thể và tập thực thể</h4>
                    <p><span>Thực thể là 1 đối tượng cụ thể hoặc trừu tượng, được mô tả bởi 1 tập các thuộc tính.&nbsp;</span></p>
                    <p><span><span>Tập các thực thể giống nhau tạo thành 1 tập thực thể.</span></span></p>
                    <p><span>Việc lựa chọn các tập thực thể là một bước vô cùng quan trọng trong việc xây dựng sơ đồ về mối quan hệ thực thể.</span></p>
                    <p>Ví dụ: Quản lý các dự án của công ty</p>
                    <ul>
                        <li>Một nhân viên là một thực thể</li>
                        <li>Tập hợp các nhân viên là tập thực thể</li>
                        <li>Một dự án là một thực thể</li>
                        <li>Tập hợp các dự án là tập thực thể</li>
                        <li>Một phòng ban là một thực thể</li>
                        <li>Tập hợp các phòng ban là tập thực thể</li>
                    </ul>
                    <p>Ví dụ:&nbsp;tập thực thể NHANVIEN có các thuộc tính</p>
                    <ul>
                        <li><span>Mã NV</span>&nbsp;(MaNV: integer)</li>
                        <li>Họ tên (Hoten: string[50])</li>
                        <li>Ngày sinh (ns:date)</li>
                        <li>Địa chỉ (diachi:string[100])</li>
                        <li>Quê quán (quequan:string[30])</li>
                        <li>Hệ số lương (hsluong:float)</li>
                        <li>Hệ số phụ cấp (hsphucap:float)</li>
                        <li>Tổng lương (tongluong:float)</li>
                    </ul>
                    <h4><span>Thuộc tính</span></h4>
                    <p><span><span>Mỗi tập thực thể có một tập các tính chất đặc trưng, mỗi tính chất đặc trưng này gọi là thuộc tính của tập thực thể. Ứng với mỗi thuộc tính có một tập các giá trị cho thuộc tính đó gọi là miền giá trị.</span></span></p>
                    <p>Miền giá trị của thuộc tính gồm các loại giá trị như sau:</p>
                    <ul>
                        <li>Kiểu chuỗi (string)</li>
                        <li>Kiểu số nguyên (integer)</li>
                        <li>Kiểu số thực (real)</li>
                    </ul>
                    <p>Ví dụ tập thực thể NHANVIEN có các thuộc tính</p>
                    <ul>
                        <li>Họ tên (hoten: string[20])</li>
                        <li>Ngày sinh (ns: date)</li>
                    </ul>
                    <p><span>Thuộc tính bao gồm các loại như sau:</span></p>
                    <ul>
                        <li>Thuộc tính đơn – không thể tách nhỏ ra được</li>
                        <li>Thuộc tính phức hợp – có thể tách ra thành các thành phần nhỏ hơn</li>
                    </ul>
                    <p>Mỗi thực thể đều được phân biệt bởi thuộc tính khóa</p>
                    <p>Thuộc tính khóa:</p>
                    <ul>
                        <li>Mỗi tập thực thể phải có 1 khóa</li>
                        <li>Một khóa có thể có 1 hay nhiều thuộc tính</li>
                        <li>Có thể có nhiều khóa trong 1 tập thực thể, ta sẽ chọn ra 1 khóa làm khóa chính cho tập thực thể đó</li>
                    </ul>
                    <p><span>Ví dụ về thuộc tính đơn, phức hợp và thuộc tính khóa:</span></p>
                    <p><span><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/37256d0c-6712-49b8-b73a-96fd5379c680.png" width="825" height="531"></span></p>
                    <p><span>Các loại giá trị của thuộc tính:</span></p>
                    <ul>
                        <li>Đơn trị: các thuộc tính có giá trị duy nhất cho một thực thể (VD: số CMND, …)</li>
                        <li>Đa trị: các thuộc tính có một tập giá trị cho cùng một thực thể (VD: bằng cấp, …)</li>
                        <li>Suy diễn được (năm sinh =&gt; tính được ra tuổi)</li>
                    </ul>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/9c49dce9-f46d-4293-9b5f-11b3e78a83e7.png" width="825" height="446"></p>
                    <h4>Mối quan hệ và tập mối quan hệ</h4>
                    <p><span>Quan hệ là sự liên kết giữa hai hay nhiều tập thực thể</span></p>
                    <p><span><span>Tập quan hệ là tập hợp các mối quan hệ giống nhau</span></span></p>
                    <h3>Các ký hiệu trong ERD</h3>
                    <p><span>Các ký hiệu trong sơ đồ ERD:</span></p>
                    <ul>
                        <li>Đỉnh:</li>
                    </ul>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/d9113ffc-8d1f-434b-932e-522d38423e1f.png?time=1615951909103" width="203" height="338"></p>
                    <p></p>
                    <ul>
                        <li>Cung: là đường nối giữa tập thực thể và thuộc tính, mối quan hệ và tập thực thể</li>
                    </ul>
                    <p>Ví dụ sơ đồ ERD:</p>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/24b0fd9f-f0a6-4328-b793-f3fa3a16e24a.png" width="825" height="439"></p>
                    <h3>Các kiểu liên kết trong ERD</h3>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/a6800064-5364-4a44-9727-ca635c36fc24.png" width="825" height="401"></p>
                    <p>Ví dụ:</p>
                    <ul>
                        <li>Một phòng ban có nhiều nhân viên</li>
                    </ul>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/f6cf6681-b353-479c-9b44-eb056663cae5.png" width="429" height="73"></p>
                    <ul>
                        <li>Một nhân viên chỉ thuộc 1 phòng ban</li>
                    </ul>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/cca3520d-fb00-46d5-a263-970c488fb572.png" width="432" height="73"></p>
                    <ul>
                        <li>Một nhân viên có thể được phân công vào nhiều dự án hoặc không được phân công vào dự án nào</li>
                    </ul>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/54f73971-9d60-470f-a3ec-724a7b4096c1.png" width="492" height="73"></p>
                    <ul>
                        <li>Một nhân viên có thể là trưởng phòng của 1 phòng ban nào đó</li>
                    </ul>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/7e7e4af7-8e16-4465-ae72-684fb47e8701.png" width="482" height="79"></p>
                    <p>Một loại thực thể có thể tham gia nhiều lần vào một quan hệ với nhiều vai trò khác nhau</p>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50414/mod_page/content/3/0fa04207-52cf-4371-b390-a7e1f12522b4.png" width="467" height="184"></p>
                    <p></p></div></div><div class="modified">Last modified: Sunday, 22 May 2022, 11:09 PM</div></div>
        </div>
    </div>
    </div>
</body>
</html>
