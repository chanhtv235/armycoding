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
                <a href="${pageContext.request.contextPath}/course/module3/session5/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">5.Index, view, stored procedure, function, trigger</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Chỉ mục (index) trong mysql</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về chỉ mục(INDEX) trong SQL, các loại và cách sử dụng INDEX.</p>
                            <h2><span>Nội dung</span></h2>
                            <h3>Chỉ mục(index) là gì ?</h3>
                            <p>Chỉ mục (Index) là bảng tra cứu đặc biệt mà Database Search Engine có thể sử dụng để tăng
                                nhanh thời gian và hiệu suất thu thập dữ liệu. Hiểu đơn giản, một chỉ mục là một con trỏ
                                tới dữ liệu trong một bảng. Một chỉ mục trong một Database là tương tự như một chỉ mục
                                trong Mục lục của cuốn sách.</p>
                            <p>Ví dụ, nếu muốn tìm chiếu tất cả các trang trong một cuốn sách về một chủ đề nào đó, đầu
                                tiên ta nghĩ ngay đến mục lục của nó, mà liệt kê tất cả các chương, chủ đề theo thứ tự
                                và sau đó được tham chiếu tới một hoặc nhiều trang cụ thể. Khi đã có mục lục của cuốn
                                sách, việc tìm kiếm trang sách đó sẽ nhanh chóng và đỡ tốn công hơn rất nhiều so với
                                việc ta phải lật từng trang.</p>
                            <h3>Khi nào cần đánh chỉ mục ?</h3>
                            <p>Bất cứ khi nào thay đổi cấu trúc bảng dữ liệu thì đều cần Add Index lại, giống như khi
                                thay đổi nội dung quyển sách, ta cần phải làm lại mục lục. Vậy hãy cân nhắc, nếu
                                Database đang sử dụng INSERT hay UPDATE nhiều hơn là SELECT thì Index chỉ làm chậm thêm
                                mà thôi.</p>
                            <p>Lưu ý: Index giống như các tab. Chúng làm cho nó nhanh hơn để ta có thể tìm thấy những dữ
                                liệu bạn cần phù hợp với một số tiêu chí nhất định. Để tạo chỉ mục tốt chúng ta cần phải
                                suy nghĩ về cách ta sẽ được truy vấn dữ liệu như thế nào. Khi ta có thông tin này sẽ có
                                thể tạo index và nó sẽ tăng tốc độ truy vấn ngay lập tức.</p>
                            <h3>Các loại index trong MySQL</h3>
                            <p>MySQL cung cấp 3 kiểu index khác nhau cho data đó là B-Tree, Hash và R-Tree index. Hiểu
                                rõ về các kiểu index này sẽ giúp chúng ta tạo ra các loại index trong bảng một cách hiệu
                                quả hơn. Do R-Tree được sử dụng cho các loại dữ liệu không gian spacial data và thường
                                ít khi gặp phải nên sẽ tập trung vào tìm hiểu B-Tree và Hash:</p>
                            <h4>B-Tree Index</h4>
                            <p>B-Tree index có các đặc điểm sau:</p>
                            <ul>
                                <li>Dữ liệu index trong B-Tree được tổ chức và lưu trữ theo dạng cây(tree), tức là có
                                    root, branch, leaf. Giá trị của các node được tổ chức tăng dần từ trái qua phải.
                                </li>
                                <li>Khi truy vấn dữ liệu thì việc tìm kiếm trong B-Tree là 1 quá trình đệ quy, bắt đầu
                                    từ root node và tìm kiếm tới branch và leaf, đến khi tìm được tất cả dữ liệu - thỏa
                                    mãn với điều kiện truy vấn thì mới dùng lại.
                                </li>
                                <li>B-Tree index được sử dụng cho những column trong bảng khi muốn tìm kiếm 1 giá trị
                                    nằm trong khoảng nào đó. Ví dụ: tìm kiếm những sinh viên có điểm Toán từ 5-9.
                                </li>
                            </ul>
                            <h4>Hash Index</h4>
                            <p>Hash index có các đặc điểm sau:</p>
                            <ul>
                                <li>Hash index có một vài đặc điểm khác biệt so với Btree index.</li>
                                <li>Dữ liệu index được tổ chức theo dạng Key - Value được liên kết với nhau.</li>
                                <li>Khác với B-Tree, thì Hash index chỉ nên sử dụng trong các biểu thức toán tử là = và
                                    &lt;&gt;. Không sử dụng cho toán từ tìm kiếm 1 khoảng giá trị như &gt; hay &lt; .
                                </li>
                                <li>Không thể tối ưu hóa toán tử ORDER BY bằng việc sử dụng Hash index bởi vì nó không
                                    thể tìm kiếm được phần từ tiếp theo trong Order.
                                </li>
                                <li>Toàn bộ nội dung của Key được sử dụng để tìm kiếm giá trị records, khác với B-Tree
                                    một phần của node cũng có thể được sử dụng để tìm kiếm.
                                </li>
                                <li>Hash có tốc độ nhanh hơn kiểu Btree.</li>
                            </ul>
                            <h3>Cách sử dụng index</h3>
                            <ul>
                                <li>Tạo index trên một bảng:</li>
                            </ul>
                            <p class="language-Query"></p>
                            <pre><code class="language-sql">
CREATE UNIQUE INDEX index_name ON table_name;
                            </code></pre>
                            <p></p>
                            <p>Unique index được sử dụng không chỉ để tăng hiệu suất, mà còn cho mục đích toàn vẹn dữ
                                liệu. Một Unique index không cho phép bất kỳ bản sao giá trị nào được chèn vào trong
                                bảng.</p>
                            <ul>
                                <li>Tạo index cho cột được chỉ rõ trong bảng:</li>
                            </ul>
                            <p class="language-Query"></p>
                            <pre><code class="language-sql">
CREATE UNIQUE INDEX index_name ON table_name(column 1, column 2,...);
                            </code></pre>
                            <p></p>
                            <p><code>Lưu ý:</code> Trong trường hợp không chỉ rõ tên column được đánh index trong bảng,
                                mysql sẽ mặc định đánh index trên primary key hoặc các ràng buộc mang tính duy nhất
                                trong bảng databases.</p>
                            <ul>
                                <li>Các lệnh thêm index:</li>
                            </ul>
                            <ol>
                                <li>Thêm index cho bảng, với index mang tính duy nhất và không thể null</li>
                            </ol>
                            <p class="language-Query"></p>
                            <pre><code class="language-sql">
ALTER TABLE tbl_name ADD PRIMARY KEY (column 1, column 2,..)
                            </code></pre>
                            <p></p>
                            <ol start="2">
                                <li>Thêm index cho bảng, với index mang tính duy nhất nhưng có thể null</li>
                            </ol>
                            <p class="language-Query"></p>
                            <pre><code class="language-sql">
ALTER TABLE tbl_name ADD UNIQUE index_name (column 1, column 2,..)
                            </code></pre>
                            <p></p>
                            <ol start="3">
                                <li>Thêm index cho bảng, có thể trùng lặp</li>
                            </ol>
                            <p></p>
                            <pre><code class="language-sql">
ALTER TABLE tbl_name ADD INDEX index_name (column 1, column 2,..)
                            </code></pre>
                            <p></p>
                            <ol start="4">
                                <li>Thêm index đặc biệt thường cho tìm kiếm văn bản</li>
                            </ol>
                            <p class="language-Query"></p>
                            <pre><code class="language-sql">
ALTER TABLE tbl_name ADD FULLTEXT index_name (column 1, column 2,..)
                            </code></pre>
                            <p></p>
                            <ul>
                                <li>Các lệnh xóa index:</li>
                            </ul>
                            <p>Một chỉ mục có thể bị xóa bởi sử dụng lệnh DROP INDEX trong SQL. Cần phải cẩn thận trong
                                khi xóa một chỉ mục, bởi vì khi đó hiệu suất có thể chậm hơn hoặc không được cải
                                thiện.</p>
                            <p>Cú pháp cơ bản của lệnh DROP INDEX:</p>
                            <p class="language-Query"></p>
                            <pre><code class="language-sql">
DROP INDEX index_name;
                            </code></pre>
                            <p></p>
                            <h3>Một số lưu ý khi sử dụng chỉ mục</h3>
                            <ul>
                                <li>Các chỉ mục không nên được sử dụng trong các bảng nhỏ.</li>
                                <li>Bảng mà thường xuyên có các hoạt động update, insert.</li>
                                <li>Các chỉ mục không nên được sử dụng trên các cột mà chứa một số lượng lớn giá trị
                                    NULL.
                                </li>
                                <li>Không nên dùng chỉ mục trên các cột mà thường xuyên bị sửa đổi.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="modified">Last modified: Friday, 27 May 2022, 11:17 AM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
