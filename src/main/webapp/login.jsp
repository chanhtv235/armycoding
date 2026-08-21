<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="head.jsp"/>
<body>
<c:import url="navbar.jsp"/>

<div class="row main">
    <c:import url="sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container">
        <div class="row container " style="margin-top: 5%">
            <div class="col-lg-4">
                <img style="width: 80%;" src="${pageContext.request.contextPath}/img/army-coding.png"
                     alt="bouquet-emoji"/>
            </div>
            <div class="col-lg-8">
                <form action="${pageContext.request.contextPath}/login" method="post" class="w-50" style="border: 1px solid #4B5320;padding: 5%;border-radius: 5px">
                    <h4 style="text-align:center">Đăng nhập</h4>
                    <div class="mb-3">
                        <label for="username" class="form-label">Tên tài khoản</label>
                        <input  name="username" type="text" class="form-control" id="username" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu</label>
                        <input name="password" type="password" class="form-control" id="password">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-sm main-bg-color" style="color:white;border: 1px solid #4B5320 " >Login</button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>
