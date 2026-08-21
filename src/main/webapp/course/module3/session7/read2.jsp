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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Layout and design responsive web </a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Grid View</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h3>Mục tiêu</h3>
                            <p>Tìm hiểu về Grid-view, cách triển khai và sử dụng Grid-view.</p>
                            <h2>Nội dung</h2>
                            <h3>Grid-view là gì?</h3>
                            <p>Hiện nay, nhiều trang web phân bố nội dung theo dạng một grid-view (lưới), có nghĩa là
                                trang được chia các thành cột:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50305/mod_page/content/5/Screen%20Shot%202017-04-28%20at%206.00.24%20PM.png"
                                     width="619" height="189"></p>
                            <p>Nhờ sử dụng grid-view mà việc thiết kế trở nên dễ dàng hơn, giúp cho chúng ta dễ đặt các
                                nội dung lên các vùng phù hợp của trang web.</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50305/mod_page/content/5/Screen%20Shot%202017-04-28%20at%206.02.15%20PM.png"
                                     width="617" height="277"></p>
                            <p>Một responsive grid-view thường có 12 cột. Tổng chiều rộng của 12 cột này sẽ chiếm 100%
                                chiều rộng của trang web. Các cột sẽ được thu nhỏ hoặc mở rộng theo kích thước của cửa
                                sổ trình duyệt.</p>
                            <p>Xem ví dụ mẫu ở đây:&nbsp;<a
                                    href="http://demo.codegym.vn/web/15/responsive-grid/responsive_grid.htm"
                                    target="_blank">http://demo.codegym.vn/web/15/responsive-grid/responsive_grid.htm</a>
                            </p>
                            <p>Xây dựng một Responsive Grid-View</p>
                            <p><strong>Bước 1:</strong> Chúng ta thiết lập giá trị box-sizing cho thuộc tính border-box
                                của tất cả các thẻ. Thiết lập này có nghĩa là phần padding và border của các thành phần
                                đều được tính vào trong tổng chiểu rộng hay chiều cao của các thành phần (xem lại bài
                                Box Model để biết cách tính chiều rộng hoặc chiều cao).</p>
                            <pre><code html="" class="hljs css"><span>*&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">box-sizing</span><span><span>:</span>&nbsp;border-box<span>;</span></span><br></span><span>}</span></code></pre>
                            <p><span><strong>Bước 2:</strong> Xây dựng một trang responsive đơn giản với 2 cột</span>
                            </p>
                            <pre><code css="" class="hljs css"><span><span><span
                                    class="hljs-selector-class">.menu</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">25%</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">float</span><span><span>:</span>&nbsp;left<span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.main</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">75%</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">float</span><span><span>:</span>&nbsp;left<span>;</span></span><br></span><span>}</span></span></code></pre>
                            <p><span><span>Trong trường hợp này, cột menu có độ rộng là 25% và cột main có độ rộng là 75%. Tổng độ rộng của 2 cột là 100%.</span></span>
                            </p>
                            <p><span><span><img
                                    src="https://james.codegym.vn/pluginfile.php/50305/mod_page/content/5/Screen%20Shot%202017-04-28%20at%206.19.08%20PM.png"
                                    width="620" height="61"></span></span></p>
                            <p></p>
                            <p>Bước 3: Xây dựng Grid View với 12 cột.</p>
                            <p>Như vậy, mỗi cột sẽ có độ rộng là 100% / 12 = 8.33%.</p>
                            <p>Cột col-1 sẽ có độ rộng là 8.33%, cột col-2 sẽ có độ rộng là 8.33% * 2 = 16.66%... tương
                                tự như vậy đối với các cột khác. Cột col-12 sẽ có độ rộng là 100%.</p>
                            <pre><code css="" class="hljs css"><span><span class="hljs-selector-class">.col-1</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">8.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-2</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">16.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-3</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">25%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-4</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">33.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-5</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">41.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-6</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">50%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-7</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">58.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-8</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">66.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-9</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">75%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-10</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">83.33%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-11</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">91.66%</span><span>;</span></span></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.col-12</span>&nbsp;</span><span>{</span><span><span
                                    class="hljs-attribute">width</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">100%</span><span>;</span></span></span><span>}</span></code></pre>
                            <p>Bước 4: Tất cả các cột này đều phải trôi về phía bên trái, chúng ta sử dụng thuộc tính
                                <em>float</em> để đạt được hiệu ứng này. Ngoài ra, các cột cũng cần có padding là 15px.
                            </p>
                            <pre><span><pre><code class="hljs css"><br><span class="hljs-selector-attr">[class*=<span
                                    class="hljs-string">"col-"</span>]</span>&nbsp;<span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">float</span><span><span>:</span>&nbsp;left<span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">padding</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">15px</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">border</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">1px</span> solid red<span>;</span></span><br></span><span>}<br></span></code></pre></span></pre>
                            <p><span>Bước 5: Thêm thẻ div cho mỗi dòng. Thẻ div này sẽ có class là <em>row</em>. Tất cả các cột đều được đưa vào trong các dòng tương ứng.</span>
                            </p>
                            <pre><code html="" class="hljs xml"><span><span><span><span
                                    class="hljs-tag">&lt;</span></span><span class="hljs-tag"><span class="hljs-name">div</span></span><span><span
                                    class="hljs-tag">&nbsp;<span class="hljs-attr">class</span></span><span><span
                                    class="hljs-tag">=<span
                                    class="hljs-string">"row"</span></span></span></span><span><span class="hljs-tag">&gt;</span></span></span><br><span>&nbsp;&nbsp;</span><span><span><span
                                    class="hljs-tag">&lt;</span></span><span class="hljs-tag"><span class="hljs-name">div</span></span><span><span
                                    class="hljs-tag">&nbsp;<span class="hljs-attr">class</span></span><span><span
                                    class="hljs-tag">=<span
                                    class="hljs-string">"col-3"</span></span></span></span><span><span class="hljs-tag">&gt;</span></span></span><span>...</span><span><span><span
                                    class="hljs-tag">&lt;</span></span><span class="hljs-tag">/<span class="hljs-name">div</span></span><span><span
                                    class="hljs-tag">&gt;</span></span></span><span>&nbsp;</span><span><span
                                    class="hljs-comment">&lt;!-- 25% --&gt;</span></span><br><span>&nbsp;&nbsp;</span><span><span><span
                                    class="hljs-tag">&lt;</span></span><span class="hljs-tag"><span class="hljs-name">div</span></span><span><span
                                    class="hljs-tag">&nbsp;<span class="hljs-attr">class</span></span><span><span
                                    class="hljs-tag">=<span
                                    class="hljs-string">"col-9"</span></span></span></span><span><span class="hljs-tag">&gt;</span></span></span><span>...</span><span><span><span
                                    class="hljs-tag">&lt;</span></span><span class="hljs-tag">/<span class="hljs-name">div</span></span><span><span
                                    class="hljs-tag">&gt;</span></span></span><span>&nbsp;</span><span><span
                                    class="hljs-comment">&lt;!-- 75% --&gt;</span></span><br><span><span><span
                                    class="hljs-tag">&lt;</span></span><span class="hljs-tag">/<span class="hljs-name">div</span></span><span><span
                                    class="hljs-tag">&gt;</span></span></span></span></code></pre>
                            <p>Bước 6: Đến đây, chúng ta có một vấn đề: Thuộc tính float:left của các cột khiến cho
                                những thành phần khác ở phía sau nó bị dồn lên (hiển thị như là các cột này không tồn
                                tại vậy). Để tránh điều này, chúng ta thêm đoạn mã css sau cho các dòng:</p>
                            <pre><code css="" class="hljs css"><span><span class="hljs-selector-class">.row</span><span
                                    class="hljs-selector-pseudo">::after</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">content</span><span><span>:</span>&nbsp;<span
                                    class="hljs-string">""</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">clear</span><span><span>:</span>&nbsp;both<span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">display</span><span><span>:</span>&nbsp;table<span>;</span></span><br></span><span>}</span></code></pre>
                            <p>
                                <span>Bước 7: Cuối cùng, chúng ta thêm một số thuộc tính khác để trông chúng đẹp hơn:</span>
                            </p>
                            <pre><code html="" class="hljs css"><span><span><span class="hljs-selector-tag">html</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">font-family</span><span><span>:</span>&nbsp;<span
                                    class="hljs-string">"Lucida Sans"</span>, sans-serif<span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.header</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">background-color</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">#9933cc</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">color</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">#ffffff</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">padding</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">15px</span><span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.menu</span> <span class="hljs-selector-tag">ul</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">list-style-type</span><span><span>:</span>&nbsp;none<span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">margin</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">0</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">padding</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">0</span><span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.menu</span> <span class="hljs-selector-tag">li</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">padding</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">8px</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">margin-bottom</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">7px</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">background-color&nbsp;</span><span><span>:</span><span
                                    class="hljs-number">#33b5e5</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">color</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">#ffffff</span><span>;</span></span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">box-shadow</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">0</span> <span class="hljs-number">1px</span> <span
                                    class="hljs-number">3px</span> <span class="hljs-built_in">rgba</span>(<span
                                    class="hljs-number">0</span>,<span class="hljs-number">0</span>,<span
                                    class="hljs-number">0</span>,<span class="hljs-number">0.12</span>), <span
                                    class="hljs-number">0</span> <span class="hljs-number">1px</span> <span
                                    class="hljs-number">2px</span> <span class="hljs-built_in">rgba</span>(<span
                                    class="hljs-number">0</span>,<span class="hljs-number">0</span>,<span
                                    class="hljs-number">0</span>,<span
                                    class="hljs-number">0.24</span>)<span>;</span></span><br></span><span>}</span><br><span><span
                                    class="hljs-selector-class">.menu</span> <span
                                    class="hljs-selector-tag">li</span><span class="hljs-selector-pseudo">:hover</span>&nbsp;</span><span>{</span><span><br>&nbsp;&nbsp;&nbsp; <span
                                    class="hljs-attribute">background-color</span><span><span>:</span>&nbsp;<span
                                    class="hljs-number">#0099cc</span><span>;</span></span><br></span><span>}</span></span></code></pre>
                            <p>Xem kết quả cuối cùng ở đây:&nbsp;<a
                                    href="http://demo.codegym.vn/web/15/responsive-grid-complete/index.html"
                                    target="_blank">http://demo.codegym.vn/web/15/responsive-grid-complete/index.html</a>
                            </p>
                            <p></p>
                            <p></p></div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 9:12 AM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
