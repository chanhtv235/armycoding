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
                    <h1 class="entry-title">List trong java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="/java-collection/su-khac-nhau-giua-arraylist-va-linkedlist"><i
                                class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Sự khác nhau giữa ArrayList và
                            LinkedList </a></div>
                        <div class="nxt-btn"><a href="/java-collection/hashset-trong-java"> HashSet trong java <i
                                class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">1. List trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Khai báo interface List trong java</a></li>
                                        <li><a href="#goto-h3-2">Các phương thức của interface List trong java</a></li>
                                        <li><a href="#goto-h3-3">Ví dụ về List trong java</a></li>
                                    </ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">2. ListIterator trong java</a>
                                    <ul>
                                        <li>
                                            <a href="#goto-h3-4">Khai báo interface ListIterator trong java</a>
                                        </li>
                                        <li>
                                            <a href="#goto-h3-5">Các phương thức của interface ListIterator trong
                                                java</a>
                                        </li>
                                        <li>
                                            <a href="#goto-h3-6">Ví dụ về ListIterator trong java</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> 1. List trong java </h2>
                        <p><strong>List</strong> là một interface trong java. Nó chứa các phương thức để chèn và xóa các
                            phần tử dựa trên chỉ số index. </p>
                        <h3 id="goto-h3-1"> Khai báo interface List trong java </h3>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_45858" class="syntaxhighlighter  java ">
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
public interface List< E> extends Collection< E>
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

                        <h3 id="goto-h3-2"> Các phương thức của interface List trong java </h3>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Method</th>
                                <th>Description</th>
                            </tr>
                            <tr>
                                <td>void add(int index,Object element)</td>
                                <td>Nó được sử dụng để chèn các phần tử vào list tại chỉ số index.</td>
                            </tr>
                            <tr>
                                <td>boolean addAll(int index,Collection c)</td>
                                <td>Nó được sử dụng để chèn tất cả các yếu tố của c vào danh sách tại chỉ số index.</td>
                            </tr>
                            <tr>
                                <td>object get(int index)</td>
                                <td>Nó được sử dụng để trả về đối tượng được lưu trữ tại chỉ số index trong list.</td>
                            </tr>
                            <tr>
                                <td>object set(int index,Object element)</td>
                                <td>Nó được sử dụng để gán phần tử cho vị trí được chỉ định index trong list.</td>
                            </tr>
                            <tr>
                                <td>object remove(int index)</td>
                                <td>Nó được sử dụng để xóa các phần tử tại vị trí có chỉ số index và trả về phần tử đã
                                    xóa.
                                </td>
                            </tr>
                            <tr>
                                <td>ListIterator listIterator()</td>
                                <td>Nó được sử dụng để trả về một Iterator mà bắt đầu từ phần tử đầu tiên của list.</td>
                            </tr>
                            <tr>
                                <td>ListIterator listIterator(int index)</td>
                                <td>Nó được sử dụng để trả về một Iterator mà phần tử bắt đầu từ chỉ số index chỉ
                                    định.
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>

                        <h3 id="goto-h3-3"> Ví dụ về List trong java </h3>
                        <p><strong>Ví dụ 1:</strong> Hãy xem ví dụ đơn giản về List trong java sau: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_981537" class="syntaxhighlighter  java">
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
                                                <div class="line number17 index16 alt2">18</div>
                                                <div class="line number17 index16 alt2">19</div>
                                                <div class="line number17 index16 alt2">20</div>
                                                <div class="line number17 index16 alt2">21</div>
                                                <div class="line number17 index16 alt2">22</div>
                                                <div class="line number17 index16 alt2">23</div>
                                                <div class="line number17 index16 alt2">24</div>
                                            </td>
                                            <td class="code">
                                               <div class="container">
                                                   <pre><code class="language-java">
import java.util.ArrayList;
import java.util.List;

public class ListExample {
    public static void main(String args[]) {
        List< String> list = new ArrayList< String>();
        list.add("Java");
        list.add("C++");
        list.add("PHP");
        list.add(1, "Python");
        System.out.println("Phan tu co index = 2 la: " + list.get(2));
        // show list
        for (String s : list) {
            System.out.println(s);
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
<pre>Phan tu co index = 2 la: C++
Java
Python
C++
PHP
</pre>
                        </div>
                        <p><strong>Ví dụ 2:</strong> Sử dụng Arrays.asList(): </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_303881" class="syntaxhighlighter  java">
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
                                                <div class="line number15 index14 alt2">16</div>
                                                <div class="line number15 index14 alt2">17</div>
                                                <div class="line number15 index14 alt2">18</div>
                                                <div class="line number15 index14 alt2">19</div>
                                                <div class="line number15 index14 alt2">20</div>
                                                <div class="line number15 index14 alt2">21</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre>
                                                    <code class="language-java">
import java.util.Arrays;
import java.util.List;

public class ListExample1 {
    public static void main(String args[]) {
        // create new array
        String[] arr = { "Java", "C++", "PHP", "Python" };
        // convert array to List
        List< String> list = Arrays.asList(arr);
        // show list
        for (String s : list) {
            System.out.println(s);
        }
    }
}
                                                    </code>
                                                    </pre>
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
C++
PHP
Python
</pre>
                        </div>
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
                        <h2 id="goto-h2-2"> 2. ListIterator trong java </h2>
                        <p> ListIterator là một interface được sử dụng để duyệt các phần tử của List trong java. </p>
                        <h3 id="goto-h3-4"> Khai báo interface ListIterator trong java </h3>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_364346" class="syntaxhighlighter  java">
                                    <div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span>
                                    </div>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="gutter">
                                                <div class="line number1 index0 alt2">1</div>
                                                <div class="line number1 index0 alt2">2</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
                                                    <pre><code class="language-java">
public interface ListIterator < E> extends Iterator< E>
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
                        <h3 id="goto-h3-5"> Các phương thức của interface ListIterator trong java </h3>
                        <table class="alt">
                            <tbody>
                            <tr>
                                <th>Method</th>
                                <th>Description</th>
                            </tr>
                            <tr>
                                <td>boolean hasNext()</td>
                                <td>Phương pháp này trả về true nếu list interator có tồn tại phần tử kế tiếp phần tử
                                    hiện tại.
                                </td>
                            </tr>
                            <tr>
                                <td>Object next()</td>
                                <td>Phương thức này trả về phần tử kế tiếp trong danh sách và vị trí con trỏ tăng lên
                                    1.
                                </td>
                            </tr>
                            <tr>
                                <td>boolean hasPrevious()</td>
                                <td>Phương pháp này trả về true nếu list interator có tồn tại phần tử kế sau phần tử
                                    hiện tại.
                                </td>
                            </tr>
                            <tr>
                                <td>Object previous()</td>
                                <td>Phương thức này trả về phần tử kế sau trong danh sách và vị trí con trỏ giảm đi 1.
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>
                        <h3 id="goto-h3-6"> Ví dụ về ListIterator trong java </h3>
                        <p> Hãy xem ví dụ đơn giả về việc duyệt các phần tử của List trong java bằng cách sử dụng
                            ListIterator: </p>
                        <div class="codeblock">
                            <div>
                                <div id="highlighter_817174" class="syntaxhighlighter  java">
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
                                                <div class="line number24 index23 alt1">25</div>
                                                <div class="line number24 index23 alt1">26</div>
                                                <div class="line number24 index23 alt1">27</div>
                                                <div class="line number24 index23 alt1">28</div>
                                                <div class="line number24 index23 alt1">29</div>
                                                <div class="line number24 index23 alt1">30</div>
                                                <div class="line number24 index23 alt1">31</div>
                                                <div class="line number24 index23 alt1">32</div>
                                                <div class="line number24 index23 alt1">33</div>
                                            </td>
                                            <td class="code">
                                                <div class="container">
     <pre><code class="language-java" style="background-color: white">
    import java.util.ArrayList;
    import java.util.List;
    import java.util.ListIterator;

    public class ListExample {
        public static void main(String args[]) {
            List< String> list = new ArrayList< String>();
            list.add("Java");
            list.add("C++");
            list.add("PHP");
            list.add(1, "Python");
            System.out.println("Phan tu co index = 2 la: " + list.get(2));

            ListIterator< String> itr = list.listIterator();
            System.out.println("Duyet cac phan tu tu dau den cuoi:");
            while (itr.hasNext()) {
                System.out.println("\t" + itr.next());
            }
            System.out.println("Duyet cac phan tu tu cuoi ve dau:");
            while (itr.hasPrevious()) {
                System.out.println("\t" + itr.previous());
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
   <pre>Phan tu co index = 2 la: C++
   Duyet cac phan tu tu dau den cuoi:
    Java
    Python
    C++
    PHP
   Duyet cac phan tu tu cuoi ve dau:
    PHP
    C++
    Python
    Java
   </pre>
                        </div>
                        <hr>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
