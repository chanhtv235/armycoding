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
                <a href="/course/module3/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">5.Index, view, stored procedure, function, trigger</a>
                <h4>[Thực hành] Store Procedure</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Thực hành tạo SP không tham số trong MySql.</p>

                <h5>Mô tả</h5>
                <p class="p1">• Thực hành tạo store procedure trên cơ sở dữ liệu classicmodels</p>
                <p class="p2">Chúng ta có bảng customers như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p2/img.png"
                     style="width:55%;">
                <h5>Hướng dẫn</h5>

                <p class="p1"> - Stored Procedure được định nghĩa như một tập các khai báo sql được lưu trữ ngay trong
                    cơ sở dữ liệu (database) và sau đó, được triệu gọi bởi một program, một trigger hay thậm chí là một
                    stored procedure khác. </p>
                <p class="p1"> - Stored Procedured cho phép truyền tham số. </p>
                <p class="p0"> - Ưu điểm của Stored Proccedure trong Mysql </p>
                <p class="p1"> - Stored procedure làm tăng khả năng thực thi của ứng dụng. </p>
                <p class="p1"> - Sau khi được tạo, stored procedure sẽ được biên dịch (compile) và lưu trữ ngay trong
                    database. Lẽ dĩ nhiên, nó sẽ chạy nhanh hơn là một lệnh sql chưa compile được gửi trực tiếp từ ứng
                    dụng. </p>
                <p class="p1"> - Stored procedure làm giảm lưu lượng thông tin giao tiếp giữa ứng dụng và database
                    server, thay vì gửi những câu lệnh sql chưa complile dài , ứng dụng chỉ việc gửi tên của stored
                    procedure và lấy lại kết quả. </p>
                <p class="p0"> - Những nhược điểm của Stored Procudure </p>
                <p class="p1"> - Nếu bạn tạo ra quá nhiều Procedure thì hệ quản trị sẽ sử dụng bộ nhớ để lưu trữ các thủ
                    tục này khá nhiều. </p>
                <p class="p1"> - Ngoài ra nếu bạn thực hiện quá nhiều xử lý trong mỗi thủ tục thì đồng nghĩa với việc
                    CPU sẽ làm việc nặng hơn. </p>
                <p class="p1"> - Stored procedure chỉ chứa đựng các khai báo sql, vì vậy rất khó có thể viết 1 procedure
                    nhằm thực hiện các thao tác xử lý phức tạp như các ngôn ngữ khác làm được ở tần ứng dụng như
                    php,c#... </p>
                <p class="p1"> - Một số hệ quản trị CSDL có những tool hỗ trợ Debug Store nhưng MYSQL thì không có. </p>
                <p class="p1"> - Tạo Mysql Stored Procedure đầu tiên </p>

                <pre><code class="language-sql">
                    DELIMITER //
                        CREATE PROCEDURE findAllCustomers()
                        BEGIN
                          SELECT * FROM customers;
                        END //
                    DELIMITER ;
                </code></pre>

                <p class="p1">Giải thích:</p>

                <p class="p2">   <b> •	DELIMITER //</b> dùng để phân cách bộ nhớ lưu trữ thủ tục Cache và mở ra một ô lưu trữ mới.                                                                               </p>
                <p class="p2">   <b> •	CREATE PROCEDURE findAllCustomers()</b> dùng để khai báo tạo một Procedure mới, trong đó findAllCustomers chính là tên thủ tục còn hai từ đầu là từ khóa.                 </p>
                <p class="p2">   <b> •	BEGIN và END// </b> dùng để khai báo bắt đầu của Procedure và kết thúc Procedure                                                                                      </p>
                <p class="p2">   <b> •	DELIMITER ; </b> đóng lại ô lưu trữ                                                                                                                                   </p>
                <p class="p1">    Sau đó chạy câu SQL này và nó báo thành công tức là bạn đã tạo mới một thủ tục với tên findAllCustomers.                                                                </p>
                <p class="p1">    Cách gọi procedure                                                                                                                                                      </p>
                <pre><code class="language-sql">
                       call findAllCustomers();
                </code></pre>

                <p class="p1">    Sửa procedure                                                                             </p>
                <p class="p0">    Trong Mysql không cung cấp lệnh sửa Stored nên thông thường chúng ta sẽ chạy lệnh tạo mới.</p>
                <p class="p1">    Lệnh Drop để xóa đi Procedure đó và tạo lại:                                              </p>


                <pre><code class="language-sql">
                    DELIMITER //
                        DROP PROCEDURE IF EXISTS `findAllCustomers`//
                        CREATE PROCEDURE findAllCustomers()
                        BEGIN
                            SELECT * FROM customers where customerNumber = 175;
                        END //
                </code></pre>
            </div>
        </div>
    </div>
</div>
</body>
</html>
