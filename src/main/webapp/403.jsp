
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>403 - Forbidden</title>

    <!-- Bootstrap 5 -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <style>
        body {
            min-height: 100vh;
            background: #f8f9fa;
        }

        .error-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .error-card {
            max-width: 650px;
            width: 100%;
            background: #ffffff;
            border: none;
            border-radius: 20px;
            padding: 50px 40px;
            text-align: center;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.08);
        }

        .error-code {
            font-size: 120px;
            font-weight: 800;
            line-height: 1;
            color: #dc3545;
            margin-bottom: 20px;
        }

        .error-icon {
            width: 90px;
            height: 90px;
            margin: 0 auto 25px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: #f8d7da;
            color: #dc3545;

            border-radius: 50%;
            font-size: 42px;
        }

        .error-title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 15px;
            color: #212529;
        }

        .error-description {
            color: #6c757d;
            font-size: 17px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .btn-home {
            padding: 12px 28px;
            border-radius: 10px;
            font-weight: 600;
        }

        .btn-back {
            padding: 12px 28px;
            border-radius: 10px;
            font-weight: 600;
        }

        @media (max-width: 576px) {

            .error-card {
                padding: 40px 25px;
            }

            .error-code {
                font-size: 85px;
            }

            .error-title {
                font-size: 26px;
            }

            .error-description {
                font-size: 15px;
            }
        }
    </style>
</head>

<body>

<div class="error-container">

    <div class="error-card">

        <!-- Icon -->
        <div class="error-icon">
            🔒
        </div>

        <!-- Error Code -->
        <div class="error-code">
            403
        </div>

        <!-- Title -->
        <h1 class="error-title">
            Truy cập bị từ chối
        </h1>

        <!-- Description -->
        <p class="error-description">
            Xin lỗi, bạn không có quyền truy cập vào trang này.
            <br>
            Vui lòng kiểm tra quyền truy cập hoặc đăng nhập bằng
            tài khoản có quyền phù hợp.
        </p>

        <!-- Buttons -->
        <div class="d-flex justify-content-center gap-2 flex-wrap">

            <button
                    type="button"
                    class="btn btn-outline-secondary btn-back"
                    onclick="history.back()">

                ← Quay lại

            </button>

            <a
                    href="${pageContext.request.contextPath}/"
                    class="btn btn-danger btn-home">

                🏠 Về trang chủ

            </a>

        </div>

    </div>

</div>

</body>
</html>
