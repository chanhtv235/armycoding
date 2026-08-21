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
                <h4>[Thực hành] Chỉ mục trong MySql </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Thực hành tạo chỉ mục trong MySql.</p>

                <h5>Mô tả</h5>
                <p class="p1">Sử dụng cơ sỡ dữ liệu sẵn có so sánh về tốc độ khi đánh index cho các trường</p>
                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Download cơ sở dữ liệu mẫu classicmodels tại đường link sau:</p>
                <a href="http://www.mysqltutorial.org/mysql-sample-database.aspx">http://www.mysqltutorial.org/mysql-sample-database.aspx</a>
                <p class="p1">Trong cơ sở dữ liệu classicmodels, chúng ta có bảng customers như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p1/img_0.png"
                     style="width:55%;">
                <p class="p1">Và để tìm thông tin của khách hàng có tên là Land Of Toys Inc., bạn sẽ query như sau:</p>

                <pre><code class="language-sql">
                    SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
                </code></pre>
                <p class="p1">MySQL biết rằng phải tìm ở bảng customres nhưng nó sẽ không biết bắt đầu từ đâu. Thậm chí
                    nó cũng không biết trước rằng có bao nhiêu kết quả . Do đó nó sẽ duyệt qua tất cả danh sách (ví dụ
                    hơn 500.000 khách hàng) để tìm thông tin về Julie King.</p>
                <p class="p1">Index là 1 file riêng biệt được lưu trữ ở máy chủ và chỉ chứa những Fields mà bạn muốn nó
                    chứa. Nếu bạn tạo 1 Index cho Field customerName (tên khách hàng), MySQL sẽ dễ dàng tìm ra được mã
                    số 1 cách nhanh chóng. Ví dụ như quyển sách, khi cần tìm 1 thông tin, ta thường lật ngay tới phần
                    “Mục Lục” và tìm từ đó để tăng tốc độ tìm. Và việc tạo ra Index này sẽ làm bạn thấy Database của bạn
                    chạy nhanh 1 cách khác thường.</p>
                <p class="p1">Nhưng trước khi sửa lại cấu trúc của table ở trên, chúng ta khảo sát 1 chút về cách theo
                    dõi kết quả “Tăng tốc MySQL” mà bạn đang làm. Hãy sử dụng lệnh <b>EXPLAIN</b></p>
                <p class="p1">Cú pháp:</p>
                <p class="p1"><b>EXPLAIN Query;</b></p>
                <p class="p1">Bằng lệnh này bạn sẽ nhận ra được với câu Query của bạn, điều gì đang xảy ra và kiểu kết
                    hợp (Join) nào đang diễn ra bên trong.</p>
                <pre><code class="language-sql">
                    EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
                </code></pre>

                <p class="p0">Bước 2: Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi</p>
                <pre><code class="language-sql">
                    EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p1/img_1.png"
                     style="width:70%;">

                <p class="p2">• <b>table</b> : Bảng nào đang liên quan đến output data</p>
                <p class="p2">• <b>type </b>: Đây là thông tin quan trọng, nó cho chúng ta biết kiểu query nào nó đang
                    sử dụng. Mức độ từ tốt nhất đến chậm nhất như sau:<b> system, const, eq_ref, ref, range, index,
                        all</b></p>

                <p class="p1">Nhìn lại câu query của chúng ta mới thật khủng khiếp. Không có Possible_keys nào được sử
                    dụng, MySQL phải duyệt qua 17123 bản ghi mới tìm ra cái ta cần (Hãy tưởng tượng 1 Forum sẽ có đến
                    hơn 500.000 bản ghi).</p>
                <p class="p1">Các bạn thêm chỉ mục cho bảng customers như sau:</p>
                <pre><code class="language-sql">
                    ALTER TABLE customers ADD INDEX idx_customerName(customerName);
                    EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p1/img_2.png"
                     style="width:70%;">

                <p class="p2"> •<b> possible_keys :</b> Đưa ra những Index có thể sử dụng để query </p>
                <p class="p2"> •<b> key : </b>và Index nào đang được sử dụng </p>
                <p class="p2"> •<b> key_len :</b> Chiều dài của từng mục trong Index </p>
                <p class="p2"> •<b> ref : </b>Cột nào đang sử dụng </p>
                <p class="p2"> •<b> rows :</b> Số hàng (rows) mà MySQL dự đoán phải tìm </p>
                <p class="p2"> •<b> extra : </b>Thông tin phụ, thật tệ nếu tại cột này là “using temporary” hay “using
                    file sort" </p>

                <p class="p1"> Tốt hơn nhiều rồi, kiểu <b>TYPE = ref</b> có nghĩa rằng MYSQL hiểu ra chỉ có 1 hàng đúng với ý
                    ta, và thể hiện qua cột <b>Rows = 1</b>, kiểu<b> key= idx_customerName</b> được sử dụng và chiều dài key_len là
                    52.Chỉ tìm 1 hàng tất nhiên rằng tốt hơn nhiều so với tìm 17123 hàng. </p>
                <p class="p1"> Vậy câu hỏi đặt ra là, nếu tôi muốn thêm Index cho những cột mà có thể có nhiều hơn 1 kết
                    quả khi query thì sao? </p>
                <p class="p1"> Bạn có thể Add index theo cặp như bạn add index cho cặp contactFirstName và
                    contactLastName. </p>

                <pre><code class="language-sql">
                    ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
                    EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p1/img_3.png"
                     style="width:70%;">
                <p class="p1">Để xoá chỉ mục trong bảng, bạn làm như sau:</p>
                <pre><code class="language-sql">
                    ALTER TABLE customers DROP INDEX idx_full_name;
                </code></pre>
            </div>
        </div>
    </div>
</div>
</body>
</html>
