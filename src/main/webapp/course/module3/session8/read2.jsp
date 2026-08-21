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
                <a href="${pageContext.request.contextPath}/course/module3/session8/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Bootstrap </a>
                <div role="main" id="yui_3_17_2_1_1714166406045_21"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714166406045_20">[Bài đọc] Tạo form với Bootstrap</h2>
 <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><p></p>
                            <div>
                                <h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                                <p>Sử dụng được form với&nbsp;Bootstrap.</p>
                                <p><span
                                        style="color: #37474f; font-family: 'Open Sans'; font-size: 2.143rem;">Nội dung</span>
                                </p>
                                <p paraid="551617887" paraeid="{88b98f4b-8def-40da-8190-c85897a3a2bb}{224}"><span
                                        xml:lang="EN-US" lang="EN-US">Trong&nbsp;chương&nbsp;này,&nbsp;chúng&nbsp;ta&nbsp;sẽ&nbsp;nghiên&nbsp;cứu&nbsp;làm&nbsp;thế&nbsp;nào&nbsp;để&nbsp;tạo&nbsp;các&nbsp;form&nbsp;một&nbsp;cách&nbsp;dễ&nbsp;dàng&nbsp;bằng&nbsp;cách&nbsp;sử&nbsp;dụng&nbsp;Bootstrap.</span><span
                                        xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US" lang="EN-US">Bootstrap&nbsp;làm&nbsp;cho việc tạo form dễ&nbsp;dàng hơn với sự mở&nbsp;rộng&nbsp;các class khác nhau cho form.&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">Trong&nbsp;chương&nbsp;này&nbsp;chúng&nbsp;ta&nbsp;sẽ&nbsp;nghiên&nbsp;cứu cách tạo form bằng Bootstrap.</span>&nbsp;
                                </p>
                            </div>
                            <div>
                                <h4>Form Layout&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="96051675" paraeid="{88b98f4b-8def-40da-8190-c85897a3a2bb}{233}"><span
                                        xml:lang="EN-US" lang="EN-US">Bootstrap&nbsp;cung&nbsp;cấp&nbsp;cho&nbsp;bạn&nbsp;các&nbsp;loại&nbsp;bố&nbsp;cục&nbsp;sau&nbsp;đây:</span>
                                </p>
                            </div>
                            <ul role="list">
                                <li data-listid="1" aria-setsize="-1" data-aria-posinset="1" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="1045641796" paraeid="{88b98f4b-8def-40da-8190-c85897a3a2bb}{238}"><span
                                            xml:lang="EN-US" lang="EN-US">Dạng&nbsp;dọc&nbsp;(mặc&nbsp;định)</span>&nbsp;
                                    </p>
                                </li>
                                <li data-listid="1" aria-setsize="-1" data-aria-posinset="2" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="103369099" paraeid="{88b98f4b-8def-40da-8190-c85897a3a2bb}{243}">In-line&nbsp;</p>
                                </li>
                                <li data-listid="1" aria-setsize="-1" data-aria-posinset="3" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="494224008" paraeid="{88b98f4b-8def-40da-8190-c85897a3a2bb}{248}"><span
                                            xml:lang="EN-US" lang="EN-US"><span>Đặt các phần tử Form trên 1
                                        hệ thống lưới và khi đó các phần tử sẽ hiển thị theo quy tắc hệ thống lưới Grid
                                        System của Bootstrap.</span></span>
                                    </p>
                                </li>
                            </ul>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Dạng dọc hay dạng cơ&nbsp;bản</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1425961205" paraeid="{1dc1d7cc-05eb-4159-99fc-fd33e05bf076}{8}"><span
                                        xml:lang="EN-US" lang="EN-US">Cấu&nbsp;trúc&nbsp;dạng&nbsp;cơ&nbsp;bản&nbsp;đi&nbsp;kèm&nbsp;với&nbsp;Bootstrap.
                                    Form dạng cơ bản tự động nhận&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">một vài class toàn cục.</span><span
                                        xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US" lang="EN-US">
                                    Để&nbsp;tạo&nbsp;ra&nbsp;một form cơ&nbsp;bản,&nbsp;hãy&nbsp;làm&nbsp;như&nbsp;sau:</span>&nbsp;
                                </p>
                            </div>
                            <ul role="list">
                                <li data-listid="2" aria-setsize="-1" data-aria-posinset="4" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="1717087307" paraeid="{1dc1d7cc-05eb-4159-99fc-fd33e05bf076}{19}"><span
                                            xml:lang="EN-US" lang="EN-US">Phần tử</span><span xml:lang="EN-US"
                                                                                              lang="EN-US">
                                        &nbsp;&lt;form&gt; được thêm vào, nó bao các phần tử khác.</span>&nbsp;
                                    </p>
                                </li>
                                <li data-listid="2" aria-setsize="-1" data-aria-posinset="5" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="1085868192" paraeid="{1dc1d7cc-05eb-4159-99fc-fd33e05bf076}{30}"><span
                                            xml:lang="EN-US" lang="EN-US">Các nhãn và các phần tử khác được đặ
                                        t trong thẻ &lt;div&gt; với thuộc tính class là .form-group. </span>&nbsp;
                                    </p>
                                </li>
                                <li data-listid="2" aria-setsize="-1" data-aria-posinset="6" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="741640964" paraeid="{1dc1d7cc-05eb-4159-99fc-fd33e05bf076}{39}"><span
                                            xml:lang="EN-US" lang="EN-US">Thêm class&nbsp;</span>
                                        <span xml:lang="EN-US" lang="EN-US"> </span><span
                                            xml:lang="EN-US" lang="EN-US">.form-control&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US"> </span>
                                        <span xml:lang="EN-US" lang="EN-US">cho&nbsp;tất&nbsp;cả&nbsp;các&nbsp;phần&nbsp;tử&nbsp;nhập&nbsp;văn&nbsp;bản&nbsp;&lt;text&gt;,
                                            &lt;textarea&gt;,&nbsp;và&nbsp;&lt;select&gt;</span>&nbsp;
                                    </p>
                                </li>
                            </ul>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/kiennguyen2/792zmst3/1/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest=""
                                        frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Inline</span>&nbsp;Form (Form trên cùng dòng)
                                </h4>
                            </div>
                            <div>
                                <p paraid="1237086079" paraeid="{480bdae6-e061-49b3-ad0f-57236f58573c}{19}"
                                ><span>Hãy thêm class&nbsp;</span>
                                    <code>.form-inline</code><span>&nbsp;vào thẻ&nbsp;</span>
                                    <code>&lt;form&gt;</code>
                                    <span>&nbsp;của bạn nếu bạn muốn form-control của bạn hiển thi
                                        dưới dạng inline-block và được căn lề trái.&nbsp;</span>
                                    <span>Lưu ý rằng, class này chỉ hoạt động với những form nằm bên trong khung nhìn
                                        có độ rộng tối thiểu bằng 768 pixel.</span>
                                </p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/13/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <ul role="list">
                                <li data-listid="3" aria-setsize="-1" data-aria-posinset="1" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="532345251" paraeid="{fa02d243-def5-41b8-a94d-d5d6ae5befb8}{240}"><span
                                            xml:lang="EN-US" lang="EN-US">Mặc định các phần tử input, select và textarea
                                        có chiều rộng là 100% trong Bootstrap.
                                        Bạn cần phải đặt độ rộng trên form-control nằm bên trong
                                        nó khi sử dụng form trên cùng dòng.</span>&nbsp;
                                    </p>
                                </li>
                                <li><span>Trình đọc của màn hình sẽ gặp vấn đề với form của bạn nếu bạn không gắn nhãn
                                    cho từng input. Khi sử dụng form cùng dòng,
                                    bạn có thể ẩn các nhãn đi bằng cách sử dụng class&nbsp;</span>
                                    <code>.sr-only</code><span>.</span>
                                </li>
                            </ul>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Form trong hệ thống Gird System</span></h4>
                                <p><span xml:lang="EN-US" lang="EN-US">
                                    <span>Hệ thống lưới (Grid System) là một hệ thống mạnh mẽ để bố trí các phần tử trên giao diện,
                                        và bạn hoàn toàn có thể sử dụng nó để áp dụng cho&nbsp;</span>
                                    <strong>Form</strong><span>.</span></span>
                                </p>
                                <p>Dưới đây là một ví dụ sử dụng hệ thống lưới để bố trí các phần tử trên giao diện.</p>
                                <p>Chú ý: Lớp&nbsp;<strong>.row&nbsp;</strong>và&nbsp;<strong>.form-row</strong>&nbsp;làm
                                    việc giống nhau, nhưng lời khuyên là bạn nên sử dụng&nbsp;<strong>.form-row</strong>&nbsp;để
                                    phù hợp với ngữ cảnh.</p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/kiennguyen2/pc7o4aun/3/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest=""
                                        frameborder="0"></iframe>
                            </p>
                            <h4>Các phần tử trong form&nbsp;</h4>
                            <div>
                                <p paraid="612078586" paraeid="{60822a4f-7b1c-414c-bd4f-cddc6de00a0d}{129}"><span
                                        xml:lang="EN-US" lang="EN-US">Mặc định Bootstrap</span><span xml:lang="EN-US"
                                                                                                     lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hỗ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">trợ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">các phần tử:&nbsp;</span><span xml:lang="EN-US"
                                                                                                     lang="EN-US">input</span><span
                                        xml:lang="EN-US" lang="EN-US">,&nbsp;</span><span xml:lang="EN-US" lang="EN-US">textarea</span><span
                                        xml:lang="EN-US" lang="EN-US">, checkbox, radio,&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">và</span><span xml:lang="EN-US" lang="EN-US">&nbsp;select.</span>&nbsp;
                                </p>
                            </div>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Phần tử nhập liệu -&nbsp;</span>Input</h4>
                            </div>
                            <div>
                                <p paraid="224546742" paraeid="{60822a4f-7b1c-414c-bd4f-cddc6de00a0d}{166}"><span
                                        xml:lang="EN-US"
                                        lang="EN-US">Phần tử nhập liệu văn bản phổ biến nhất là input</span><span
                                        xml:lang="EN-US" lang="EN-US">.&nbsp;</span><span xml:lang="EN-US" lang="EN-US"> </span><span
                                        xml:lang="EN-US" lang="EN-US">Đây</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">là</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">nơi</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">người</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dùng</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">nhập</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">vào</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hầu</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hết</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">các</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dữ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">liệu</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">cần</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">thiết</span><span xml:lang="EN-US"
                                                                                        lang="EN-US">.</span><span
                                        xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US" lang="EN-US">Bootstrap&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US"></span><span xml:lang="EN-US"
                                                                                   lang="EN-US">hỗ</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">trợ</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">cho</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">tất</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">cả</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">các</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">kiểu</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">nhập</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">liệu</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;HTML5&nbsp;</span><span xml:lang="EN-US"
                                                                                                    lang="EN-US">nguyên&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US"> </span><span xml:lang="EN-US"
                                                                                    lang="EN-US">bản</span><span
                                        xml:lang="EN-US" lang="EN-US"> </span><span xml:lang="EN-US"
                                                                                    lang="EN-US">:</span><span
                                        xml:lang="EN-US" lang="EN-US">  text</span><span xml:lang="EN-US" lang="EN-US">, password</span><span
                                        xml:lang="EN-US" lang="EN-US">, datetime, datetime-local, date</span><span
                                        xml:lang="EN-US" lang="EN-US">, month</span><span xml:lang="EN-US" lang="EN-US">, time</span><span
                                        xml:lang="EN-US" lang="EN-US">, week</span><span xml:lang="EN-US" lang="EN-US">, number</span><span
                                        xml:lang="EN-US" lang="EN-US">, email,&nbsp;</span><span xml:lang="EN-US"
                                                                                                 lang="EN-US">url</span><span
                                        xml:lang="EN-US" lang="EN-US">, search</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">,&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">tel</span><span xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">và color</span><span xml:lang="EN-US"
                                                                                           lang="EN-US"> </span><span
                                        xml:lang="EN-US" lang="EN-US"></span><span xml:lang="EN-US"
                                                                                   lang="EN-US">.</span></p>
                                <p paraid="224546742" paraeid="{60822a4f-7b1c-414c-bd4f-cddc6de00a0d}{166}"><span
                                        xml:lang="EN-US" lang="EN-US"><span>Các input sẽ chỉ được style đầy đủ nếu thuộc tính&nbsp;</span>
                                    <code>type</code><span>&nbsp;của chúng được khai báo rõ ràng.</span></span>
                                </p>
                                <p paraid="224546742" paraeid="{60822a4f-7b1c-414c-bd4f-cddc6de00a0d}{166}"><span
                                        xml:lang="EN-US" lang="EN-US"><span>
                                    <span>Để thêm text hoặc các nút vào đằng trước hoặc đằng sau của&nbsp;</span><code>&lt;input&gt;</code></span></span>
                                </p>
                            </div>
                            <p>
                                <iframe width="100%" height="200"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/15/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Phần tử Textarea</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1900800055" paraeid="{252b0bf6-81c0-4538-917c-3b08bb9657ee}{9}">
                                    <span>Textarea là một dạng form-control hỗ trợ nhiều dòng text. Khi cần thiết,
                                        hãy thay đổi thuộc tính&nbsp;</span>
                                    <code>rows</code><span>.</span>
                                </p>
                            </div>
                            <p>
                                <iframe width="100%" height="200"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/16/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Phần tử Checkbox và Radio button</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="269317768" paraeid="{252b0bf6-81c0-4538-917c-3b08bb9657ee}{101}"><span
                                        xml:lang="EN-US" lang="EN-US"></span><span xml:lang="EN-US" lang="EN-US">Checkbox&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">và</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US"></span><span xml:lang="EN-US" lang="EN-US">radio button&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">rất</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">tuyệt</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">khi</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">bạn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">muốn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">người</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dùng</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">lựa</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">chọn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">từ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">danh</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">sách</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">các</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">tùy</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">chọn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;có sẵn</span><span
                                        xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                            </div>
                            <ul role="list">
                                <li data-listid="5" aria-setsize="-1" data-aria-posinset="1" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="184605642" paraeid="{252b0bf6-81c0-4538-917c-3b08bb9657ee}{115}"><span
                                            xml:lang="EN-US" lang="EN-US">Khi</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">xây</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dựng</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">một</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">biểu</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">mẫu</span><span xml:lang="EN-US" lang="EN-US">,&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">sử</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dụng</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">  checkbox</span><span
                                            xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US"
                                                                                              lang="EN-US">nếu</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">bạn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">muốn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">người</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">dùng</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">chọn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">bất</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">kỳ</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">số</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">lượng</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">các</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">tùy</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">chọn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">từ</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">một</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">danh</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">sách</span><span
                                            xml:lang="EN-US" lang="EN-US">.&nbsp;</span><span xml:lang="EN-US"
                                                                                              lang="EN-US"> </span><span
                                            xml:lang="EN-US" lang="EN-US">Sử</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dụng&nbsp;</span><span xml:lang="EN-US"
                                                                                                 lang="EN-US">radio</span><span
                                            xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US"
                                                                                              lang="EN-US">nếu</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">bạn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">muốn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">giới</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">hạn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">người</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">dùng</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">chỉ</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">với</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">một</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">lựa</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">chọn</span><span
                                            xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                                </li>
                                <li data-listid="5" aria-setsize="-1" data-aria-posinset="2" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="684621690" paraeid="{252b0bf6-81c0-4538-917c-3b08bb9657ee}{128}"><span
                                            xml:lang="EN-US" lang="EN-US">Sử</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dụng class</span><span xml:lang="EN-US"
                                                                                                 lang="EN-US"> &nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">.checkbox-line</span><span xml:lang="EN-US"
                                                                                                     lang="EN-US"> &nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">hoặc&nbsp;</span><span xml:lang="EN-US"
                                                                                                 lang="EN-US"> </span><span
                                            xml:lang="EN-US" lang="EN-US">.radio-line line cho một chuỗi các checkbox
                                        hoặc radio khi các phần tử này cùng nằm trên một dòng.</span>&nbsp;
                                    </p>
                                </li>
                            </ul>
                            <div>
                                <p paraid="76579054" paraeid="{252b0bf6-81c0-4538-917c-3b08bb9657ee}{132}"><span
                                        xml:lang="EN-US" lang="EN-US">Ví</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dụ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dưới</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">đây</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">thể</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hiện</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">cả</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hai</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">loại</span><span xml:lang="EN-US" lang="EN-US">&nbsp;(</span><span
                                        xml:lang="EN-US" lang="EN-US">mặc</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">định</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">và</span><span xml:lang="EN-US" lang="EN-US">&nbsp;inline form</span><span
                                        xml:lang="EN-US" lang="EN-US">)</span>&nbsp;</p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/17/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Phần tử select</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1484202702" paraeid="{6108b240-fc80-46bd-97b8-8441c94573ca}{131}"><span
                                        xml:lang="EN-US" lang="EN-US">Một</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">lựa</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">chọn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">được</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">sử</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dụng</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">khi</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">bạn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US"></span><span xml:lang="EN-US"
                                                                                   lang="EN-US">cho</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">phép</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">người</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">dùng</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">chọn</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">từ</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">nhiều</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">tùy</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">chọn</span><span
                                        xml:lang="EN-US" lang="EN-US">,&nbsp;</span><span xml:lang="EN-US" lang="EN-US">nhưng</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">mặc</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">định</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">nó</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">chỉ</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">cho</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">phép chọn</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">một</span><span
                                        xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                            </div>
                            <ul role="list">
                                <li data-listid="6" aria-setsize="-1" data-aria-posinset="1" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="122517296" paraeid="{6108b240-fc80-46bd-97b8-8441c94573ca}{136}"><span
                                            xml:lang="EN-US" lang="EN-US">Sử</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dụng</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;&lt;select&gt;&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">cho danh sách</span><span xml:lang="EN-US"
                                                                                                    lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">các</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">tùy</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">chọn</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;của</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">người</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">dùng</span><span
                                            xml:lang="EN-US" lang="EN-US">,&nbsp;</span><span xml:lang="EN-US"
                                                                                              lang="EN-US">chẳng</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">hạn</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">như tùy chọ về</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">trạng</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">thái</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">hoặc</span><span
                                            xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">số</span><span
                                            xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                                </li>
                                <li data-listid="6" aria-setsize="-1" data-aria-posinset="2" role="listitem"
                                    data-aria-level="1">
                                    <p paraid="1026314181" paraeid="{6108b240-fc80-46bd-97b8-8441c94573ca}{145}"><span
                                            xml:lang="EN-US" lang="EN-US">Sử</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dụng thuộc tính&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US"> </span><span xml:lang="EN-US"
                                                 lang="EN-US">multiple = "multiple" trong thẻ &lt;select&gt;&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US"> </span><span xml:lang="EN-US"
                                                                                        lang="EN-US"></span><span
                                            xml:lang="EN-US" lang="EN-US">cho</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">phép</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">người</span><span xml:lang="EN-US"
                                                                                            lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">dùng</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">chọn</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">nhiều</span><span xml:lang="EN-US"
                                                                                            lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">lựa</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                            xml:lang="EN-US" lang="EN-US">chọn</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">.</span>&nbsp;
                                    </p>
                                </li>
                            </ul>
                            <div>
                                <p paraid="115530913" paraeid="{6108b240-fc80-46bd-97b8-8441c94573ca}{149}"><span
                                        xml:lang="EN-US" lang="EN-US">Ví</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dụ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dưới</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">đây</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">thể</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hiện</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">cả</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hai</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">loại</span><span xml:lang="EN-US" lang="EN-US">&nbsp;(</span><span
                                        xml:lang="EN-US" lang="EN-US">chọn một</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">và</span><span xml:lang="EN-US" lang="EN-US">&nbsp;chọn&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">nhiều</span><span xml:lang="EN-US"
                                                                                        lang="EN-US">):</span>&nbsp;</p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/18/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Các form-control </span><span xml:lang="EN-US"
                                                                                                      lang="EN-US">tĩnh</span>&nbsp;
                                </h4>
                            </div>
                            <div>
                                <p paraid="1499489770" paraeid="{691a3491-e1e8-4059-b6d2-16eb9b1cf8ee}{98}">
                                    <span>Khi bạn cần đặt một dòng text thuần bên cạnh một nhãn bên trong một form dàn hàng ngang,
                                        hãy sử dụng class&nbsp;</span>
                                    <code>.form-control-static</code><span>&nbsp;trên thẻ&nbsp;</span><code>&lt;p&gt;</code><span>.</span>
                                </p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/kiennguyen2/pc7o4aun/4/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest=""
                                        frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Trạng thái các phần tử</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1143972473" paraeid="{490e509a-32c0-4efa-a36b-5a32f96ed4b1}{46}"><span
                                        xml:lang="EN-US" lang="EN-US">Thêm trang thái :focus khi người dùng muốn
                                    click vào phần tử input hoặc dùng tab với nó</span><span
                                        xml:lang="EN-US" lang="EN-US">, Bootstrap&nbsp;</span><span xml:lang="EN-US"
                                                                                                    lang="EN-US">cung</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">cấp</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">kiểu</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US"
                                                                                         lang="EN-US"></span><span
                                        xml:lang="EN-US" lang="EN-US">cho</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">các</span><span xml:lang="EN-US" lang="EN-US">&nbsp;input bị khóa</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">và</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">các</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;class</span><span xml:lang="EN-US"
                                                                                              lang="EN-US">&nbsp;khi</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">xác</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;thực</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">&nbsp;form</span><span
                                        xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                            </div>
                            <div>
                                <h4>Input focus&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="587028533" paraeid="{490e509a-32c0-4efa-a36b-5a32f96ed4b1}{62}"><span
                                        xml:lang="EN-US"
                                        lang="EN-US"><span>Loại bỏ&nbsp;</span><code>outline</code>
                                    <span>&nbsp;mặc định trên một số form-control và sử dụng&nbsp;</span
                                ><code>box-shadow</code><span>&nbsp;để hiển thị input như đang được&nbsp;</span><code>:focus</code><
                                    span>.</span>Khi</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">đầu</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">vào</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">nhận</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">được</span><span
                                        xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US" lang="EN-US">:focus</span><span
                                        xml:lang="EN-US" lang="EN-US">, diện mạo</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">của</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">đầu</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">vào</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">sẽ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">bị</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">loại</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">bỏ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">và&nbsp;</span><span xml:lang="EN-US"
                                                                                           lang="EN-US"> box-shadow</span><span
                                        xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US" lang="EN-US">được</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">áp</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">dụng</span><span
                                        xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                            </div>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Vô</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hiệu</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hóa đầu vào</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1923760062" paraeid="{490e509a-32c0-4efa-a36b-5a32f96ed4b1}{76}"><span>Hãy thêm thuộc tính&nbsp;</span>
                                    <code>disabled</code>
                                    <span>&nbsp;vào một input để ngăn cản người dùng nhập dữ liệu
                                        và làm cho input hiển thị giống như là đã bị vô hiệu hóa.</span>
                                </p>
                            </div>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Vô hiệu hóa phần tử fieldset</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="799960188" paraeid="{490e509a-32c0-4efa-a36b-5a32f96ed4b1}{84}"><span
                                        xml:lang="EN-US" lang="EN-US">Thêm</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">thuộc</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">tính disabled&nbsp;</span><span xml:lang="EN-US"
                                                                                                      lang="EN-US">vào</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;phần tử</span><span xml:lang="EN-US"
                                                                                                lang="EN-US">&nbsp;&lt;</span><span
                                        xml:lang="EN-US" lang="EN-US">fieldset</span><span xml:lang="EN-US"
                                                                                           lang="EN-US">&gt;&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">để</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">vô</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hiệu</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hóa</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">tất</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">cả</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">các</span><span xml:lang="EN-US" lang="EN-US">&nbsp;phần tử</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">bên</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">trong</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;&lt;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">fieldset</span><span
                                        xml:lang="EN-US" lang="EN-US">&gt;&nbsp;</span><span xml:lang="EN-US"
                                                                                             lang="EN-US">cùng</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">một</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">lúc</span><span
                                        xml:lang="EN-US" lang="EN-US">.</span>&nbsp;</p>
                            </div>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Trạng thái xác nhận</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="533501097" paraeid="{490e509a-32c0-4efa-a36b-5a32f96ed4b1}{99}">
                                    <span xml:lang="EN-US" lang="EN-US">
                                        <span>Bootstrap cung cấp các style xác nhận biểu thị các trạng thái lỗi,
                                            cảnh báo và thành công áp dụng trên các form-control.
                                            Để sử dụng, hãy thêm các class&nbsp;</span>
                                    <code>.has-warning</code><span>,&nbsp;</span><code>.has-error</code><span>, hoặc&nbsp;</span>
                                    <code>.has-success</code>
                                    <span>&nbsp;vào phần tử cha. Bất kỳ phần tử nào có class&nbsp;</span><code>.control-label</code>
                                    <span>,&nbsp;</span><code>.form-control</code><span>, và&nbsp;</span><code>.help-block</code>
                                    <span>&nbsp;bên trong phần tử cha đó sẽ được áp dụng style xác nhận</span>.</span>&nbsp;
                                </p>
                            </div>
                            <div>
                                <p paraid="1454834974" paraeid="{490e509a-32c0-4efa-a36b-5a32f96ed4b1}{103}"><span
                                        xml:lang="EN-US" lang="EN-US">Ví</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dụ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dưới</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">đây</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">thể</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">hiện</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">tất</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">cả</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">các</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">trạng</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">thái</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">điều</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">khiển</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">biểu</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">mẫu:</span></p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/kiennguyen2/pc7o4aun/5/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest=""
                                        frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4>Thay đối kích thước của form-control&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1593443442" paraeid="{0f99ad3b-8c6e-408d-97b2-495fa843ffcb}{65}"><span
                                        xml:lang="EN-US"
                                        lang="EN-US"><span>Hãy sử dụng các class tương tự như&nbsp;</span><code>.input-lg</code>
                                    <span>&nbsp;để thiết lập chiều cao, và sử dụng các class tương tự như&nbsp;</span><code>.col-lg-*</code>
                                    <span>&nbsp;để thiết lập chiều rộng của form-control (tương tự như các cột của lưới).&nbsp;</span>Bạn</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">có</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">thể</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">đặt</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">chiều</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">cao</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">và</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">chiều</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">rộng</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">của</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;form&nbsp;</span><span xml:lang="EN-US"
                                                                                                   lang="EN-US">sử</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">dụng</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">các</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;class</span><span xml:lang="EN-US"
                                                                                              lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">như&nbsp;</span><span xml:lang="EN-US"
                                                                                            lang="EN-US"> </span><span
                                        xml:lang="EN-US" lang="EN-US">.input-</span><span xml:lang="EN-US" lang="EN-US">lg</span><span
                                        xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span xml:lang="EN-US" lang="EN-US">và&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US"> </span><span xml:lang="EN-US"
                                                                                    lang="EN-US">.col-</span><span
                                        xml:lang="EN-US" lang="EN-US">lg</span><span xml:lang="EN-US"
                                                                                     lang="EN-US">-*</span><span
                                        xml:lang="EN-US" lang="EN-US">.</span><span xml:lang="EN-US" lang="EN-US"> &nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">Ví</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">dụ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">sau</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">chứng</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">minh</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">điều</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">này</span><span xml:lang="EN-US" lang="EN-US">&nbsp;-</span>
                                </p>
                            </div>
                            <p>
                                <iframe width="100%" height="500"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/21/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <div>
                                <h4><span xml:lang="EN-US" lang="EN-US">Văn</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">bản</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">trợ</span><span xml:lang="EN-US" lang="EN-US">&nbsp;</span><span
                                        xml:lang="EN-US" lang="EN-US">giúp</span>&nbsp;</h4>
                            </div>
                            <div>
                                <p paraid="1690395325" paraeid="{a5d6e494-40f7-4842-a2a4-f876b85e4565}{51}"><span
                                        xml:lang="EN-US" lang="EN-US">
                                    <span>Để thêm text trợ giúp cho form-control, hãy bọc text đó bằng một thẻ&nbsp;</span>
                                    <code>&lt;span&gt;</code><span>&nbsp;có class&nbsp;</span><code>.help-block</code></span><span
                                        xml:lang="EN-US" lang="EN-US">.</span><span xml:lang="EN-US"
                                                                                    lang="EN-US"></span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">Ví</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">dụ</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">sau</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">chứng</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">minh</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">điều</span><span
                                        xml:lang="EN-US" lang="EN-US">&nbsp;</span><span xml:lang="EN-US" lang="EN-US">này.</span><span
                                        xml:lang="EN-US" lang="EN-US"><br></span></p>
                            </div>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/bfd0Lk2d/22/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 9:54 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
