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
                    <h1 class="entry-title">ArrayList trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="/java-collection"><i class="fa fa-arrow-circle-o-left"
                                                                           aria-hidden="true"></i> Collection trong java
                        </a></div>
                        <div class="nxt-btn"><a href="/java-collection/linkedlist-trong-java"> LinkedList trong java <i
                                class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Lớp ArrayList trong java</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Hierarchy của lớp ArrayList trong java</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Khởi tạo ArrayList trong java</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Constructor của lớp ArrayList</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Phương thức của lớp ArrayList</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Các Ví dụ ArrayList trong Java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Khởi tạo một ArrayList</a></li>
                                        <li><a href="#goto-h3-2">Hiển thị các phần tử có trong ArrayList</a></li>
                                        <li><a href="#goto-h3-3">Các phương thức addAll(), removeAll(), retainAll() của
                                            lớp ArrayList</a></li>
                                        <li><a href="#goto-h3-4">Truy cập phần tử của ArrayList</a></li>
                                        <li><a href="#goto-h3-5">Cập nhật giá trị của phần tử Arraylist</a></li>
                                        <li><a href="#goto-h3-6">Xóa phần tử ArrayList</a></li>
                                        <li><a href="#goto-h3-7">Tìm kiếm một phần tử ArrayList</a></li>
                                        <li><a href="#goto-h3-8">Chuyển ArrayList sang mảng (Array) trong Java</a></li>
                                        <li><a href="#goto-h3-9">Tạo ArrayList có kiểu generic là String</a></li>
                                        <li><a href="#goto-h3-10">Tạo ArrayList có kiểu generic là đối tượng do người
                                            dùng định nghĩa</a></li>
                                    </ul>
                                </li>
                                <li class="list-goto-7">
                                    <a href="#goto-h2-7">So sánh ArrayList vs LinkedList</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Lớp ArrayList trong java </h2>
                        <p><strong>Lớp ArrayList trong java</strong> là một lớp kế thừa lớp AbstractList và triển khai
                            của List Interface trong Collections Framework nên nó sẽ có một vài đặc điểm và phương thức
                            tương đồng với List. ArrayList được sử dụng như một mảng động để lưu trữ các phần tử. </p>
                        <p> Những điểm cần ghi nhớ về ArrayList: </p>
                        <ul>
                            <li>Lớp ArrayList trong java có thể chứa các phần tử trùng lặp.</li>
                            <li>Lớp ArrayList duy trì thứ tự của phần tử được thêm vào.</li>
                            <li>Lớp ArrayList là không đồng bộ (non-synchronized).</li>
                            <li>Lớp ArrayList cho phép truy cập ngẫu nhiên vì nó lưu dữ liệu theo chỉ mục.</li>
                            <li>Lớp ArrayList trong java, thao tác chậm vì cần nhiều sự dịch chuyển nếu bất kỳ phần tử
                                nào bị xoá khỏi danh sách.
                            </li>
                        </ul>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async=""
                                    src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;"
                                 data-ad-layout="in-article" data-ad-format="fluid"
                                 data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>
                        <br>
                        <h2 id="goto-h2-2"> Hierarchy của lớp ArrayList trong java </h2>
                        <img style="width: 50%;" src="${pageContext.request.contextPath}/course/module2/session8/img/read3/img.png"
                             alt="Hierarchy của lớp ArrayList trong java">
                        <p> Lớp java.util.ArrayList được khai báo như sau: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_787941" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
public class ArrayList< E> extends AbstractList< E>
        implements List< E>, RandomAccess, Cloneable, java.io.Serializable
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <h2 id="goto-h2-3"> Khởi tạo ArrayList trong java </h2>
                        <p> Có 2 kiểu khởi tạo ArrayList là non-generic và generic, xem thêm trong bài <a
                                href="/java-collection">Collection trong java</a></p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_487500" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
ArrayList list = new ArrayList(); // non-generic - kiểu cũ
ArrayList< String> list = new ArrayList< String>(); // generic - kiểu mới
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <div class="ad-content">
                            <script async=""
                                    src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693"
                                 data-ad-slot="1248734165" data-ad-format="auto"
                                 data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>
                        <br>
                        <h2 id="goto-h2-4"> Constructor của lớp ArrayList </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="30%">Constructor</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>ArrayList()</td>
                                <td>Nó được sử dụng để khởi tạo một danh sách mảng trống.</td>
                            </tr>
                            <tr>
                                <td>ArrayList(Collection c)</td>
                                <td>Nó được sử dụng để xây dựng một danh sách mảng được khởi tạo với các phần tử của
                                    collection c.
                                </td>
                            </tr>
                            <tr>
                                <td>ArrayList(int capacity)</td>
                                <td>Nó được sử dụng để xây dựng một danh sách mảng mà có dung lượng ban đầu được chỉ
                                    định.
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>

                        <h2 id="goto-h2-5"> Phương thức của lớp ArrayList </h2>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th width="30%">Phương thức</th>
                                <th>Mô tả</th>
                            </tr>
                            <tr>
                                <td>boolean add(Object o)</td>
                                <td>Nó được sử dụng để nối thêm phần tử được chỉ định vào cuối một danh sách.</td>
                            </tr>
                            <tr>
                                <td>void add(int index, Object element)</td>
                                <td>Nó được sử dụng để chèn phần tử element tại vị trí index vào danh sách.</td>
                            </tr>
                            <tr>
                                <td>boolean addAll(Collection c)</td>
                                <td>Nó được sử dụng để nối tất cả các phần tử trong collection c vào cuối của danh sách,
                                    theo thứ tự chúng được trả về bởi bộ lặp iterator.
                                </td>
                            </tr>
                            <tr>
                                <td>boolean addAll(int index, Collection c)</td>
                                <td>Nó được sử dụng để chèn tất cả các phần tử trong collection c vào danh sách, bắt đầu
                                    từ vị trí index.
                                </td>
                            </tr>
                            <tr>
                                <td>void retainAll(Collection c)</td>
                                <td>Nó được sử dụng để xóa những phần tử không thuộc collection c ra khỏi danh sách.
                                </td>
                            </tr>
                            <tr>
                                <td>void removeAll(Collection c)</td>
                                <td>Nó được sử dụng để xóa những phần tử thuộc collection c ra khỏi danh sách.</td>
                            </tr>
                            <tr>
                                <td>int indexOf(Object o)</td>
                                <td>Nó được sử dụng để trả về chỉ mục trong danh sách với sự xuất hiện đầu tiên của phần
                                    tử được chỉ định, hoặc -1 nếu danh sách không chứa phần tử này.
                                </td>
                            </tr>
                            <tr>
                                <td>int lastIndexOf(Object o)</td>
                                <td>Nó được sử dụng để trả về chỉ mục trong danh sách với sự xuất hiện cuối cùng của
                                    phần tử được chỉ định, hoặc -1 nếu danh sách không chứa phần tử này.
                                </td>
                            </tr>
                            <tr>
                                <td>Object[] toArray()</td>
                                <td>Nó được sử dụng để trả về một mảng chứa tất cả các phần tử trong danh sách này theo
                                    đúng thứ tự.
                                </td>
                            </tr>
                            <tr>
                                <td>Object[] toArray(Object[] a)</td>
                                <td>Nó được sử dụng để trả về một mảng chứa tất cả các phần tử trong danh sách này theo
                                    đúng thứ tự.
                                </td>
                            </tr>
                            <tr>
                                <td>Object clone()</td>
                                <td>Nó được sử dụng để trả về một bản sao của ArrayList.</td>
                            </tr>
                            <tr>
                                <td>void clear()</td>
                                <td>Nó được sử dụng để xóa tất cả các phần tử từ danh sách này.</td>
                            </tr>
                            <tr>
                                <td>void trimToSize()</td>
                                <td>Nó được sử dụng để cắt dung lượng của thể hiện ArrayList này là kích thước danh sách
                                    hiện tại.
                                </td>
                            </tr>
                            <tr>
                                <td>boolean contains(element)</td>
                                <td>Kết quả trả về là true nếu tìm thấy element trong danh sách, ngược lại trả về
                                    false.
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async=""
                                    src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;"
                                 data-ad-layout="in-article" data-ad-format="fluid"
                                 data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>
                        <br>
                        <h2 id="goto-h2-6"> Các Ví dụ ArrayList trong Java </h2>

                        <h3 id="goto-h3-1"> Khởi tạo một ArrayList </h3>
                        <p> Để khai báo một ArrayList, chúng ta cần phải import gói thư viện java.util.ArrayList của
                            Java. Cú pháp import như sau: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_487511" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
// import gói thư viện java.util.ArrayList
import java.util.ArrayList;

public class KhoiTaoArrayList {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là listString
        // có kiểu là String
        ArrayList< String> listString = new ArrayList< String>();
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Ngoài ra, nếu chúng ta đã biết trước số lượng phần tử thì chúng ta có thể khai báo kèm với
                            số lượng phần tử của nó. Ví dụ dưới đây sẽ khai báo một ArrayList có kiểu String và có 20
                            phần tử: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_48872" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
// import gói thư viện java.util.ArrayList
import java.util.ArrayList;

public class KhoiTaoArrayList {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là listString
        // có kiểu là String
        ArrayList< String> listString = new ArrayList< String>(20);
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <h3 id="goto-h3-2"> Hiển thị các phần tử có trong ArrayList </h3>
                        <p> Để hiển thị các phần tử có trong ArrayList, chúng ta có các cách như sau: </p>
                        <p><strong>Hiển thị theo tên của ArrayList.</strong></p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_244363" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class DuyetArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");
        // hiển thị các phần tử của list
        System.out.println("Các phần tử có trong list là: ");
        System.out.println(list);
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <img style="width: 70%;" src="${pageContext.request.contextPath}/course/module2/session8/img/read3/img_1.png"
                             alt="Hiển thị theo tên của ArrayList" title="Hiển thị theo tên của ArrayList">

                        <p><strong>Duyệt các phần tử của ArrayList - sử dụng vòng lặp for</strong></p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_608082" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class DuyetArrayList2 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");
        // sử dụng vòng lặp for - hiển thị các phần tử của list
        System.out.println("Các phần tử có trong list là: ");
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <img style="width: 70%;" src="${pageContext.request.contextPath}/course/module2/session8/img/read3/img_2.png"                             alt="Sử dụng vòng lặp for duyệt các phần tử của ArrayList"
                             title="Sử dụng vòng lặp for duyệt các phần tử của ArrayList" naptha_cursor="region">

                        <p><strong>Duyệt các phần tử của ArrayList - sử dụng vòng lặp for cải tiến</strong></p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_377096" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class DuyetArrayList3 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");
        // sử dụng vòng lặp for cải tiến - hiển thị các phần tử của list
        System.out.println("Các phần tử có trong list là: ");
        for (String str : list) {
            System.out.println(str);
        }
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <img style="width: 70%" src="${pageContext.request.contextPath}/course/module2/session8/img/read3/img_3.png"                             alt="Sử dụng vòng lặp for duyệt các phần tử của ArrayList"
                             alt="Sử dụng vòng lặp for cải tiến duyệt các phần tử của ArrayList"
                             title="Sử dụng vòng lặp for cải tiến duyệt các phần tử của ArrayList">

                        <p><strong>Duyệt các phần tử của ArrayList - sử dụng Iterator.</strong></p>
                        <p> Để sử dụng được Iterator chúng ta cần phải import gói thư viện java.util.Iterator của
                            Java. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_858983" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;
import java.util.Iterator;

public class DuyetArrayList4 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");
        // sử dụng Iterator - hiển thị các phần tử của list
        Iterator< String> iterator = list.iterator();
        System.out.println("Các phần tử có trong list là: ");
        while (iterator.hasNext()) {
            System.out.println((String) iterator.next());
        }
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <img style="width: 70%" src="${pageContext.request.contextPath}/course/module2/session8/img/read3/img_4.png"
                             alt="Sử dụng Iterator duyệt các phần tử của ArrayList"
                             title="Sử dụng Iterator duyệt các phần tử của ArrayList">

                        <p><strong>Duyệt các phần tử của ArrayList - sử dụng ListIterator.</strong></p>
                        <p> Vì ArrayList là một lớp triển khai của List Interface nên nó cũng có thể sử dụng
                            ListIterator để duyệt qua các phần tử của nó. Để sử dụng được ListIterator chúng ta cần phải
                            import gói thư viện java.util.ListIterator của Java. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_351614" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;
import java.util.ListIterator;

public class DuyetArrayList5 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");
        // sử dụng ListIterator - hiển thị các phần tử của list
        ListIterator< String> iterator = list.listIterator();
        System.out.println("Các phần tử có trong list là: ");
        while (iterator.hasNext()) {
            System.out.println((String) iterator.next());
        }
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <img style="width: 70%" src="${pageContext.request.contextPath}/course/module2/session8/img/read3/img_5.png"
                             alt="Sử dụng ListIterator duyệt các phần tử của ArrayList"
                             title="Sử dụng ListIterator duyệt các phần tử của ArrayList">
                        <hr>

                        <h3 id="goto-h3-3"> Các phương thức addAll(), removeAll(), retainAll() của lớp ArrayList </h3>
                        <p> Ví dụ sau minh họa cách sử dụng các phương thức addAll(), removeAll(), retainAll() của lớp
                            ArrayList trong Java: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_936451" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                                <div class="line number24 index23 alt1">24</div>
                                                <div class="line number25 index24 alt2">25</div>
                                                <div class="line number26 index25 alt1">26</div>
                                                <div class="line number27 index26 alt2">27</div>
                                                <div class="line number28 index27 alt1">28</div>
                                                <div class="line number29 index28 alt2">29</div>
                                                <div class="line number30 index29 alt1">30</div>
                                                <div class="line number31 index30 alt2">31</div>
                                                <div class="line number32 index31 alt1">32</div>
                                                <div class="line number33 index32 alt2">33</div>
                                                <div class="line number34 index33 alt1">34</div>
                                                <div class="line number35 index34 alt2">35</div>
                                                <div class="line number36 index35 alt1">36</div>
                                                <div class="line number37 index36 alt2">37</div>
                                                <div class="line number38 index37 alt1">38</div>
                                                <div class="line number39 index38 alt2">39</div>
                                                <div class="line number40 index39 alt1">40</div>
                                                <div class="line number41 index40 alt2">41</div>
                                                <div class="line number42 index41 alt1">42</div>
                                                <div class="line number43 index42 alt2">43</div>
                                                <div class="line number44 index43 alt1">44</div>
                                                <div class="line number45 index44 alt2">45</div>
                                                <div class="line number46 index45 alt1">46</div>
                                                <div class="line number47 index46 alt2">47</div>
                                                <div class="line number48 index47 alt1">48</div>
                                                <div class="line number49 index48 alt2">49</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class PhuongThucArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // Add objects to list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");

        System.out.println("ví dụ sử dụng phương thức addAll()");
        System.out.println("-----------------------------------");
        // thêm các phần tử của list vào listA
        ArrayList< String> listA = new ArrayList< String>();
        listA.addAll(list);
        System.out.print("listA:");
        showList(listA);

        System.out.println("\nví dụ sử dụng phương thức retainAll()");
        System.out.println("-----------------------------------");
        // khởi tạo listB
        ArrayList< String> listB = new ArrayList< String>();
        listB.add("Java");
        // xóa những phần tử không thuộc listB khỏi listA
        listA.retainAll(listB);
        System.out.print("listA:");
        showList(listA);

        System.out.println("\nví dụ sử dụng phương thức removeAll()");
        System.out.println("-----------------------------------");
        // xóa những phần tử thuộc listB  khỏi list
        list.removeAll(listB);
        System.out.print("list:");
        showList(list);
    }

    public static void showList(ArrayList< String> list) {
        // Show list through for-each
        for (String obj : list) {
            System.out.print("\t" + obj + ", ");
        }
        System.out.println();
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>ví dụ sử dụng phương thức addAll()
-----------------------------------
listA:	Java, 	C++, 	PHP, 	Java,

ví dụ sử dụng phương thức retainAll()
-----------------------------------
listA:	Java, 	Java,

ví dụ sử dụng phương thức removeAll()
-----------------------------------
list:	C++, 	PHP,
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-4"> Truy cập phần tử của ArrayList </h3>
                        <p> Java cung cấp cho chúng ta phương thức get() để truy cập đến 1 phần tử bất kỳ trong
                            ArrayList thông qua chỉ số của phần tử đó. Chỉ số của ArrayList trong Java bắt đầu từ
                            0. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_674444" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class TruyCapArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");

        // truy cập phần tử có chỉ số 3 của list
        System.out.println(list.get(3));
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Java
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-5"> Cập nhật giá trị của phần tử Arraylist</h3>
                        <p> Để cập nhật giá trị của phần tử trong ArrayList, Java cung cấp cho chúng ta phương thức
                            set(index, element), trong đó index là chỉ số của phần tử cần cập nhật và element là phần tử
                            mới để thay thế. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_496930" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class CapNhatArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");

        System.out.println("list trước khi cập nhật: ");
        System.out.println(list);
        // cập nhật giá trị cho phần tử có chỉ số là 3 (Java)
        list.set(3, "Python");
        System.out.println("list trước khi cập nhật: ");
        System.out.println(list);
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>list trước khi cập nhật:
[Java, C++, PHP, Java]
list trước khi cập nhật:
[Java, C++, PHP, Python]
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-6"> Xóa phần tử ArrayList </h3>
                        <p> Để xóa phần tử trong ArrayList, Java cung cấp cho chúng ta 2 phương thức có sẵn đó là phương
                            thức clear() và phương thức remove(). </p>
                        <p><strong> Phương thức clear() </strong></p>
                        <p> Phương thức clear() sẽ xóa tất cả các phần tử có trong ArrayList. Sau đây là ví dụ minh họa
                            phương thức này. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_993029" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class XoaArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Python");

        System.out.println("Số phần tử của list ban đầu : " + list);
        System.out.println("Các phần tử của list ban đầu: " + list.size());
        // clear list
        list.clear();
        System.out.println("\nSố phần tử của list sau khi clear: " + list);
        System.out.println("Các phần tử của list sau khi clear: " + list.size());
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Số phần tử của list ban đầu : [Java, C++, PHP, Python]
Các phần tử của list ban đầu: 4

Số phần tử của list sau khi clear: []
Các phần tử của list sau khi clear: 0
</pre>
                        </div>

                        <p><strong> Phương thức remove() </strong></p>
                        <p> Phương thức remove() sẽ xóa phần tử ra khỏi ArrayList theo 2 cách đó là xóa dựa vào chỉ số
                            của phần tử và xóa trực tiếp phần tử đó (không cần biết đến chỉ số của nó). Ví dụ dưới đây
                            sẽ minh họa 2 cách xóa này: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_721115" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                                <div class="line number24 index23 alt1">24</div>
                                                <div class="line number25 index24 alt2">25</div>
                                                <div class="line number26 index25 alt1">26</div>
                                                <div class="line number27 index26 alt2">27</div>
                                                <div class="line number28 index27 alt1">28</div>
                                                <div class="line number29 index28 alt2">29</div>
                                                <div class="line number30 index29 alt1">30</div>
                                                <div class="line number31 index30 alt2">31</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class XoaArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Python");

        System.out.println("Số phần tử của list ban đầu : " + list);
        System.out.println("Các phần tử của list ban đầu: " + list.size());
        // remove phần tử có chỉ số index = 1 khỏi list
        list.remove(1);
        System.out.println("\nSố phần tử của list sau khi remove phan tu co index = 1: "
                + list);
        System.out.println("Các phần tử của list sau khi remove phan tu co index = 1: "
                + list.size());
        // remove phần tử có chỉ số index = 1 khỏi list
        list.remove("PHP");
        System.out.println("\nSố phần tử của list sau khi remove phan tu \"PHP\": "
                + list);
        System.out.println("Các phần tử của list sau khi remove phan tu \"PHP\": "
                + list.size());
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Số phần tử của list ban đầu : [Java, C++, PHP, Python]
Các phần tử của list ban đầu: 4

Số phần tử của list sau khi remove phan tu co index = 1: [Java, PHP, Python]
Các phần tử của list sau khi remove phan tu co index = 1: 3

Số phần tử của list sau khi remove phan tu "PHP": [Java, Python]
Các phần tử của list sau khi remove phan tu "PHP": 2
</pre>
                        </div>

                        <h3 id="goto-h3-7"> Tìm kiếm một phần tử ArrayList </h3>
                        <p> Để tìm kiếm một phần tử trong ArrayList thì chúng ta có 3 phương pháp tìm kiếm như sau: </p>
                        <p><strong> Tìm kiếm trực tiếp phần tử. </strong></p>
                        <p> Để tìm kiếm trực tiếp phần tử, chúng ta sẽ sử dụng phương thức <b> contains() </b>. Kết quả
                            trả về là true nếu tìm thấy, ngược lại trả về false. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_788548" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class TimKiemArrayList1 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Python");

        // kiểm tra xem PHP có tồn tại trong list hay không?
        System.out.println(list.contains("PHP"));
        // kiểm tra xem ANDROID có tồn tại trong list hay không?
        System.out.println(list.contains("ANDROID"));
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>true
false
</pre>
                        </div>

                        <p><strong> Tìm kiếm vị trí xuất hiện đầu tiên của 1 phần tử trong ArrayList. </strong></p>
                        <p> Để tìm kiếm vị trí xuất hiện đầu tiên của 1 phần tử trong ArrayList, chúng ta sẽ sừ dụng
                            phương thức indexOf(). Kết quả của phương thức này sẽ trả về chỉ số xuất hiện đầu tiên của
                            phần tử đó trong ArrayList, ngược lại nếu không tìm thấy trả về -1. </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_822660" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class TimKiemArrayList2 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Python");

        // kiểm tra xem Java có tồn tại trong list hay không?
        System.out.println(list.indexOf("Java"));
        // kiểm tra xem ANDROID có tồn tại trong list hay không?
        System.out.println(list.indexOf("ANDROID"));
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>0
-1
</pre>
                        </div>

                        <p><strong> Tìm kiếm vị trí xuất hiện cuối cùng của 1 phần tử trong List. </strong></p>
                        <p> Để tìm kiếm vị trí xuất hiện cuối cùng của 1 phần tử trong ArrayList, chúng ta sẽ sừ dụng
                            phương thức lastIndexOf(). Kết quả của phương thức này sẽ trả về chỉ số xuất hiện cuối cùng
                            của phần tử đó trong ArrayList, ngược lại nếu không tìm thấy trả về -1. </p>
                        <p>
                        </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_955273" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class TimKiemArrayList3 {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");

        // kiểm tra xem Java có tồn tại trong list hay không?
        System.out.println(list.lastIndexOf("Java"));
        // kiểm tra xem ANDROID có tồn tại trong list hay không?
        System.out.println(list.lastIndexOf("ANDROID"));
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>3
-1
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-8"> Chuyển ArrayList sang mảng (Array) trong Java </h3>
                        <p> Phương thức toArray() trong Java được dùng để chuyển đổi một ArrayList sang mảng tương ứng.
                            Sau đây là ví dụ minh họa phương thức này: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_560192" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                                <div class="line number24 index23 alt1">24</div>
                                                <div class="line number25 index24 alt2">25</div>
                                                <div class="line number26 index25 alt1">26</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
package com.webcoder.arraylist;

import java.util.ArrayList;

public class ConvertToArray {
    public static void main(String[] args) {
        // khai báo 1 ArrayList có tên là list
        // có kiểu là String
        ArrayList< String> list = new ArrayList< String>();
        // thêm các phần tử vào list
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");

        // sử dụng phương thức toArray() chuyển list thành mảng
        // kết quả của phương thức này sẽ trả về mảng arr
        Object[] arr = list.toArray();

        // hiển thị các phần tử có trong mảng arr
        for (int i = 0; i < arr.length; i++) {
            System.out.println("Phần tử tại vị trí " + i + " "
                    + "trong arr là " + arr[i]);
        }
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Kết quả: </p>
                        <div class="codeblock3">
<pre>Phần tử tại vị trí 0 trong arr là Java
Phần tử tại vị trí 1 trong arr là C++
Phần tử tại vị trí 2 trong arr là PHP
Phần tử tại vị trí 3 trong arr là Java
</pre>
                        </div>
                        <hr>

                        <h3 id="goto-h3-9"> Tạo ArrayList có kiểu generic là String </h3>
                        <p> File: ArrayListExample1.java </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_514219" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                                <div class="line number24 index23 alt1">24</div>
                                                <div class="line number25 index24 alt2">25</div>
                                                <div class="line number26 index25 alt1">26</div>
                                                <div class="line number27 index26 alt2">27</div>
                                                <div class="line number28 index27 alt1">28</div>
                                                <div class="line number29 index28 alt2">29</div>
                                                <div class="line number30 index29 alt1">30</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
import java.util.ArrayList;
import java.util.Iterator;

public class ArrayListExample1 {
    public static void main(String args[]) {
        // Creating arraylist
        ArrayList< String> list = new ArrayList< String>();
        // Add objects to arraylist
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add("Java");
        // Show list through Iterator
        Iterator< String> itr = list.iterator();
        while (itr.hasNext()) {
            System.out.print(itr.next() + ", ");
        }
        // Show list through for-each
        System.out.println();
        for (String obj : list) {
            System.out.print(obj + ", ");
        }
        // Show list through index
        System.out.println();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            System.out.print(list.get(i) + ", ");
        }
    }
}
                                                    </code></pre>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <h3 id="goto-h3-10"> Tạo ArrayList có kiểu generic là đối tượng do người dùng định nghĩa </h3>
                        <p> File: ArrayListExample2.java </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_929604" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number2 index1 alt1">2</div>
                                                <div class="line number3 index2 alt2">3</div>
                                                <div class="line number4 index3 alt1">4</div>
                                                <div class="line number5 index4 alt2">5</div>
                                                <div class="line number6 index5 alt1">6</div>
                                                <div class="line number7 index6 alt2">7</div>
                                                <div class="line number8 index7 alt1">8</div>
                                                <div class="line number9 index8 alt2">9</div>
                                                <div class="line number10 index9 alt1">10</div>
                                                <div class="line number11 index10 alt2">11</div>
                                                <div class="line number12 index11 alt1">12</div>
                                                <div class="line number13 index12 alt2">13</div>
                                                <div class="line number14 index13 alt1">14</div>
                                                <div class="line number15 index14 alt2">15</div>
                                                <div class="line number16 index15 alt1">16</div>
                                                <div class="line number17 index16 alt2">17</div>
                                                <div class="line number18 index17 alt1">18</div>
                                                <div class="line number19 index18 alt2">19</div>
                                                <div class="line number20 index19 alt1">20</div>
                                                <div class="line number21 index20 alt2">21</div>
                                                <div class="line number22 index21 alt1">22</div>
                                                <div class="line number23 index22 alt2">23</div>
                                                <div class="line number24 index23 alt1">24</div>
                                                <div class="line number25 index24 alt2">25</div>
                                                <div class="line number26 index25 alt1">26</div>
                                                <div class="line number27 index26 alt2">27</div>
                                                <div class="line number28 index27 alt1">28</div>
                                                <div class="line number29 index28 alt2">29</div>
                                                <div class="line number30 index29 alt1">30</div>
                                                <div class="line number31 index30 alt2">31</div>
                                                <div class="line number32 index31 alt1">32</div>
                                                <div class="line number33 index32 alt2">33</div>
                                                <div class="line number34 index33 alt1">34</div>
                                                <div class="line number35 index34 alt2">35</div>
                                                <div class="line number36 index35 alt1">36</div>
                                                <div class="line number37 index36 alt2">37</div>
                                                <div class="line number38 index37 alt1">38</div>
                                                <div class="line number39 index38 alt2">39</div>
                                                <div class="line number40 index39 alt1">40</div>
                                                <div class="line number41 index40 alt2">41</div>
                                                <div class="line number42 index41 alt1">42</div>
                                                <div class="line number43 index42 alt2">43</div>
                                                <div class="line number44 index43 alt1">44</div>
                                                <div class="line number45 index44 alt2">45</div>
                                                <div class="line number46 index45 alt1">46</div>
                                            </td>
                                            <td class="code">
                                               <div class="container">
                                                   <pre><code class="language-java">
import java.util.ArrayList;

class Student {
    private String name;
    private int age;
    public Student(String name, int age) {
        super();
        this.name = name;
        this.age = age;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    @Override
    public String toString() {
        return "Student@[name=" + name + ", age=" + age + "]";
    }
}

public class ArrayListExample2 {
    public static void main(String[] args) {
        // Create listStudent
        ArrayList< Student> listStudent = new ArrayList< Student>();
        // Create students
        Student student1 = new Student("Bac", 17);
        Student student2 = new Student("Nam", 20);
        Student student3 = new Student("Trung", 19);
        // Add objects to listStudent
        listStudent.add(student1);
        listStudent.add(student2);
        listStudent.add(student3);
        // Show listStudent
        for (Student student : listStudent) {
            System.out.println(student.toString());
        }
    }
}
                                                   </code></pre>
                                               </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <p> Output: </p>
                        <div class="codeblock3">
<pre>Student@[name=Bac, age=17]
Student@[name=Nam, age=20]
Student@[name=Trung, age=19]
</pre>


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
