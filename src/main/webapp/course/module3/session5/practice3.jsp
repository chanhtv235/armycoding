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
                <a href="/course/module3/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">5.Index, view, stored procedure, function, trigger</a>
                <h4>[Thực hành] Truyền tham số vào Store Procedure </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Thực hành tạo SP có tham số trong MySql.</p>

                <h5>Mô tả</h5>
                <p class="p1">• Thực hành tạo store procedure trên cơ sở dữ liệu classicmodels</p>
                <p class="p2">Chúng ta có bảng customers như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p2/img.png"
                     style="width:55%;">
                <h5>Hướng dẫn</h5>
                <p class="p1"> Trong MYSQL thì sẽ tồn tại ba loại Tham số đó là tham số IN, tham số OUT và tham số
                    INOUT </p>
                <p class="p1"><b>IN:</b> Đây là chế độ mặc định (nghĩa là nếu bạn không định nghĩa loại nào thì nó sẽ
                    hiểu là IN). </p>
                <p class="p1"><b>OUT:</b> Chế độ này nếu như trong Procedure có tác động thay đổi thì nó sẽ thay đổi
                    theo. Nhưng có điều đặc biệt là dù trước khi truyền vào mà bạn gán giá trị cho biến đó thì vẫn sẽ
                    không nhận được vì mặc định nó luôn hiểu giá trị truyền vào là NULL. </p>
                <p class="p1"><b>INOUT:</b> Đây là sự kết hợp giữa IN và OUT. Nghĩa là có thể gán giá trị trước và có
                    thể bị thay đổi nếu trong Procedure có tác động. </p>
                <p class="p1"> Tham số loại IN </p>
                <p class="p1"> Ví dụ:</p>
                <pre><code class="language-sql">
                DELIMITER //
                    CREATE PROCEDURE getCusById (IN cusNum INT(11))
                    BEGIN
                        SELECT * FROM customers WHERE customerNumber = cusNum;
                    END //
                DELIMITER ;
                </code></pre>

                <p class="p1">Gọi store procedure:</p>
                <pre><code class="language-sql">
                    call getCusById(175);
                </code></pre>

                <p class="p1">Kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p3/img.png"
                     style="width:55%;">

                <p class="p0"> Tham số loại OUT </p>
                <p class="p1"> Khi truyền tham số dạng OUT mục đích là lấy dữ liệu trong Proedure và sử dụng ở bên
                    ngoài. </p>
                <p class="p1"> Khi truyền tham số vào dạng OUT phải có chữ @ đằng trước biến </p>
                <p class="p1"> Hoạt động giống tham chiếu nên biến truyền vào dạng OUT không cần định nghĩa trước, chính
                    vì vậy khởi đầu nó có giá trị NULL </p>
                <p class="p1"> Ví dụ:</p>

                <pre><code class="language-sql">
                    DELIMITER //
                    CREATE PROCEDURE GetCustomersCountByCity(
                        IN  in_city VARCHAR(50),
                        OUT total INT )
                    BEGIN
                        SELECT COUNT(customerNumber)
                        INTO total
                        FROM customers
                        WHERE city = in_city;
                    END//
                    DELIMITER ;
                </code></pre>

                <p class="p1">Gọi store procedure:</p>

                <pre><code class="language-sql">
                    CALL GetCustomersCountByCity('Lyon',@total);
                    SELECT @total;
                </code></pre>

                <p class="p1">Tham số loại INOUT</p>
                <p class="p1">INOUT là sự kết hợp giữa IN và OUT, ví dụ:</p>

                <pre><code class="language-sql">
                    DELIMITER //
                    CREATE PROCEDURE SetCounter(
                        INOUT counter INT,
                        IN inc INT )
                    BEGIN
                        SET counter = counter + inc;
                    END//
                    DELIMITER ;
                </code></pre>

                <p class="p1">Gọi store procedure:</p>
                <pre><code class="language-sql">
                    SET @counter = 1;
                    CALL SetCounter(@counter,1); -- 2
                    CALL SetCounter(@counter,1); -- 3
                    CALL SetCounter(@counter,5); -- 8
                    SELECT @counter; -- 8
                </code></pre>

            </div>
        </div>
    </div>
</div>
</body>
</html>
