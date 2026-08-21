<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-sm fixed-top">
    <div class="container-fluid d-flex justify-content-start align-items-center">
        <a class="navbar-brand icon" href="#">
            <%--            <img width="25" height="25" src="https://img.icons8.com/emoji/48/bouquet-emoji.png"--%>
            <%--                 alt="bouquet-emoji"/>--%>
            <%--            <img style="margin: 0px;border-radius: 3px" height="35"--%>
            <%--                 src="${pageContext.request.contextPath}/img/log-ngang.png"--%>
            <%--                 alt="bouquet-emoji"/>--%>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="text-white">Menu</span>
        </button>
        <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Trang
                        chủ</a>
                </li>
                <li class="nav-item dropdown">
                    <c:if test="${sessionScope.account!=null}">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Tool
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item"
                                   href="https://www.jetbrains.com/webstorm/download/?section=windows"
                                   target="_parent">Download Webstorm</a>
                            </li>
                            <li><a class="dropdown-item"
                                   href="${pageContext.request.contextPath}/download?module=7&slide=1"
                                   target="_blank">Download file for reset-intellij</a>
                            </li>
                        </ul>
                    </c:if>

                </li>
                <li class="nav-item dropdown">
                    <c:if test="${sessionScope.account!=null}">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Khoá học
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <c:if test="${sessionScope.account.role >=1}">
                                <li><a class="dropdown-item"
                                       href="${pageContext.request.contextPath}/course/module1/overview.jsp">Module1</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role >=2}">
                                <li><a class="dropdown-item"
                                       href="${pageContext.request.contextPath}/course/module2/overview.jsp">Module2</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role >=3}">
                                <li><a class="dropdown-item"
                                       href="${pageContext.request.contextPath}/course/module3/overview.jsp">Module3</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role >=4}">
                                <li><a class="dropdown-item"
                                       href="${pageContext.request.contextPath}/course/module4/overview.jsp">Module4</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role >=5}">

                                <li><a class="dropdown-item" href="#">Module5</a></li>
                            </c:if>
                            <c:if test="${sessionScope.account.role >=6}">
                                <li><a class="dropdown-item" href="#">Module6</a></li>
                            </c:if>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                        </ul>
                    </c:if>

                </li>
            </ul>
            <div class="d-flex justify-content-end">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="text-primary text-decoration-none" href="#">
                        ${sessionScope.account.username}</a></li>
                    <li class="nav-item"><a class="text-primary text-decoration-none" href="#">
                        <img width="20" height="20" src="https://img.icons8.com/emoji/48/blossom.png"
                             alt="blossom"/></a>
                    </li>
                    <c:if test="${sessionScope.account==null}">
                        <li class="nav-item"><a class="text-white text-decoration-none" href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}">
                        <li class="nav-item"><a class="text-white text-decoration-none" href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</nav>
