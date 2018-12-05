package com.dlnu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 1. 获取form表单发过来的参数（用户名和密码）

        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");

        // 2. 判断用户输入的内容是否有效

        if ("root".equals(uname) && "1234".equals(pwd)){
            System.out.println("登录成功！");
            // 可以使用请求转发继续跳转页面
            // 使用重定向，返回主页

            request.getSession().setAttribute("user",uname);
            response.sendRedirect("/home");

        } else {
            System.out.println("登录失败！");


            request.setAttribute("msg","用户名或密码不对！");

            // 转发到登录失败的页面
            request.getRequestDispatcher("/WEB-INF/pages/error.jsp").forward(request,response);

        }


    }
}
