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
                <a href="/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Kiểu dữ liệu trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Biến trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Ép kiểu trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Trong Java, các kiểu dữ liệu được chia thành hai loại: </p>
                        <ul>
                            <li>Các kiểu dữ liệu nguyên thủy</li>
                            <li>Các kiểu dữ liệu đối tượng</li>
                        </ul>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">1. Kiễu dữ liệu nguyên thủy</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">2. Kiểu dữ liệu đối tượng</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> 1. Kiễu dữ liệu nguyên thủy </h2>
                        <p> Java cung cấp các kiểu dữ liệu cơ bản như sau: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th> <strong>Kiểu dữ liệu</strong> </th>
                                <th> <strong>Mô tả</strong> </th>
                            </tr>
                            <tr>
                                <td> <strong>byte </strong></td>
                                <td> Dùng để lưu dữ liệu kiểu số nguyên có kích thước một byte (8 bít). Phạm vi biểu diễn giá trị từ -128 đến 127. Giá trị mặc định là 0.</td>
                            </tr>
                            <tr>
                                <td> <strong>char</strong> </td>
                                <td> Dùng để lưu dữ liệu kiểu kí tự hoặc số nguyên không âm có kích thước 2 byte (16 bít). Phạm vi biểu diễn giá trị từ 0 đến u\ffff. Giá trị mặc định là 0. </td>
                            </tr>
                            <tr>
                                <td> <strong>boolean </strong></td>
                                <td> Dùng để lưu dữ liệu chỉ có hai trạng thái đúng hoặc sai (độ lớn chỉ có 1 bít). Phạm vi biểu diễn giá trị là {“True”, “False”}. Giá trị mặc định là False. </td>
                            </tr>
                            <tr>
                                <td> <strong>short </strong></td>
                                <td> Dùng để lưu dữ liệu có kiểu số nguyên, kích cỡ 2 byte (16 bít). Phạm vi biểu diễn giá trị từ - 32768 đến 32767. Giá trị mặc định là 0. </td>
                            </tr>
                            <tr>
                                <td> <strong>int </strong></td>
                                <td> Dùng để lưu dữ liệu có kiểu số nguyên, kích cỡ 4 byte (32 bít). Phạm vi biểu diễn giá trị từ -2,147,483,648 đến 2,147,483,647. Giá trị mặc định là 0. </td>
                            </tr>
                            <tr>
                                <td> <strong>long </strong></td>
                                <td> Dùng để lưu dữ liệu có kiểu số nguyên có kích thước lên đến 8 byte. Giá trị mặc định là 0L. </td>
                            </tr>
                            <tr>
                                <td> <strong>float </strong></td>
                                <td> Dùng để lưu dữ liệu có kiểu số thực, kích cỡ 4 byte (32 bít). Giá trị mặc định là 0.0F. </td>
                            </tr>
                            <tr>
                                <td> <strong>double </strong></td>
                                <td> Dùng để lưu dữ liệu có kiểu số thực có kích thước lên đến 8 byte. Giá trị mặc định là 0.00D </td>
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
                        <h2 id="goto-h2-2"> 2. Kiểu dữ liệu đối tượng </h2>
                        <p> Trong java có 3 kiểu dữ liệu đối tượng: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th> <strong>Kiểu dữ liệu</strong> </th>
                                <th> <strong>Mô tả</strong> </th>
                            </tr>
                            <tr>
                                <td> <strong>Array</strong></td>
                                <td> Một mảng của các dữ liệu cùng kiểu.</td>
                            </tr>
                            <tr>
                                <td> <strong>class</strong></td>
                                <td> Dữ liệu kiểu lớp đối tượng do người dùng định nghĩa. Chứa tập các thuộc tính và phương thức..</td>
                            </tr>
                            <tr>
                                <td> <strong>interface</strong></td>
                                <td> Dữ liệu kiểu lớp giao tiếp do người dùng định nghĩa. Chứa các phương thức của giao tiếp.</td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Biến trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Ép kiểu trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></a></div>
                        <div class="clearer"></div>
                        <hr>


                </div>

        </div>
    </div>
    </div>
</body>
</html>
