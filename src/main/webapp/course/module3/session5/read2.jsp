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

                <div role="main" id="yui_3_17_2_1_1714161973063_24"><span id="maincontent"></span>
                    <h2>[Bài đọc] Cách sử dụng chỉ mục để cải thiện hiệu năng truy vấn của MySQL</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714161973063_23">
                        <div class="no-overflow" id="yui_3_17_2_1_1714161973063_22"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về từ khóa&nbsp;<span
                                    id="yui_3_17_2_1_1653621629325_20">EXPLAIN trong CSDL.</span></p>
                            <h2><span>Nội dung</span></h2>
                            <p>Các chỉ mục cơ sở dữ liệu trong MySQL cho phép bạn tăng tốc hiệu suất của các câu lệnh
                                truy vấn. Đối với các bảng nhỏ, một chỉ mục không giúp được nhiều. Tuy nhiên, nếu bạn có
                                các bảng có lượng dữ liệu lớn, các chỉ mục có thể cải thiện đáng kể hiệu năng.</p>
                            <p>Các hành vi sau đây là tất cả các dấu hiệu cho thấy các bảng có thể được hưởng lợi từ
                                việc thêm các chỉ mục:</p>
                            <ul id="yui_3_17_2_1_1714161973063_21">
                                <li>Trang web của bạn tải rất chậm hoặc hoàn toàn không.</li>
                                <li>Một ứng dụng không thể kết nối với cơ sở dữ liệu của nó.</li>
                                <li id="yui_3_17_2_1_1714161973063_20">Các truy vấn cơ sở dữ liệu được sao lưu.</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nếu bạn gặp bất kỳ vấn
                                đề nào trong số này, bạn nên phân tích các truy vấn cơ sở dữ liệu của mình và xem xét
                                thêm các chỉ mục.</p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Để xác định bảng nào
                                có thể có lợi từ việc sử dụng chỉ mục, bạn phải phân tích các truy vấn cơ sở dữ liệu của
                                mình. Câu lệnh EXPLAIN SELECT giúp bạn làm điều này:</p>
                            <p>&nbsp;</p>
                            <p><b>EXPLAIN SELECT * FROM table_name WHERE conditions \G</b></p>
                            <p><b>&nbsp;</b></p>
                            <p>Đầu ra từ câu lệnh EXPLAIN SELECT cho thấy cách trình tối ưu hóa truy vấn MySQL sẽ thực
                                hiện truy vấn. Ví dụ, hãy xem xét đầu ra sau:</p>
                            <p>&nbsp;</p>
                            <div>
                                <p></p>
                                <pre><code class="language-sql">
EXPLAIN SELECT title FROM employees WHERE lastname LIKE 'T%' \G

*************************** 1. row ***************************

  id: 1
  select_type: SIMPLE
  table: employees
  type: ALL
  possible_keys: NULL
  key: NULL
  key_len: NULL
  ref: NULL
  rows: 142
  Extra: Using where
  1 row in set (0.00 sec)
                            </code></pre>
                                <p></p>
                            </div>
                            <p>&nbsp;</p>
                            <p>Trong ví dụ này đầu ra:</p>
                            <ul>
                                <li>Các giá trị possible_keys và key đều là NULL, điều này cho thấy rằng MySQL không có
                                    chỉ mục mà nó có thể sử dụng cho truy vấn này.
                                </li>
                                <li>Giá trị rows chỉ ra rằng MySQL sẽ đọc 142 hàng cho truy vấn này. Nếu có tổng số 142
                                    hàng trong bảng, điều này có nghĩa là MySQL phải kiểm tra từng hàng để tạo tập kết
                                    quả. Điều này có thể mất khá nhiều thời gian cho một bảng lớn.
                                </li>
                            </ul>
                            <p>&nbsp;</p>
                            <p>Mặt khác, nếu chúng ta tạo một chỉ mục có tên là index_name cho cột lastname, thì MySQL
                                có thể tạo đầu ra sau cho cùng một truy vấn:</p>
                            <p>&nbsp;</p>
                            <pre><code class="language-sql">
EXPLAIN SELECT title FROM employees WHERE lastname LIKE 'T%' \G

*************************** 1. row ***************************

  id: 1
  select_type: SIMPLE
  table: employees
  type: range
  possible_keys: index_name
  key: index_name
  key_len: 22
  ref: NULL
  rows: 17
  Extra: Using where; Using index
  1 row in set (0.00 sec)
                            </code></pre>
                        </div>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Như bạn có thể thấy, các
                            giá trị possible_keys và key có thể chỉ ra rằng MySQL đã tìm thấy một chỉ mục mà nó có thể
                            sử dụng để tối ưu hóa truy vấn. Ngoài ra, MySQL sẽ chỉ đọc 17 hàng để tạo tập kết quả, thay
                            vì tất cả 142 hàng. (Điều này có nghĩa là bảng có 17 hàng trong đó lastname bắt đầu bằng
                            “T”) Cuối cùng, giá trị Extra cũng chỉ ra rằng MySQL sẽ sử dụng một chỉ mục cho truy
                            vấn.</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <div id="tt" style="opacity: 0; display: none; width: 300px; top: 960px; left: 232px;">
                            <div id="tttop"></div>
                            <div id="ttcont" style="font-size: 100%;">id: 1 &nbsp; select_type: SIMPLE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                table: employees &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; type: ALL
                                possible_keys: NULL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; key: NULL
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; key_len: NULL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                ref: NULL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rows: 142 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Extra: Using where 1 row in set (0.00 sec)
                            </div>
                            <div id="ttbot"></div>
                        </div>
                        </pre>
                    </div>
                </div>
                <div class="modified">Last modified: Friday, 27 May 2022, 11:12 AM</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
