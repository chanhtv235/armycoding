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
                <a href="${pageContext.request.contextPath}/course/module2/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Kế thừa trong Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Lớp Object trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Tính đa hình trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Object cloning trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Lớp Object trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Các phương thức của lớp Object</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Lớp Object trong java </h2>
                        <p> Mặc định lớp Object là lớp cha của tất cả các lớp trong java. Nói cách khác nó là một lớp cáo nhất trong java. </p>
                        <img class="alignleft wp-image-10 size-full" src="https://viettuts.vn/images/java/lop-object-trong-java.jpg" alt="lớp object trong java">
                        <div class="clearer"></div>
                        <p> Sử dụng lớp Object là hữu ích nếu bạn muốn tham chiếu bất kỳ đối tượng nào mà bạn chưa biết kiểu dữ liệu của đối tượng đó. Chú ý rằng biến tham chiếu của lớp cha có thể tham chiếu đến đối tượng của lớp con được gọi là <em>upcasting</em>. </p>
                        <p> <strong>Ví dụ:</strong> giả sử phương thức getObject() trả về một đối tượng nhưng nó có thể là bất kỳ kiểu nào như Employee,Student, ... chúng ta có thể sử dụng biến tham chiếu của lớp Object để tham chiếu tới đối tượng đó.</p>
                        <div class="codeblock">
                            <div><div id="highlighter_260762" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">Object obj=getObject(); </code><code class="java comments">// chúng ta không biết đối tượng gì được trả về từ phương thức này.</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Lớp Object cung cấp một vài cách xử lý chung cho tất cả các đối tượng như đối tượng có thể được so sánh, đối tượng có thể được cloned, đối tượng có thể được notified... </p>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Các phương thức của lớp Object </h2>
                        <p> Lớp Object cung cấp các phương thức như trong bảng sau: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th> Phương thức </th>
                                <th> Mô tả </th>
                            </tr>
                            <tr>
                                <td> public final Class getClass() </td>
                                <td> trả về đối tượng lớp Class của đối tượng hiện tại. Từ lớp Class đó có thể lấy được các thông tin metadata của class hiện tại. </td>
                            </tr>
                            <tr>
                                <td> public int hashCode() </td>
                                <td> trả về số hashcode cho đối tượng hiện tại. </td>
                            </tr>
                            <tr>
                                <td> public boolean equals(Object obj) </td>
                                <td> so sánh đối tượng đã cho với đối tượng hiện tại. </td>
                            </tr>
                            <tr>
                                <td> protected Object clone() throws CloneNotSupportedException </td>
                                <td> tạo và trả về bản sao chép (clone) của đối tượng hiện tại. </td>
                            </tr>
                            <tr>
                                <td> public String toString() </td>
                                <td> trả về chuỗi ký tự đại diện của đối tượng hiện tại. </td>
                            </tr>
                            <tr>
                                <td> public final void notify() </td>
                                <td> đánh thức một luồng, đợi trình giám sát của đối tượng hiện tại. </td>
                            </tr>
                            <tr>
                                <td> public final void notifyAll() </td>
                                <td> đánh thức tất cả các luồng. đợi trình giám sát của đối tượng hiện tại. </td>
                            </tr>
                            <tr>
                                <td> public final void wait(long timeout)throws InterruptedException </td>
                                <td> làm cho Thread hiện tại đợi trong khoảng thời gian là số mili giây cụ thể, tới khi Thread khác thông báo (gọi phương thức notify() hoặc notifyAll()). </td>
                            </tr>
                            <tr>
                                <td> public final void wait(long timeout,int nanos)throws InterruptedException </td>
                                <td> làm cho Thread hiện tại đợi trong khoảng thời gian là số mili giây và nano giây cụ thể, tới khi Thread khác thông báo (gọi phương thức notify() hoặc notifyAll()). </td>
                            </tr>
                            <tr>
                                <td> public final void wait()throws InterruptedException </td>
                                <td> làm Thread hiện tại đợi, tới khi Thread khác thông báo (gọi phương thức notify() hoặc notifyAll()). </td>
                            </tr>
                            <tr>
                                <td> protected void finalize()throws Throwable </td>
                                <td> Được gọi bởi Garbage Collector trước khi đối tượng bị dọn rác. </td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Tính đa hình trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Object cloning trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
