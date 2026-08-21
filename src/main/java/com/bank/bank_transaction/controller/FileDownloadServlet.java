
package com.bank.bank_transaction.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.InputStream;

@WebServlet(name = "fileDownloadServlet", value = "/download")
public class FileDownloadServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static String[] fileName1;
    private static String[] fileName2;
    private static String[] fileName3;
    private static String[] fileName4;
    private static String[] fileNameIntelij;

    static {

        // =========================
        // MODULE 1
        // =========================
        fileName1 = new String[]{
                "",
                "module1/Slide 01 - Pseudo Code  Flowchart.pdf",
                "module1/Slide 02 - Git  HTML.pdf",
                "module1/Slide 03 - HTML Form  Table.pdf",
                "module1/Slide 04 - JavaScript Overview.pdf",
                "module1/Slide 05 - Variable and Data Types.pdf",
                "module1/Slide 06 - Conditional Statements.pdf",
                "module1/Slide 07 - Loop Statements.pdf",
                "module1/Slide 08 - Arrays.pdf",
                "module1/Slide 09 - Function.pdf",
                "module1/Slide 10 - Introduction to OOP.pdf",
                "module1/Slide 11 - Objects and Classes.pdf",
                "",
                "",
                "",
                "",
                ""
        };


        // =========================
        // MODULE 2
        // =========================
        fileName2 = new String[]{
                "",
                "module2/Slide 1 - Java Overview.pdf",
                "module2/Slide 2 - Vòng lặp trong Java.pdf",
                "module2/Slide 3 - Mảng và phương thức trong Java.pdf",
                "module2/Slide 4 - OOP.pdf",
                "module2/Slide 5 - Access Modifier.pdf",
                "module2/Slide 6 - Inheritance.pdf",
                "module2/Slide 7 - Interface and Abstract class.pdf",
                "module2/Slide 8.pdf",
                "",
                "module2/Slide 10 - Exception Handling.pdf",
                "",
                "module2/Slide 12 - String and regex.pdf",
                "",
                "",
                "",
                ""
        };


        // =========================
        // MODULE 3
        // =========================
        fileName3 = new String[]{
                "",
                "module3/Slide 1 - Database Introduction.pdf",
                "module3/Slide 2 - Database Design.pdf",
                "module3/Slide 3 - Database Query.pdf",
                "module3/Slide 4 - Hàm thông dụng.pdf",
                "module3/Slide 5 - Indexs, Store Procedure, Views.pdf",
                "module3/Slide 6 - CSS.pdf",
                "module3/Slide 7 - Thiết kế bố cục trang web.pdf",
                "module3/Slide 8 - Bootstrap.pdf",
                "module3/Slide 9 - Web Application OverView.pdf",
                "module3/Slide 10 - JSP  JSTL.pdf",
                "module3/Slide 11 - MVC.pdf",
                "module3/Slide 12 - JDBC  CRUD.pdf",
                "module3/Slide 13 - JDBC Querying  Transaction.pdf",
                "",
                "",
                ""
        };


        // =========================
        // MODULE 4
        // =========================
        fileName4 = new String[]{
                "",
                "module4/Slide 1 - Introduction to Spring MVC.pdf",
                "module4/Slide 2 - Spring Controller.pdf",
                "module4/Slide 3 - Views Thymeleaf.pdf",
                "module4/Slide 4 - Database ORM.pdf",
                "module4/Slide 5 - Spring boot  and JPA.pdf",
                "module4/Slide 6 - Spring Data Repository.pdf",
                "module4/Slide 7 - Validation.pdf",
                "module4/Slide 8- Session and Cookie.pdf",
                "module4/Slide 9 - Web service và RESTful web service.pdf",
                "module4/Slide 10 - AJAX.pdf",
                "module4/Slide 11 - Spring Security.pdf",
                "",
                "",
                "",
                ""
        };
        fileNameIntelij = new String[]{
                "",
                "intellij/clearn_trial.bat",
                ""
        };
    }


    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        // =========================
        // LẤY MODULE VÀ SLIDE
        // =========================

        int module;
        int slide;

        try {

            module = Integer.parseInt(
                    request.getParameter("module")
            );

            slide = Integer.parseInt(
                    request.getParameter("slide")
            );

        } catch (NumberFormatException e) {

            response.sendError(
                    HttpServletResponse.SC_BAD_REQUEST,
                    "Module hoặc slide không hợp lệ"
            );

            return;
        }


        // =========================
        // LẤY ĐƯỜNG DẪN FILE
        // =========================

        String fileName = "";

        switch (module) {

            case 1:

                if (slide < 0 || slide >= fileName1.length) {
                    response.sendError(
                            HttpServletResponse.SC_NOT_FOUND,
                            "Không tìm thấy slide"
                    );
                    return;
                }

                fileName = fileName1[slide];

                break;


            case 2:

                if (slide < 0 || slide >= fileName2.length) {
                    response.sendError(
                            HttpServletResponse.SC_NOT_FOUND,
                            "Không tìm thấy slide"
                    );
                    return;
                }

                fileName = fileName2[slide];

                break;


            case 3:

                if (slide < 0 || slide >= fileName3.length) {
                    response.sendError(
                            HttpServletResponse.SC_NOT_FOUND,
                            "Không tìm thấy slide"
                    );
                    return;
                }

                fileName = fileName3[slide];

                break;


            case 4:

                if (slide < 0 || slide >= fileName4.length) {
                    response.sendError(
                            HttpServletResponse.SC_NOT_FOUND,
                            "Không tìm thấy slide"
                    );
                    return;
                }

                fileName = fileName4[slide];

                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                if (slide!=1) {
                    response.sendError(
                            HttpServletResponse.SC_NOT_FOUND,
                            "Không tìm thấy tài liệu"
                    );
                    return;
                }

                fileName = fileNameIntelij[slide];
                break;

            default:

                response.sendError(
                        HttpServletResponse.SC_NOT_FOUND,
                        "Không tìm thấy module"
                );

                return;
        }


        // =========================
        // KIỂM TRA FILE CÓ ĐƯỢC KHAI BÁO HAY KHÔNG
        // =========================

        if (fileName == null || fileName.trim().isEmpty()) {

            response.setContentType(
                    "text/html;charset=UTF-8"
            );

            response.getWriter().println(
                    "<h1 style='color:red'>Tài liệu chưa upload</h1>"
            );

            return;
        }


        // =========================
        // LẤY FILE TỪ
        // src/main/resources
        // =========================

        InputStream inputStream =
                getClass()
                        .getClassLoader()
                        .getResourceAsStream(fileName);


        // =========================
        // KHÔNG TÌM THẤY FILE
        // =========================

        if (inputStream == null) {

            response.sendError(
                    HttpServletResponse.SC_NOT_FOUND,
                    "Không tìm thấy file: " + fileName
            );

            return;
        }


        // =========================
        // LẤY TÊN FILE
        // =========================

        String downloadFileName =
                fileName.substring(
                        fileName.lastIndexOf("/") + 1
                );


        // =========================
        // CẤU HÌNH RESPONSE
        // =========================

        response.setContentType("application/pdf");

        response.setHeader(
                "Content-Disposition",
                "attachment; filename=\"" +
                        downloadFileName +
                        "\""
        );


        // =========================
        // DOWNLOAD FILE
        // =========================

        try (InputStream input = inputStream) {

            byte[] buffer = new byte[8192];

            int bytesRead;

            while ((bytesRead = input.read(buffer)) != -1) {

                response.getOutputStream().write(
                        buffer,
                        0,
                        bytesRead
                );
            }

            response.getOutputStream().flush();
        }
    }
}

