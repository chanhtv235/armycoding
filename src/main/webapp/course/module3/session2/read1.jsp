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
                <div role="main" id="yui_3_17_2_1_1714148709432_24"><span id="maincontent"></span>
                    <h2>[Bài đọc] Hướng dẫn nhanh về thiết kế CSDL Quan hệ</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714148709432_23">
                        <div class="no-overflow" id="yui_3_17_2_1_1714148709432_22"><h2 dir="ltr"><span>Giới thiệu</span></h2>
                            <p dir="ltr" id="yui_3_17_2_1_1714148709432_21"><span>Cơ sở Dữ Liệu Quan hệ</span><span
                                    id="yui_3_17_2_1_1714148709432_20">&nbsp;được đề xuất bởi Edgar Codd (của IBM Research) khoảng năm 1969. Từ đó nó đã trở thành mô hình cơ sở dữ liệu vượt trội hơn cả cho các ứng dụng thương mại (so với các mô hình cơ sở dữ liệu khác như phân cấp, mạng hay đối tượng). Hiện nay, có rất nhiều Hệ Quản trị Cơ sở Dữ liệu Quan hệ (RDBMS) bản thương mại như Oracle, IBM DB2 và Microsoft SQL Server. Ngoài ra còn có nhiều HQT CSDL miễn phí và mã nguồn mở ví dụ như MySQL, MariaDB, mSQL (mini-SQL), PostgreSQL và Embedded JavaDB (Apache Derby)</span>
                            </p>
                            <p dir="ltr"><span>Một CSDL Quan Hệ thiết lập dữ liệu trong các&nbsp;</span><span>bảng&nbsp;</span><span>(hoặc&nbsp;</span><span>quan hệ</span><span>). Một bảng (table) được tạo thành từ các dòng (row) và cột (columns). Một dòng cũng được gọi là một&nbsp;</span><span>bản ghi (record)</span><span>. Một cột (column) cũng được gọi là&nbsp;</span><span>trường</span><span>&nbsp;(hoặc&nbsp;</span><span>thuộc tính</span><span>). Một bảng CSDL tương tự như một bảng tính. Tuy nhiên, các mối quan hệ được tạo ra giữa các bảng cho phép CSDL Quan Hệ lưu trữ và truy xuất có chọn lựa trên một lượng rất lớn dữ liệu một cách hiệu quả.</span>
                            </p>
                            <p dir="ltr"><span>Một ngôn ngữ được gọi là SQL (Structured Query Language - Ngôn ngữ Truy vấn có Cấu trúc) đã được phát triển để làm việc với CSDL quan hệ.</span>
                            </p>
                            <h2 dir="ltr"><span>Mục đích của việc thiết kế CSDL</span></h2>
                            <p dir="ltr"><span>Một cơ sở dữ liệu được thiết kế tốt sẽ:</span></p>
                            <ul>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Loại bỏ sự dư thừa dữ liệu: Cùng một đoạn dữ liệu sẽ không được lưu trữ ở nhiều nơi, bởi vì việc trùng lặp dữ liệu không chỉ lãng phí không gian lưu trữ mà quan trọng hơn còn dễ dẫn đến sự không nhất quán.</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Đảm bảo tính toàn vẹn và chính xác của dữ liệu</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>…</span></p>
                                </li>
                            </ul>
                            <h2 dir="ltr"><span>Quy trình thiết kế CSDL quan hệ</span></h2>
                            <p dir="ltr"><span>Thiết kế CSDL mang tính nghệ thuật hơn là khoa học, vì bạn phải đưa ra nhiều quyết định. CSDL thường sẽ được tùy chỉnh sao cho phù hợp với một ứng dụng cụ thể. Không có hai ứng dụng nào tùy chỉnh giống nhau cả, và do đó, không có 2 CSDL nào là giống nhau. Các nguyên tắc (thường là về việc không nên làm gì chứ không phải là phải làm gì) được cung cấp để đưa ra các quyết định thiết kế, nhưng quyết định cuối cùng phụ thuộc vào bạn - nhà thiết kế.</span>
                            </p>
                            <h3 dir="ltr"><span>Bước 1: Xác định mục đích của CSDL(Phân tích Yêu cầu)</span></h3>
                            <p dir="ltr"><span>Thu thập các yêu cầu và xác định mục tiêu của CSDL, v.v...</span></p>
                            <p dir="ltr"><span>Phác thảo các mẫu biểu mẫu đầu vào, các truy vấn và báo cáo, các trợ giúp.</span></p>
                            <h3 dir="ltr"><span>Bước 2: Tập hợp Dữ liệu, Tổ chức các bảng và Chỉ định các khóa chính</span></h3>
                            <p dir="ltr"><span>Một khi bạn đã xác định được mục đích của CSDL, hãy tập hợp các dữ liệu cần phải lưu trữ vào CSDL này. Hãy chia các dữ liệu vào các bảng dựa theo chủ thể (subject). Chọn một cột(hoặc một vài) làm&nbsp;</span><span>khóa chính</span><span>, để chúng đại diện cho tính duy nhất của mỗi bản ghi.</span>
                            </p>
                            <h4 dir="ltr"><span>Khóa chính (Primary Key/PK)</span></h4>
                            <p dir="ltr"><span>Mô hình quan hệ được thiết kế để một bảng không thể có 2 dòng dữ liệu trùng lặp (giống hệt nhau), bởi vì điều này sẽ tạo ra sự nhập nhằng trong việc truy vấn. Để đảm bảo tính duy nhất, mỗi bảng nên có 1(hoặc 1 tập hợp) cột được gọi là khóa chính, là định danh duy nhất cho mỗi bản ghi trong bảng. Ví dụ với bảng Customers thì customerID có thể được dùng như khóa chính để đảm bảo tính duy nhất cho dữ liệu; tương tự như productCode cho bảng Products; hay isbn cho bảng Books. Khóa chính được gọi là khóa đơn khi nó chỉ là một cột; nó được gọi là khóa tổ hợp nếu nó được tạo thành từ một vài cột.</span>
                            </p>
                            <p dir="ltr"><span>Hầu hết các CSDL Quan hệ đều tạo các chỉ mục dựa trên khóa chính để việc tìm kiếm và nhận về dữ liệu được nhanh hơn.</span>
                            </p>
                            <p dir="ltr"><span>Khóa chính cũng được sử dụng để tham chiếu đến các bảng khác (Sẽ được làm rõ sau)</span>
                            </p>
                            <p dir="ltr"><span>Bạn phải quyết định các cột nào sẽ được sử dụng làm khóa chính. Quyết định này có thể ban đầu không đúng đắn nhưng khóa chính sẽ có các thuộc tính sau:</span>
                            </p>
                            <ul>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Giá trị của khóa chính phải là duy nhất ( Nghĩa là không có giá trị trùng lặp). Ví dụ: customerName có thể không thích hợp để làm khóa chính cho bảng Customers, vì 2 khách hàng có thể cùng tên.</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr">
                                        <span>Khóa chính sẽ luôn có giá trị. Nói cách khác không được phép NULL (Not Null)</span></p>
                                </li>
                            </ul>
                            <p dir="ltr"><span>Xem xét các bước sau trong việc lựa chọn khóa chính:</span></p>
                            <ul>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Khóa chính nên đơn giản và quen thuộc, ví dụ: employeeID (mã nhân viên) là Khóa chính cho bảng Employees, isbn (mã sách) cho bảng books.&nbsp;</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Giá trị của khóa chính thì không được phép thay đổi. Nếu thay đổi giá trị của nó, sẽ phải thay đổi tất cả các chỗ có tham chiếu đến nó; nếu không những chỗ tham chiếu đó sẽ bị mất. Ví dụ: phoneNumber không nên sử dụng làm khóa chính cho table Customers, bởi vì nó có thể thay đổi.&nbsp;</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Khóa chính thường sử dụng kiểu integer (hoăc number). nhưng cũng có thể là các loại khác, ví dụ như chuỗi. Tuy nhiên tốt nhất là nên sử dụng cột kiểu số làm khóa chính.&nbsp;</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Khóa chính có thể giữ một number tùy ý. Hầu hết các RDBMS đều hỗ trợ auto-increment (Hoặc kiểu số tự tăng cho number) cho kiểu integer, ở đây value của khóa chính của record mới (sẽ là current max value + 1). Đừng chú ý đến số number này vì nó không chứa thông tin thực tế ví dụ như số điện thoại, do đó fact-less number là ý tưởng tốt cho khóa chính, vì nó không thay đổi.</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Khóa chính thường chỉ là một cột (ví dụ: customerID hoặc productCode). Nhưng nó cũng có thể bao gồm nhiều cột, nên sử dụng càng ít cột càng tốt.</span>
                                    </p>
                                </li>
                            </ul>
                            <p dir="ltr"><span>Hãy xem ví dụ sau: Một bảng Customers bao gồm các cột lastName, firstName, phoneNumber, address, city, state, zipCode. Những đề cử cho khóa chính sẽ là name=(lastName, firstName), phoneNumber, Address1=(address, city, state), Address1=(address, zipCode). OK giờ hãy phân tích Name không phải là duy nhất, Số điện thoại và địa chỉ có thể thay đổi. Do đó tốt hơn hết là sử dụng fact-less auto-increment( auto number), như customerID làm khóa chính.</span>
                            </p>
                            <h3 dir="ltr"><span>Step 3: Tạo mối quan hệ giữa các bảng</span></h3>
                            <p dir="ltr"><span>Một CSDL bao gồm các bảng không liên kết và độc lập… Sức mạnh của CSDL quan hệ nằm ở chỗ mối quan hệ giữa các bảng được định nghĩa. Khía cạnh quan trọng nhất của việc thiết kế một CSDL quan hệ là xác định được mối quan hệ giữa các bảng. Các loại quan hệ gồm:</span>
                            </p>
                            <ol>
                                <li dir="ltr">
                                    <p dir="ltr"><span>one-to-many(một ~ nhiều\1-n)</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>many-to-many(nhiều~ nhiều\n-n)</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>one-to-one(một~một\1-1)</span></p>
                                </li>
                            </ol>
                            <h4 dir="ltr"><span>One-to-Many</span></h4>
                            <p dir="ltr"><span>Với CSDL “class roster”, một giáo viên có thể dạy 0 hoặc nhiều lớp, trong khi đó 1 lớp thì chỉ có một(và chỉ một) giáo viên mà thôi (tất nhiên là tùy bối cảnh). Với CSDL “company”, một quản lý có thể quản lý 0 hoặc nhiều nhân viên viên, trong khi một nhân viên thì chỉ có một (và chỉ một) quản lý mình. Với CSDL “product sales”, một khách hàng có thể đặt nhiều đơn hàng, trong khi một đơn hàng thì chỉ được đặt bởi 1 khách hàng. Mối quan hệ như này thì được biết đến như là&nbsp;</span><span>one-to-many</span><span>.&nbsp;</span>
                            </p>
                            <p dir="ltr"><span>Mối quan hệ one-to-many không thể được thể hiện là một bảng đơn. Ví dụ, với CSDL “class roster”, chúng ta có thể bắt đầu với việc tạo bảng giáo viên, cái mà sẽ lưu trữ thông tin về giáo viên( như tên, địa chỉ, số điện thoại và email). Để lưu trữ các lớp được giảng dạy bởi mỗi giáo viên, chúng ta có thể tạo các cột sau ở trong bảng giáo viên như class1, class2, class3, nhưng phải đối mặt với một vấn đề ngay lặp tức là tạo bao nhiều cột là đủ. Mặt khác nếu ta bắt đầu với một bảng là Lớp, lưu trữ các thông tin của một lớp như (mã lớp, số ngày một tuần, thời gian bắt đầu, thời gian kết thúc); chúng ta có thể tạo thêm cột trong bảng lớp để lưu trữ thông tin một nhân viên(như tên, địa chỉ, số điện thoại, email). Tuy nhiên, vì một giáo viên có thể dạy nhiều lớp, nên dữ liệu của giáo viên sẽ bị trùng lặp ở nhiều dòng trong các bảng.</span>
                            </p>
                            <p dir="ltr"><span>Để hỗ trợ mối quan hệ one-to-many, chúng ta cần thiết kế 2 bảng: một bảng Lớp lưu trữ thông tin về lớp học với classID làm khóa chính; và một bảng là Giáo viên lưu trữ thông tin giáo viên với teacherID là khóa chính. Sau đó, chúng ta có thể tạo tạo mối quan hệ one-to-many bằng cách lưu trữ khóa chính của bảng giáo viên (ở đây là teacherID)(là phía one- hay còn gọi là bảng cha) trong bảng lớp( gọi là “many” hay còn gọi là table con), như minh họa dưới đây.</span>
                            </p>
                            <p dir="ltr" style="text-align: center;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50247/mod_page/content/5/Screen%20Shot%202019-10-30%20at%2014.37.32.png"
                                    width="381" height="209"></p>
                            <p dir="ltr">
                                <span>Cột teacherID trong bảng Classess thì là&nbsp;</span><span>Foreign Key (Khóa Ngoại\FK).</span><span>&nbsp;FK ở bảng con là khóa chính của bảng cha, được sử dụng để tham chiếu đến bảng cha. Lưu ý rằng với mỗi giá trị trong bảng cha, có thể có 0 oặc nhiều dòng trong bảng con. Đối với mỗi giá trị trong bảng&nbsp; con, thì có một và chỉ một dòng ở bảng cha.</span>
                            </p>
                            <h4 dir="ltr"><span>Many-to-Many</span></h4>
                            <p dir="ltr"><span>Với CSDL “product sales”, một khách hàng có thể đặt một hoặc nhiều sản phẩm; và sản phẩm có thể cónhiều đơn hàng. với CSDL “bookstore”, một cuốn sách được viết bởi một hoặc nhiều tác giả; trong khi một tác giả có thể viết 0 hoặc nhiều cuốn sách. Mối quan hệ này gọi là&nbsp;</span><span>many-to-many</span><span>.</span>
                            </p>
                            <p dir="ltr"><span>Hãy xem ví dụ sau với CSDL “product sales”. Chúng ta bắt đầu với 2 bảng: Products và Orders. Bảng Products bao gồm các thông tin(như name, description và quantityInStock) với productID là khóa chính. Bảng orders bao gồm thông tin đặt hàng (customerID, dateOrderd, dateRequired và status). Một lần nữa, chúng ta không thể lưu trữ tất cả thông tin về sản phẩm đã đặt hàng trong bảng Orders, vì chúng ta không biết có bao nhiêu cột để lưu trữ cho các sản phẩm này. Chúng ta cũng không thể lưu trữ thông tin về đặt hàng trong bảng Products.</span>
                            </p>
                            <p dir="ltr"><span>Để hỗ trợ cho mối quan hệ many-to-many, chugns ta cần tạo 3 bảng (được biết đến như là junction table hay bảng nối 2 bảng nhiều nhiều), nói OrderDetails (hoặc OrderLines), nơi mà mỗi dòng đại diện cho một sản phẩm của một đơn hàng cụ thể. Đối với bảng OrderDetails, khoá chính bao gồm hai cột: orderID và productID, xác định duy nhất từng dòng. Các cột orderID và productID trong bảng OrderDetails được sử dụng để tham chiếu đến các bảng Orders và Products, do đó chúng cũng là các FK trong bảng OrderDetails.</span>
                            </p>
                            <p dir="ltr" style="text-align: center;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50247/mod_page/content/5/Screen%20Shot%202019-10-30%20at%2014.39.26.png"
                                    width="519" height="329"></p>
                            <p dir="ltr" style="text-align: center;"></p>
                            <p dir="ltr"><span>Mối quan hệ many-to-many được thực hiện như là hai mối quan hệ một-nhiều, với sự điều hướng của junction table(Table giao giữa 2 table nhiều nhiều)</span>
                            </p>
                            <ol>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Một đơn đặt hàng có nhiều sản phẩm trong OrderDetails. Một sản phẩm OrderDetails thuộc một đơn hàng cụ thể..</span>
                                    </p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Một sản phẩm có thể xuất hiện trong nhiều OrderDetails. Mỗi sản phẩm OrderDetails chỉ định một sản phẩm.</span>
                                    </p>
                                </li>
                            </ol>
                            <h4 dir="ltr"><span>One-to-One</span></h4>
                            <p dir="ltr"><span>Với CSDL "product sales", một sản phẩm có thể có các thông tin tùy chọn bổ sung như image, moreDescription và comment. Khi giữ chúng trong bảng Products sẽ dẫn đến empty spaces (trong các record không có các dữ liệu tùy chọn này). Hơn nữa, các dữ liệu lớn có thể làm giảm hiệu năng(perfomance) của CSDL.</span>
                            </p>
                            <p dir="ltr"><span>Thay vào đó, chúng ta có thể tạo một bảng khác (ProductDetails, ProductLines hoặc ProductExtras) để lưu trữ dữ liệu không bắt buộc này. Một bản ghi sẽ chỉ được tạo cho những sản phẩm với dữ liệu tùy chọn. Hai bảng, Product và ProductDetails, thể hiện mối quan hệ one-to-one. Nghĩa là, đối với mỗi dòng trong bảng cha, có tối đa một dòng (có thể là không có row nào) trong bảng con. Cùng là cột productID sẽ phải được sử dụng làm khóa chính cho cả hai bảng.</span>
                            </p>
                            <p dir="ltr"><span>Một vài CSDL giới hạn số lượng cột có thể được tạo ra trong một bảng. Bạn có thể sử dụng mối quan hệ one-to-one để chia dữ liệu thành hai bảng. Mối quan hệ one-to-one cũng hữu dụng trong việc lưu trữ các dữ liệu sensitive trong các table secure, trong khi các dữ liệu non-sensitive thì được lưu ở bảng chính.</span>
                            </p>
                            <p style="text-align: center;"><span>&nbsp;<img
                                    src="https://james.codegym.vn/pluginfile.php/50247/mod_page/content/5/Screen%20Shot%202019-10-30%20at%2014.40.39.png"
                                    width="374" height="177"></span></p>
                            <p dir="ltr"><span>Các kiểu dữ liệu của cột.</span></p>
                            <p dir="ltr"><span>Bạn cần lựa chọn một kiểu dữ liệu cho mỗi cột.Các loại dữ liệu phổ biến bao gồm: integers, floating-point numbers, string (hoặc text), date/time, binary, collection (như enumeration và set).</span>
                            </p>
                            <h3 dir="ltr"><span>Step 4: Tinh chỉnh và chuẩn hóa thiết kế</span></h3>
                            <p dir="ltr"><span>Ví dụ,</span></p>
                            <ul>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Thêm cột,</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr">
                                        <span>Tạo thêm table mới cho dữ liệu tùy chọn bằng cách sử dụng mối quan hệ một-một,</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Chia một bảng lớn thành hai bảng nhỏ hơn</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>v.v...</span></p>
                                </li>
                            </ul>
                            <h4 dir="ltr"><span>Chuẩn hóa</span></h4>
                            <p dir="ltr"><span>Áp dụng các quy tắc chuẩn hóa để kiểm tra xem CSDL của bạn là chính xác và tối ưu về mặt cấu trúc.&nbsp;</span>
                            </p>
                            <p dir="ltr"><span>Chuẩn thứ nhất(1NF)</span><span>: một bảng được gọi là thuộc chuẩn 1NF nếu giá trị của mỗi trường bao gồm 1 giá trị, không phải là một danh sách giá trị. Trường này còn gọi là&nbsp;</span><span>atomic</span><span>. 1NF cũng nghiêm cấm lặp lại các nhóm columns như tem1, item2,....,itemN. Thay vào đó, nên tạo một bảng khác sử dụng mối quan hệ one-to-many.</span>
                            </p>
                            <p dir="ltr"><span>Chuẩn thứ hai (2NF)</span><span>: một bảng được gọi là thuộc chuẩn 2NF, nếu nó đã thuộc 1NF và mỗi cột không phải là khóa chính không phụ thuộc hoàn toàn vào khóa chính. Hơn nữa, nếu khóa chính được tạo ra từ nhiều cột, mỗi cột không phải là khóa chính sẽ phụ thuộc vào toàn bộ tập hợp và không phải là một phần của nó.</span>
                            </p>
                            <p dir="ltr"><span>Ví dụ, khóa chính của table OrderDetails gồm orderID và productID. Nếu unitPrice chỉ phụ thuộc vào productID, nó sẽ không được giữ trong bảng OrderDetail(nhưng nằm trong bảng Products). &nbsp;Mặt khác, nếu unitPrice phụ thuộc vào sản phẩm cũng như đặt hàng, thì nó sẽ được lưu giữ trong bảng OrderDetails.&nbsp;</span>
                            </p>
                            <p dir="ltr"><span>Chuẩn thứ ba (3NF)</span><span>: Một bảng là 3NF, nếu nó là 2NF và các cột không phải là khóa &nbsp;là độc lập với nhau. Nói cách khác, các cột không phải là khóa là phụ thuộc vào khóa chính, chỉ khóa chính và không gì khác. Ví dụ: giả sử chúng ta có một bảng Products với các cột như productID (khóa chính), name và unitPrice. Cột discountRate sẽ không nằm trong bảng Products nếu nó cũng phụ thuộc unitPrice, cột mà không phải là một phần của khóa chính.</span>
                            </p>
                            <p dir="ltr"><span>Chuẩn cao cấp hơn:&nbsp;</span><span>3NF cũng có những bất cập của nó, dẫn đến có một chuẩn cao hơn 3NF, như &nbsp;chuẩn Boyce/Codd, chuẩn 4NF và 5NF, những chuẩn này vượt quá phạm vị của bài hướng dẫn này. Đôi khi, vì lý do hiệu năng bạn có thể phá vỡ một số quy tắc chuẩn hóa(ví dụ: tạo một cột là totalPrice trong table Order lẽ ra dữ liệu được lấy từ bảng orderDetails); hoặc bởi vì end-user đã yêu cầu nó. Hãy chắc chắn rằng bạn nhận thức đầy đủ về nó, sử lý nó bằng lập trình và có quyết định bằng tài liệu.&nbsp;</span>
                            </p>
                            <h4 dir="ltr"><span>Các quy tắc về tính toàn vẹn</span></h4>
                            <p dir="ltr">
                                <span>Bạn cũng nên áp dụng các quy tắc toàn vẹn để kiểm tra tính toàn vẹn cho thiết kế của bạn:</span>
                            </p>
                            <p dir="ltr"><span>Quy tắc về tính toàn vẹn của Entity</span><span>: Khóa chính không được phép NULL. Nếu không, nó không thể xác định tính duy nhất cho row dữ liệu. Đối với dạng composite key(tổ hợp key) được tạo bởi nhiều cột, thì tất cả các column cũng không được phép NULL. Hầu hết các RDBMS kiểm tra và tuân theo quy tắc này.</span>
                            </p>
                            <p dir="ltr"><span>Quy tắc về tính toàn vẹn của tham chiếu&nbsp;</span><span>: Mỗi giá trị của FK phải khớp với giá trị khóa chính trong table được tham chiếu(bảng cha)</span>
                            </p>
                            <ul>
                                <li dir="ltr">
                                    <p dir="ltr">
                                        <span>Có thể chèn một dòng với FK trong bảng con chỉ khi nó tồn tại trong bảng cha.</span></p>
                                </li>
                                <li dir="ltr">
                                    <p dir="ltr"><span>Nếu trong bảng cha value của khóa thay đổi( ví dụ: row được cập nhật hoặc xóa), thì tất cả các dòng có FK trong các bảng con cũng phải được xử lý tương ứng. Bạn có thể (a): không cho phép thay đổi; (b) tự động cập nhật thay đổi(hoặc xóa bản ghi) trong các bảng con tương ứng; gán giá trị khóa trong bảng con bằng NULL.</span>
                                    </p>
                                </li>
                            </ul>
                            <p dir="ltr"><span>Hầu hết các RDBMS có thể được thiết lập cho việc kiểm tra và đảm bảo tính toàn vẹn của tham chiếu dữ liệu giữa các bảng, theo các phương pháp đã được chỉ định.</span>
                            </p>
                            <p dir="ltr"><span>Tính toàn vẹn của nghiệp vụ logic</span><span>: Bên cạnh hai quy tắc tổng quát kể trên, có thể có tính toàn vẹn(validation) liên quan đến business logic, ví dụ: zipcode phải cớ giới hạn là 5 chữ số, thời gian giao hàng sẽ là trong giờ làm việc; số lượng đơn hàng phải bằng hoặc nhỏ hơn số lượng có trong kho,...Có thể được thự hiện trong các quy tắc về validation(đối với các column được chỉ định) hoặc trong xử lý lập trình.</span>
                            </p>
                            <h4 dir="ltr"><span>Column Indexing: Đánh dấu chỉ mục cho column</span></h4>
                            <p dir="ltr"><span>Bạn có thể tạo index cho các cột đã chọn tạo điều kiện cho việc tìm kiệm và truy xuất dữ liệu. Một chỉ mục(index) là một tệp structured giúp tăng tốc độ SELECT truy cập dữ liệu, nhưng cũng có thể làm cho việc INSERT, UPDATE và DELETE bị chậm đi. Nếu không đánh chỉ mục, thì khi xử lý một câu truy vấn SELECT với một tiêu chí nào đó( ví dụ SELECT * FROM Customers WHERE name = ‘Tan Ah Teck’), lúc này CSDL engine sẽ cần phải so sánh tất cả các bản ghi trong bảng. Khi một chỉ mục được đánh dấu(ví dụ: cấu trúc BTREE) có thể đưa ra kết quả mà không cần so sánh tất cả các bản ghi. Tuy nhi chỉ mục này cần chạy lại bất cứ khi nào một bản ghi thay đổi, cái mà tổng kết quả liên quan đến việc xử dụng chỉ mục.</span>
                            </p>
                            <p dir="ltr"><span>Chỉ mục có thế được định nghĩa cho một cột, một tập hợp các cột ( được gọi là chỉ mục móc nối), hoặc một phần của column (ví dụ: 10 ký tự đầu tiên của VARCHAR(100))( được gọi là chỉ mục một phần). Lưu ý có thể tạo nhiều hơn 1 chỉ mục trong một bảng. Ví dụ: nếu bạn thường tìm kiếm customer bằng cách sử dụng customerName hoặc phoneNumber, bạn có thể tăng tốc độ tìm kiếm bằng cách tạo một chỉ mục trên cột customerName, cũng như cột phoneNumber. Hầu hết các RDBMS tự động xây dựng chỉ mục trên các khóa chính.</span>
                            </p></div>
                    </div>
                    <div class="modified">Last modified: Monday, 13 March 2023, 10:27 AM</div>
                </div>
               
        </div>
    </div>
    </div>
</body>
</html>
