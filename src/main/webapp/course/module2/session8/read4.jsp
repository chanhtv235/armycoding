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
                <a href="/course/module2/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Java collection framework</a>

                <header class="entry-header">
                    <h4 class="entry-title">Sự khác nhau giữa Array với ArrayList</h4>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <p><strong>Mảng (Array)</strong> là một cấu trúc dữ liệu có kích thước cố định, trong khi
                            <strong>ArrayList</strong> là một lớp Collection có thể thay đổi được kích thước. Nghĩa là chúng ta
                            không thể thay đổi kích thước của mảng khi đã tạo, nhưng ArrayList có thể được thay đổi. </p>
                        <p> Chúng ta không thể lưu giữ dữ liệu nguyên thủy trong ArrayList, nó chỉ có thể chứa các đối tượng. Nhưng
                            mảng có thể chứa cả hai kiểu dữ liệu nguyên thủy và các đối tượng trong Java. Kể từ Java 5, kiểu nguyên
                            thủy được tự động chuyển đổi trong các đối tượng được gọi là auto-boxing. </p>
                        <p><strong>Sự khác nhau giữa Array với ArrayList</strong> được tóm tắt lại như trong bảng sau: </p>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="50%">Array</th>
                                <th>ArrayList</th>
                            </tr>
                            <tr>
                                <td>1) Kích thước <strong>cố định</strong>.</td>
                                <td>Kích thước có thể <strong>thay đổi được</strong>.</td>
                            </tr>
                            <tr>
                                <td>2) Có thể lưu trữ dữ liệu kiểu <strong>nguyên thủy</strong> và <strong>đối tượng</strong>.</td>
                                <td>Chỉ có thể lưu trữ dữ liệu kiểu <strong>đối tượng</strong>. Kể từ Java 5, kiểu nguyên thủy được
                                    tự động chuyển đổi trong các đối tượng được gọi là <strong>auto-boxing</strong>.
                                </td>
                            </tr>
                            <tr>
                                <td>3) Tốc độ lưu trữ và thao tác <strong>nhanh hơn</strong>.</td>
                                <td>Tốc độ lưu trữ vào thao tác <strong>chậm hơn</strong>.</td>
                            </tr>
                            <tr>
                                <td>4) Chỉ có thuộc tính <strong>length</strong>.</td>
                                <td> Có nhiều phương thức để thao tác với dữ liệu.</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>
                        <h4 id="goto-h2-1"> Làm sao để chuyển đổi Array thành ArrayList và ngược lại? </h4>
                        <p> Dưới đây là ví dụ về việc chuyển đổi ArrayList thành Array và Array thành ArrayList: </p>
                        <div class="codeblock">
                            <pre><code class="language-java">
                                package vn.viettuts.collection;

                                import java.util.ArrayList;
                                import java.util.Arrays;
                                import java.util.List;

                                public class Example1 {
                                    public static void main(String[] args) {
                                        // create arrayList
                                        List< String> arrayList = new ArrayList<>();
                                        // adding String object to arrayList
                                        arrayList.add("Java");
                                        arrayList.add("C");
                                        arrayList.add("C++");
                                        arrayList.add("PHP");
                                        arrayList.add("Python");

                                        // convert ArrayList to Array
                                        System.out.println("Convert ArrayList to Array:");
                                        String[] item = arrayList.toArray(new String[arrayList.size()]);
                                        // show item
                                        for (String s : item) {
                                            System.out.println(s);
                                        }

                                        // convert Array to ArrayList
                                        System.out.println("Convert Array to ArrayList:");
                                        List< String> list2 = new ArrayList<>();
                                        list2 = Arrays.asList(item);
                                        // show list2
                                        System.out.println(list2);
                                    }
                                }
                        </code></pre>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Convert ArrayList to Array:
Java
C
C++
PHP
Python
Convert Array to ArrayList:
[Java, C, C++, PHP, Python]
</pre>

                        </div>




            </div>
        </div>
    </div>

</body>
</html>
