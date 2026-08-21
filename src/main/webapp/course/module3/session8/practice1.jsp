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
                <a href="/course/module3/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">8.Bootstrap</a>
                <div role="main" id="yui_3_17_2_1_1714166572109_24"><span id="maincontent"></span>
                    <h2>[Thực hành] Sử dụng Bootstrap xây dựng form login</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow" id="yui_3_17_2_1_1714166572109_23"><h3
                                id="yui_3_17_2_1_1714166572109_22">Mục tiêu</h3>
                            <p>Sử dụng được bootstrap</p>
                            <h3>Mô tả</h3>
                            <p>Xây dựng form login đăng nhập tài khoản bằng bootstrap như sau:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50990/mod_assign/intro/1.png"
                                    width="506" height="552"></p>
                            <h3>Hướng dẫn</h3>
                            <p>Bước 1: Tạo một dự án mới bằng Webstorm và tạo một file index.html</p>
                            <p>Bước 2: Truy cập trang web&nbsp;<a
                                    href="https://getbootstrap.com/docs/5.0/getting-started/introduction/"
                                    target="_blank">https://getbootstrap.com/docs/5.0/getting-started/introduction/</a>&nbsp;để
                                cài boostrap vào trong file HTML</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!doctype <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    <span
                                    style="color: #8c8c8c; font-style: italic;">&lt;!-- Required meta tags --&gt;<br></span><span
                                    style="color: #8c8c8c; font-style: italic;">    </span>&lt;<span
                                    style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="utf-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">meta </span><span style="color: #174ad4;">name</span><span
                                    style="color: #067d17;">="viewport" </span><span
                                    style="color: #174ad4;">content</span><span style="color: #067d17;">="width=device-width, initial-scale=1"</span>&gt;<br><br>    <span
                                    style="color: #8c8c8c; font-style: italic;">&lt;!-- Bootstrap CSS --&gt;<br></span><span
                                    style="color: #8c8c8c; font-style: italic;">    </span>&lt;<span
                                    style="color: #0033b3;">link </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" </span><span
                                    style="color: #174ad4;">rel</span><span
                                    style="color: #067d17;">="stylesheet"<br></span><span
                                    style="color: #067d17;">          </span><span
                                    style="color: #174ad4;">integrity</span><span style="color: #067d17;">="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" </span><span
                                    style="color: #174ad4;">crossorigin</span><span
                                    style="color: #067d17;">="anonymous"</span>&gt;<br><br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Hello, world!&lt;/<span
                                    style="color: #0033b3;">title</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">h1</span>&gt;Hello, world!&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br><br><br>&lt;<span style="color: #0033b3;">script </span><span
                                    style="color: #174ad4;">src</span><span style="color: #067d17;">="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"<br></span><span
                                    style="color: #067d17;">        </span><span
                                    style="color: #174ad4;">integrity</span><span style="color: #067d17;">="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"<br></span><span
                                    style="color: #067d17;">        </span><span
                                    style="color: #174ad4;">crossorigin</span><span
                                    style="color: #067d17;">="anonymous"</span>&gt;&lt;/<span style="color: #0033b3;">script</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Chạy thử chương trình xem đã thêm được thư viện bootstrap chưa</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50990/mod_assign/intro/Screenshot%202021-03-23%20222858.png"
                                     width="516" height="193"></p>
                            <p>Bước 3: Tải 1 ảnh icon bootstrap và lưu vào trong thư mục</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50990/mod_assign/intro/3.png"
                                    width="458" height="317"></p>
                            <p>Bước 4: Thêm đoạn HTML sau để hiển thị form đăng nhập</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!doctype <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    <span
                                    style="color: #8c8c8c; font-style: italic;">&lt;!-- Required meta tags --&gt;<br></span><span
                                    style="color: #8c8c8c; font-style: italic;">    </span>&lt;<span
                                    style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="utf-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">meta </span><span style="color: #174ad4;">name</span><span
                                    style="color: #067d17;">="viewport" </span><span
                                    style="color: #174ad4;">content</span><span style="color: #067d17;">="width=device-width, initial-scale=1"</span>&gt;<br><br>    <span
                                    style="color: #8c8c8c; font-style: italic;">&lt;!-- Bootstrap CSS --&gt;<br></span><span
                                    style="color: #8c8c8c; font-style: italic;">    </span>&lt;<span
                                    style="color: #0033b3;">link </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" </span><span
                                    style="color: #174ad4;">rel</span><span
                                    style="color: #067d17;">="stylesheet"<br></span><span
                                    style="color: #067d17;">          </span><span
                                    style="color: #174ad4;">integrity</span><span style="color: #067d17;">="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" </span><span
                                    style="color: #174ad4;">crossorigin</span><span
                                    style="color: #067d17;">="anonymous"</span>&gt;<br><br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Login&lt;/<span style="color: #0033b3;">title</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="text-center"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">form </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="form-signin"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">img </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="mb-4" </span><span style="color: #174ad4;">src</span><span
                                    style="color: #067d17;">="bootstrap.png" </span><span
                                    style="color: #174ad4;">alt</span><span style="color: #067d17;">="" </span><span
                                    style="color: #174ad4;">width</span><span
                                    style="color: #067d17;">="72"<br></span><span
                                    style="color: #067d17;">         </span><span
                                    style="color: #174ad4;">height</span><span
                                    style="color: #067d17;">="72"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">h1 </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="h3 mb-3 font-weight-normal"</span>&gt;Please sign in&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">input </span><span style="color: #174ad4;">type</span><span
                                    style="color: #067d17;">="email" </span><span style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="inputEmail" </span><span
                                    style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="form-control" </span><span style="color: #174ad4;">placeholder</span><span
                                    style="color: #067d17;">="Email address" </span><span style="color: #174ad4;">required autofocus</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">input </span><span style="color: #174ad4;">type</span><span
                                    style="color: #067d17;">="password" </span><span
                                    style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="inputPassword" </span><span
                                    style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="form-control" </span><span style="color: #174ad4;">placeholder</span><span
                                    style="color: #067d17;">="Password" </span><span
                                    style="color: #174ad4;">required</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">div </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="checkbox mb-3"</span>&gt;<br>        &lt;<span
                                    style="color: #0033b3;">label</span>&gt;<br>            &lt;<span
                                    style="color: #0033b3;">input </span><span style="color: #174ad4;">type</span><span
                                    style="color: #067d17;">="checkbox" </span><span
                                    style="color: #174ad4;">value</span><span
                                    style="color: #067d17;">="remember-me"</span>&gt; Remember me<br>        &lt;/<span
                                    style="color: #0033b3;">label</span>&gt;<br>    &lt;/<span style="color: #0033b3;">div</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">button </span><span
                                    style="color: #174ad4;">class</span><span style="color: #067d17;">="btn btn-lg btn-primary btn-block" </span><span
                                    style="color: #174ad4;">type</span><span style="color: #067d17;">="submit"</span>&gt;Sign in&lt;/<span
                                    style="color: #0033b3;">button</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">p </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="mt-5 mb-3 text-muted"</span>&gt;<span
                                    style="color: #174be6;">&amp;copy; </span>2017-2018&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">form</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">script </span><span style="color: #174ad4;">src</span><span
                                    style="color: #067d17;">="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"<br></span><span
                                    style="color: #067d17;">        </span><span
                                    style="color: #174ad4;">integrity</span><span style="color: #067d17;">="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"<br></span><span
                                    style="color: #067d17;">        </span><span
                                    style="color: #174ad4;">crossorigin</span><span
                                    style="color: #067d17;">="anonymous"</span>&gt;&lt;/<span style="color: #0033b3;">script</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Bước 5: Tạo file styles.css như sau:</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;"><span
                                    style="color: #0033b3;">html</span>,<br><span
                                    style="color: #0033b3;">body </span>{<br>    <span
                                    style="color: #174ad4;">height</span>: <span
                                    style="color: #1750eb;">100</span>%;<br>}<br><br><span
                                    style="color: #0033b3;">body </span>{<br>    <span
                                    style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">-ms-flexbox</span>;<br>    <span style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">-webkit-box</span>;<br>    <span style="color: #174ad4;">display</span>: <span
                                    style="color: #067d17;">flex</span>;<br>    <span style="color: #174ad4;">-ms-flex-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">-ms-flex-pack</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">-webkit-box-align</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">align-items</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">-webkit-box-pack</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">justify-content</span>: <span
                                    style="color: #067d17;">center</span>;<br>    <span style="color: #174ad4;">padding-top</span>: <span
                                    style="color: #1750eb;">40</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">padding-bottom</span>: <span
                                    style="color: #1750eb;">40</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">background-color</span>: <span
                                    style="color: #0033b3;">#f5f5f5</span>;<br>}<br><br>.<span style="color: #0033b3;">form-signin </span>{<br>    <span
                                    style="color: #174ad4;">width</span>: <span style="color: #1750eb;">100</span>%;<br>    <span
                                    style="color: #174ad4;">max-width</span>: <span
                                    style="color: #1750eb;">330</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>: <span style="color: #1750eb;">15</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">margin</span>: <span style="color: #1750eb;">0 </span><span
                                    style="color: #067d17;">auto</span>;<br>}<br>.<span style="color: #0033b3;">form-signin </span>.<span
                                    style="color: #0033b3;">checkbox </span>{<br>    <span style="color: #174ad4;">font-weight</span>: <span
                                    style="color: #1750eb;">400</span>;<br>}<br>.<span style="color: #0033b3;">form-signin </span>.<span
                                    style="color: #0033b3;">form-control </span>{<br>    <span style="color: #174ad4;">position</span>: <span
                                    style="color: #067d17;">relative</span>;<br>    <span style="color: #174ad4;">box-sizing</span>: <span
                                    style="color: #067d17;">border-box</span>;<br>    <span style="color: #174ad4;">height</span>: <span
                                    style="color: #067d17;">auto</span>;<br>    <span
                                    style="color: #174ad4;">padding</span>: <span style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>    <span
                                    style="color: #174ad4;">font-size</span>: <span
                                    style="color: #1750eb;">16</span><span
                                    style="color: #067d17;">px</span>;<br>}<br>.<span style="color: #0033b3;">form-signin </span>.<span
                                    style="color: #0033b3;">form-control</span>:<span
                                    style="color: #0033b3;">focus </span>{<br>    <span
                                    style="color: #174ad4;">z-index</span>: <span style="color: #1750eb;">2</span>;<br>}<br>.<span
                                    style="color: #0033b3;">form-signin input</span>[<span
                                    style="color: #0033b3;">type</span>=<span
                                    style="color: #067d17;">"email"</span>] {<br>    <span style="color: #174ad4;">margin-bottom</span>: -<span
                                    style="color: #1750eb;">1</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">border-bottom-right-radius</span>: <span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">border-bottom-left-radius</span>: <span
                                    style="color: #1750eb;">0</span>;<br>}<br>.<span style="color: #0033b3;">form-signin input</span>[<span
                                    style="color: #0033b3;">type</span>=<span style="color: #067d17;">"password"</span>] {<br>    <span
                                    style="color: #174ad4;">margin-bottom</span>: <span
                                    style="color: #1750eb;">10</span><span
                                    style="color: #067d17;">px</span>;<br>    <span style="color: #174ad4;">border-top-left-radius</span>: <span
                                    style="color: #1750eb;">0</span>;<br>    <span style="color: #174ad4;">border-top-right-radius</span>: <span
                                    style="color: #1750eb;">0</span>;<br>}</pre>
                            <p>Cập nhật lại file index.html</p>
                            <pre style="background-color: #ffffff; color: #080808; font-family: 'JetBrains Mono',monospace; font-size: 10.5pt;">&lt;!doctype <span
                                    style="color: #174ad4;">html</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">html </span><span style="color: #174ad4;">lang</span><span
                                    style="color: #067d17;">="en"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">head</span>&gt;<br>    <span
                                    style="color: #8c8c8c; font-style: italic;">&lt;!-- Required meta tags --&gt;<br></span><span
                                    style="color: #8c8c8c; font-style: italic;">    </span>&lt;<span
                                    style="color: #0033b3;">meta </span><span
                                    style="color: #174ad4;">charset</span><span style="color: #067d17;">="utf-8"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">meta </span><span style="color: #174ad4;">name</span><span
                                    style="color: #067d17;">="viewport" </span><span
                                    style="color: #174ad4;">content</span><span style="color: #067d17;">="width=device-width, initial-scale=1"</span>&gt;<br><br>    <span
                                    style="color: #8c8c8c; font-style: italic;">&lt;!-- Bootstrap CSS --&gt;<br></span><span
                                    style="color: #8c8c8c; font-style: italic;">    </span>&lt;<span
                                    style="color: #0033b3;">link </span><span style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" </span><span
                                    style="color: #174ad4;">rel</span><span
                                    style="color: #067d17;">="stylesheet"<br></span><span
                                    style="color: #067d17;">          </span><span
                                    style="color: #174ad4;">integrity</span><span style="color: #067d17;">="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" </span><span
                                    style="color: #174ad4;">crossorigin</span><span
                                    style="color: #067d17;">="anonymous"</span>&gt;<br><br>    &lt;<span
                                    style="color: #0033b3;">title</span>&gt;Login&lt;/<span style="color: #0033b3;">title</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">link </span><span style="color: #174ad4;">rel</span><span
                                    style="color: #067d17;">="stylesheet" </span><span
                                    style="color: #174ad4;">href</span><span
                                    style="color: #067d17;">="styles.css"</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">head</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">body </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="text-center"</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">form </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="form-signin"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">img </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="mb-4" </span><span style="color: #174ad4;">src</span><span
                                    style="color: #067d17;">="bootstrap.png" </span><span
                                    style="color: #174ad4;">alt</span><span style="color: #067d17;">="" </span><span
                                    style="color: #174ad4;">width</span><span
                                    style="color: #067d17;">="72"<br></span><span
                                    style="color: #067d17;">         </span><span
                                    style="color: #174ad4;">height</span><span
                                    style="color: #067d17;">="72"</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">h1 </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="h3 mb-3 font-weight-normal"</span>&gt;Please sign in&lt;/<span
                                    style="color: #0033b3;">h1</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">input </span><span style="color: #174ad4;">type</span><span
                                    style="color: #067d17;">="email" </span><span style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="inputEmail" </span><span
                                    style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="form-control" </span><span style="color: #174ad4;">placeholder</span><span
                                    style="color: #067d17;">="Email address" </span><span style="color: #174ad4;">required autofocus</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">input </span><span style="color: #174ad4;">type</span><span
                                    style="color: #067d17;">="password" </span><span
                                    style="color: #174ad4;">id</span><span
                                    style="color: #067d17;">="inputPassword" </span><span
                                    style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="form-control" </span><span style="color: #174ad4;">placeholder</span><span
                                    style="color: #067d17;">="Password" </span><span
                                    style="color: #174ad4;">required</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">div </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="checkbox mb-3"</span>&gt;<br>        &lt;<span
                                    style="color: #0033b3;">label</span>&gt;<br>            &lt;<span
                                    style="color: #0033b3;">input </span><span style="color: #174ad4;">type</span><span
                                    style="color: #067d17;">="checkbox" </span><span
                                    style="color: #174ad4;">value</span><span
                                    style="color: #067d17;">="remember-me"</span>&gt; Remember me<br>        &lt;/<span
                                    style="color: #0033b3;">label</span>&gt;<br>    &lt;/<span style="color: #0033b3;">div</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">button </span><span
                                    style="color: #174ad4;">class</span><span style="color: #067d17;">="btn btn-lg btn-primary btn-block" </span><span
                                    style="color: #174ad4;">type</span><span style="color: #067d17;">="submit"</span>&gt;Sign in&lt;/<span
                                    style="color: #0033b3;">button</span>&gt;<br>    &lt;<span
                                    style="color: #0033b3;">p </span><span style="color: #174ad4;">class</span><span
                                    style="color: #067d17;">="mt-5 mb-3 text-muted"</span>&gt;<span
                                    style="color: #174be6;">&amp;copy; </span>2017-2018&lt;/<span
                                    style="color: #0033b3;">p</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">form</span>&gt;<br>&lt;<span
                                    style="color: #0033b3;">script </span><span style="color: #174ad4;">src</span><span
                                    style="color: #067d17;">="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"<br></span><span
                                    style="color: #067d17;">        </span><span
                                    style="color: #174ad4;">integrity</span><span style="color: #067d17;">="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"<br></span><span
                                    style="color: #067d17;">        </span><span
                                    style="color: #174ad4;">crossorigin</span><span
                                    style="color: #067d17;">="anonymous"</span>&gt;&lt;/<span style="color: #0033b3;">script</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">body</span>&gt;<br>&lt;/<span
                                    style="color: #0033b3;">html</span>&gt;</pre>
                            <p>Chạy lại file index.html và quan sát kết quả</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
