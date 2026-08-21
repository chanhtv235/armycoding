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
                <a href="/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Thiết kế Layout</a>

                <div role="main"><span id="maincontent"></span>
                    <h2>[Thực hành] Sử dụng box model</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h3
                                style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                style="box-sizing: border-box;">Mục tiêu</span></h3>
                            <p><span style="box-sizing: border-box;">Sử dụng được box model</span></p>
                            <h3><span style="box-sizing: border-box;">Mô tả</span></h3>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;">Dùng border, background, padding, margin để định dạng kết quả như hình dưới đây:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50991/mod_assign/intro/boxmodel4.png"
                                    width="800" height="450"></span></p>
                            <h3 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Hướng dẫn</h3>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Bước 1: Tạo tài
                                liệu mới html gồm đầy đủ các phần head, body. Trong body có sử dụng các thẻ div, p như
                                sau:&nbsp;</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"></p>
                            <pre><code class="hljs http">

<pre id="yui_3_17_2_1_1577008837118_218"
     style="box-sizing: border-box; color: inherit; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 14.4px; margin: 0px 8px 1rem; overflow: auto; display: block;"><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-meta"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-meta">&lt;!DOCTYPE </span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-meta"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-meta"><span
        class="hljs-meta-keyword">html</span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-meta"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-meta">&gt;</span></span></span></span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-name">html</span></span></span></span><span class="xml"><span
        class="hljs-tag"> </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-attr" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag"><span class="hljs-attr">lang</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">=</span></span><span class="hljs-string"
                                                                style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-string">"en"</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">head</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-name">meta</span></span></span></span><span class="xml"><span
        class="hljs-tag"> </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-attr" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag"><span
        class="hljs-attr">charset</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">=</span></span><span class="hljs-string"
                                                                style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-string">"UTF-8"</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">title</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><span
        class="xml" style="box-sizing: border-box;"><span class="xml">Sử dụng Boxmodel</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">title</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">head</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">body</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">div</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><span class="xml"
                                                                          style="box-sizing: border-box;"><span
        class="xml">Mô hình hộp trong CSS về cơ bản là một hộp bao quanh phần tử HTML.</span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">        Nó bao gồm: lề (margin), viền (border), phần đệm (padding) và nội dung (content)</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><br style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><span class="xml"
                                                                          style="box-sizing: border-box;"><span
        class="xml">Mô hình hộp trong CSS về cơ bản là một hộp bao quanh phần tử HTML.</span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">        Nó bao gồm: lề (margin), viền (border), phần đệm (padding) và nội dung (content)</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><br style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><span class="xml"
                                                                          style="box-sizing: border-box;"><span
        class="xml">Mô hình hộp trong CSS về cơ bản là một hộp bao quanh phần tử HTML.</span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">        Nó bao gồm: lề (margin), viền (border), phần đệm (padding) và nội dung (content)</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><br style="box-sizing: border-box;"><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">div</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">body</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">html</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span></pre><span
                                    class="xml">
</span></code><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><code
                                    class="hljs"></code></p></pre>
                            <p></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;">Kết quả hiển thị:&nbsp;</span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50991/mod_assign/intro/box1.png"
                                    width="1143" height="129"></span></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Bước 2: Nhúng CSS
                                định dạng hiển thị của thẻ div</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Tạo class có tên
                                boxmodel cho thẻ div:</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"></p>
                            <pre><code class="hljs http">

<pre id="yui_3_17_2_1_1577008837118_234"
     style="box-sizing: border-box; color: inherit; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 14.4px; margin: 0px 8px 1rem; overflow: auto; display: block;"><span
        style="box-sizing: border-box;"><span class="javascript">&lt;</span></span><span
        style="box-sizing: border-box;"><span class="javascript">div </span></span><span
        style="box-sizing: border-box;"><span class="cs" style="box-sizing: border-box;"><span class="hljs-keyword"
                                                                                               style="box-sizing: border-box;"><span
        class="javascript"><span class="hljs-class"><span class="hljs-keyword">class</span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="cs" style="box-sizing: border-box;"><span
        class="javascript">=</span><span class="hljs-string" style="box-sizing: border-box;"><span
        class="javascript"><span class="hljs-string">"boxmodel"</span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="javascript">&gt;</span></span></pre><span class="javascript">
</span></code><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><code
                                    class="hljs"></code></p></pre>
                            <p></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;">Và định nghĩa bộ chọn .boxmodel ở thẻ &lt;style&gt;:</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;"></span></p>
                            <pre><code class="hljs http">

<pre id="yui_3_17_2_1_1577008837118_252"
     style="box-sizing: border-box; color: inherit; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 14.4px; margin: 0px 8px 1rem; overflow: auto; display: block;"><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">style</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="css"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="css">    </span></span><span class="hljs-selector-class"
                                                              style="box-sizing: border-box;"><span class="xml"><span
        class="css"><span class="hljs-selector-class">.</span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="css"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-selector-class" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-selector-class">boxmodel</span></span></span></span></span></span></span><span class="xml"
                                                                                                   style="box-sizing: border-box;"><span
        class="xml"><span class="css">{</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">        </span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-attribute">margin</span></span></span></span></span></span></span><span class="xml"
                                                                                            style="box-sizing: border-box;"><span
        class="xml"><span class="css">: </span></span></span><span style="box-sizing: border-box;"><span
        class="hljs-number" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-number">0</span></span></span></span><span class="xml"><span class="css"> </span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="css">auto</span></span></span><span class="xml"
                                                                                                           style="box-sizing: border-box;"><span
        class="xml"><span class="css">;</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">        </span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-attribute">width</span></span></span></span></span></span></span><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="xml"><span class="css">: </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                                         style="box-sizing: border-box;"><span
        class="css" style="box-sizing: border-box;"><span class="hljs-number" style="box-sizing: border-box;"><span
        class="xml"><span class="css"><span
        class="hljs-number">800</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="css"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-number" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-number">px</span></span></span></span></span></span></span><span class="xml"
                                                                                     style="box-sizing: border-box;"><span
        class="xml"><span class="css">;</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">        </span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-attribute">border</span></span></span></span></span></span></span><span class="xml"
                                                                                            style="box-sizing: border-box;"><span
        class="xml"><span class="css">: </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                                         style="box-sizing: border-box;"><span
        class="css" style="box-sizing: border-box;"><span class="hljs-number" style="box-sizing: border-box;"><span
        class="xml"><span class="css"><span class="hljs-number">10</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="css"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-number" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-number">px</span></span></span></span></span></span></span><span class="xml"
                                                                                     style="box-sizing: border-box;"><span
        class="xml"><span class="css">;</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">        </span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-attribute">padding</span></span></span></span></span></span></span><span class="xml"
                                                                                             style="box-sizing: border-box;"><span
        class="xml"><span class="css">: </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                                         style="box-sizing: border-box;"><span
        class="css" style="box-sizing: border-box;"><span class="hljs-number" style="box-sizing: border-box;"><span
        class="xml"><span class="css"><span class="hljs-number">10</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="css"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-number" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-number">px</span></span></span></span></span></span></span><span class="xml"
                                                                                     style="box-sizing: border-box;"><span
        class="xml"><span class="css">;</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">        </span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-attribute">border-color</span></span></span></span></span></span></span><span class="xml"
                                                                                                  style="box-sizing: border-box;"><span
        class="xml"><span class="css">: </span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="css">chartreuse aqua blue blueviolet</span></span></span><span class="xml"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="css">;</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">        </span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="xml"><span class="css"><span
        class="hljs-attribute">border-style</span></span></span></span></span></span></span><span class="xml"
                                                                                                  style="box-sizing: border-box;"><span
        class="xml"><span class="css">: </span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="css">solid</span></span></span><span class="xml" style="box-sizing: border-box;"><span
        class="xml"><span class="css">;</span></span></span><br style="box-sizing: border-box;"><span class="xml"
                                                                                                      style="box-sizing: border-box;"><span
        class="xml"><span class="css">    }</span></span></span><br style="box-sizing: border-box;"><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">style</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span></pre><span
                                    class="xml">
</span></code><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><code class="hljs"><span
                                    style="box-sizing: border-box;"></span></code></p></pre>
                            <p></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Trong đó:&nbsp;</p>
                            <ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                <li style="box-sizing: border-box;">Thuộc tính width để quy định kích thước chiều rộng
                                    của div, giá trị là 800px
                                </li>
                                <li style="box-sizing: border-box;">Thuộc tính border để quy định viền của div, có độ
                                    dày 10px
                                </li>
                                <li style="box-sizing: border-box;">Thuộc tính border-color để quy định màu của viền
                                    (tuân thủ quy tắc chiều kim đồng hồ + quy tắc đối xứng)
                                </li>
                                <li style="box-sizing: border-box;">Thuộc tính border-style để quy định kiểu của viền,
                                    nét liền solid
                                </li>
                                <li style="box-sizing: border-box;">Thuộc tính padding để quy định khoảng cách từ nội
                                    dung đến viền 10px
                                </li>
                                <li style="box-sizing: border-box;">Thuộc tính margin nhận giá trị "0 auto" để căn div
                                    ra giữa cửa sổ hiển thị
                                </li>
                            </ul>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Lưu ý: Lần lượt
                                thêm các thuộc tính trên và chạy thử trên trình duyệt để xem sự thay đổi và hiểu ý nghĩa
                                các thuộc tính</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Kết quả hiển thị:&nbsp;</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50991/mod_assign/intro/box2.png"
                                    width="1143" height="294"></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;">Bước 3: Viết bộ chọn html quy định hiển thị cho các thẻ p</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;"></span></p>
                            <pre><code class="hljs http">

<pre id="yui_3_17_2_1_1577008837118_279"
     style="box-sizing: border-box; color: inherit; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 14.4px; margin: 0px 8px 1rem; overflow: auto; display: block;"><span
        class="css" style="box-sizing: border-box;"><span class="hljs-selector-class"
                                                          style="box-sizing: border-box;"><span class="css"><span
        class="hljs-selector-class">.</span></span></span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                                             style="box-sizing: border-box;"><span
        class="hljs-selector-class" style="box-sizing: border-box;"><span class="css"><span class="hljs-selector-class">boxmodel</span></span></span><span
        class="css"> </span><span class="hljs-selector-tag" style="box-sizing: border-box;"><span class="css"><span
        class="hljs-selector-tag">p</span></span></span></span></span><span class="css" style="box-sizing: border-box;"><span
        class="css">{</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">    </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                  style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="css"><span
        class="hljs-attribute">border</span></span></span></span></span><span class="css"
                                                                              style="box-sizing: border-box;"><span
        class="css">: </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                style="box-sizing: border-box;"><span
        class="hljs-number" style="box-sizing: border-box;"><span class="css"><span class="hljs-number">3</span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-number" style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">px</span></span></span><span
        class="css"> dotted darkred</span></span><span class="css" style="box-sizing: border-box;"><span
        class="css">;</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">    </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                  style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="css"><span
        class="hljs-attribute">padding</span></span></span></span></span><span class="css"
                                                                               style="box-sizing: border-box;"><span
        class="css">: </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                style="box-sizing: border-box;"><span
        class="hljs-number" style="box-sizing: border-box;"><span class="css"><span class="hljs-number">10</span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">px</span></span></span></span></span><span class="css"
                                                                                         style="box-sizing: border-box;"><span
        class="css">;</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">}</span></span></pre><span class="css">
</span></code><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><code class="hljs"><span
                                    style="box-sizing: border-box;"></span></code></p></pre>
                            <p></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;"><span style="box-sizing: border-box;">Kết quả hiển thị:&nbsp;</span></span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50991/mod_assign/intro/box3.png"
                                    width="1143" height="407"></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Bước 4: Lần lượt
                                viết các bộ chọn id cho các thẻ p để quy định hiển thị&nbsp;</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Trong html:</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"></p>
                            <pre><code class="hljs http">

<pre id="yui_3_17_2_1_1577008837118_300"
     style="box-sizing: border-box; color: inherit; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 14.4px; margin: 0px 8px 1rem; overflow: auto; display: block;"><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-name">div</span></span></span></span><span class="xml"><span
        class="hljs-tag"> </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-attr" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag"><span
        class="hljs-attr">class</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">=</span></span><span class="hljs-string"
                                                                style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-string">"boxmodel"</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-name">p</span></span></span></span><span class="xml"><span
        class="hljs-tag"> </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-attr" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag"><span
        class="hljs-attr">id</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">=</span></span><span class="hljs-string"
                                                                style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-string">"boxmodel1"</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><span
        class="xml" style="box-sizing: border-box;"><span class="xml">Mô hình hộp trong CSS về cơ bản là một hộp bao quanh phần tử HTML.</span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">        Nó bao gồm: lề (margin), viền (border), phần đệm (padding) và nội dung (content)</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><br style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-name">p</span></span></span></span><span class="xml"><span
        class="hljs-tag"> </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-attr" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag"><span
        class="hljs-attr">id</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">=</span></span><span class="hljs-string"
                                                                style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-string">"boxmodel2"</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><span
        class="xml" style="box-sizing: border-box;"><span class="xml">Mô hình hộp trong CSS về cơ bản là một hộp bao quanh phần tử HTML.</span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">        Nó bao gồm: lề (margin), viền (border), phần đệm (padding) và nội dung (content)</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><br style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="xml">    </span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;</span></span></span><span
        style="box-sizing: border-box;"><span class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-name">p</span></span></span></span><span class="xml"><span
        class="hljs-tag"> </span></span></span><span style="box-sizing: border-box;"><span class="xml"
                                                                                           style="box-sizing: border-box;"><span
        class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-attr" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag"><span
        class="hljs-attr">id</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">=</span></span><span class="hljs-string"
                                                                style="box-sizing: border-box;"><span class="xml"><span
        class="hljs-tag"><span class="hljs-string">"boxmodel3"</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span><span
        class="xml" style="box-sizing: border-box;"><span class="xml">Mô hình hộp trong CSS về cơ bản là một hộp bao quanh phần tử HTML.</span></span><br
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="xml">        Nó bao gồm: lề (margin), viền (border), phần đệm (padding) và nội dung (content)</span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">p</span></span></span></span></span></span></span><span style="box-sizing: border-box;"><span
        class="xml"><span class="hljs-tag">&gt;</span></span></span><br style="box-sizing: border-box;"><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&lt;/</span></span></span><span
        style="box-sizing: border-box;"><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag"
                                                                                                style="box-sizing: border-box;"><span
        class="hljs-name" style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag"><span
        class="hljs-name">div</span></span></span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="xml"><span class="hljs-tag">&gt;</span></span></span></pre><span
                                    class="xml">
</span></code><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><code
                                    class="hljs"></code></p></pre>
                            <p></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;">Định nghĩa các bộ chọn id trong CSS:&nbsp;</span>
                            </p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span
                                    style="box-sizing: border-box;"></span></p>
                            <pre><code class="hljs http">

<pre id="yui_3_17_2_1_1577008837118_317"
     style="box-sizing: border-box; color: inherit; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 14.4px; margin: 0px 8px 1rem; overflow: auto; display: block;"><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-selector-id"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-selector-id">#boxmodel1</span></span></span></span></span><span class="css"
                                                                                                      style="box-sizing: border-box;"><span
        class="css">{</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">    </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                  style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="css"><span class="hljs-attribute">margin-bottom</span></span></span></span></span><span
        class="css" style="box-sizing: border-box;"><span class="css">: </span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">20</span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">px</span></span></span></span></span><span class="css"
                                                                                         style="box-sizing: border-box;"><span
        class="css">;</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">}</span></span><br style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span
        class="css" style="box-sizing: border-box;"><span class="hljs-selector-id" style="box-sizing: border-box;"><span
        class="css"><span class="hljs-selector-id">#boxmodel2</span></span></span></span></span><span class="css"
                                                                                                      style="box-sizing: border-box;"><span
        class="css">{</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">    </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                  style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="css"><span class="hljs-attribute">margin-bottom</span></span></span></span></span><span
        class="css" style="box-sizing: border-box;"><span class="css">: </span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">40</span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">px</span></span></span></span></span><span class="css"
                                                                                         style="box-sizing: border-box;"><span
        class="css">;</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">}</span></span><br style="box-sizing: border-box;"><span style="box-sizing: border-box;"><span
        class="css" style="box-sizing: border-box;"><span class="hljs-selector-id" style="box-sizing: border-box;"><span
        class="css"><span class="hljs-selector-id">#boxmodel3</span></span></span></span></span><span class="css"
                                                                                                      style="box-sizing: border-box;"><span
        class="css">{</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">    </span></span><span style="box-sizing: border-box;"><span class="css"
                                                                                  style="box-sizing: border-box;"><span
        class="hljs-attribute" style="box-sizing: border-box;"><span class="css"><span class="hljs-attribute">margin-bottom</span></span></span></span></span><span
        class="css" style="box-sizing: border-box;"><span class="css">: </span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">60</span></span></span></span></span><span
        style="box-sizing: border-box;"><span class="css" style="box-sizing: border-box;"><span class="hljs-number"
                                                                                                style="box-sizing: border-box;"><span
        class="css"><span class="hljs-number">px</span></span></span></span></span><span class="css"
                                                                                         style="box-sizing: border-box;"><span
        class="css">;</span></span><br style="box-sizing: border-box;"><span class="css"
                                                                             style="box-sizing: border-box;"><span
        class="css">}</span></span></pre><span class="css">
</span></code><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><code class="hljs"><span
                                    style="box-sizing: border-box;"></span></code></p></pre>
                            <p></p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Trong đó:&nbsp;</p>
                            <ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                <li style="box-sizing: border-box;">Thuộc tính margin-bottom để quy định khoảng cách lề
                                    dưới của các div, lần lượt là 20px, 40px, 60
                                </li>
                            </ul>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">Kết quả hiển thị
                                cuối cùng:&nbsp;</p>
                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50991/mod_assign/intro/boxmodel4%20%281%29.png"
                                    width="800" height="450"><br
                                    style="box-sizing: border-box; color: #526069; font-family: 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><br>
                            </p>
                            <p>Checkout sang nhánh develop để xem mã nguồn tham khảo: <a
                                    href="#" target="_blank">Tại đây</a>
                            </p>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
