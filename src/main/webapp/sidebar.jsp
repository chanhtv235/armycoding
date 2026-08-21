<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.account!=null}">
    <div class="col-lg-2 left min-vh-100 px-1">
    <%--    <button class="btn btn-link  text-start" style="font-weight: bold; width: 98%">Course</button>--%>
    <ul id="tree1" class="list-group navbar-nav-scroll min-vh-100">
    <c:if test="${sessionScope.account.role >=1}">
        <li><a class="list-group-item" href="${pageContext.request.contextPath}/course/module1/overview.jsp"><img
                class="mx-2" width="20" height="20" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module1</a>
        </li>
    </c:if>
    <c:if test="${sessionScope.account.role >=2}">
        <li><a class="list-group-item" href="${pageContext.request.contextPath}/course/module2/overview.jsp"><img
                class="mx-2" width="20" height="20" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module2</a>
        </li>
    </c:if>
    <c:if test="${sessionScope.account.role >=3}">
        <li><a class="list-group-item" href="${pageContext.request.contextPath}/course/module3/overview.jsp"><img
                class="mx-2" width="20" height="20" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module3</a>
        </li>
    </c:if>
    <c:if test="${sessionScope.account.role >=4}">
        <li><a class="list-group-item" href="${pageContext.request.contextPath}/course/module4/overview.jsp"><img
                class="mx-2" width="20" height="20" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module4</a>
        </li>
    </c:if>
    <c:if test="${sessionScope.account.role >=5}">
        <li><a class="list-group-item" href="${pageContext.request.contextPath}/course/module5/overview.jsp"><img
                class="mx-2" width="20" height="20" src="https://img.icons8.com/color/48/module.png" alt="module"/>Module5</a>
        </li>
    </c:if>
    <c:if test="${sessionScope.account.role >=6}">
        <li><a class="list-group-item" href="#"><img class="mx-2" width="20" height="20"
                                                     src="https://img.icons8.com/color/48/module.png" alt="module"/>Module6</a>
        </li>
    </c:if>
    </ul>
    </div>

</c:if>