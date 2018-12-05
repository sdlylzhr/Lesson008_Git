package com.dlnu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginViewServlet", urlPatterns = "/loginview")
public class LoginViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 请求转发
        // 因为WEB-INF文件夹对外是隐私模式
        // 即外部无法直接访问该文件夹中的任何资源
        // 只能通过请求转发 或者 请求重定向的方式来访问资源
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp")
                .forward(request,response);



    }
}
