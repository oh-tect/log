package dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("GBK");
        response.setCharacterEncoding("GBK");
        PrintWriter out=response.getWriter();
        String username=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        String repwd=request.getParameter("repwd");
        System.out.println("[系统消息]用户名："+username);
        System.out.println("[系统消息]密码："+pwd);
        if(username.equals("")){
            out.println("<h1>注册失败：用户名不能为空！</h1>");
        }else if(pwd.equals("")){
            out.println("<h1>注册失败：密码不能为空！<h1>");
        }else if(!repwd.equals(pwd)){
            out.println("<h1>两次密码输入不一致！");
        }else{
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/test";
                String usr="root";
                String pas="021106.w";
                Connection conn= DriverManager.getConnection(url,usr,pas);
                if(conn!=null){
                    System.out.println("成功连接数据库");
                }
                PreparedStatement ps=conn.prepareStatement("insert into test.test values(?,?)");
                ps.setString(1,username);
                ps.setString(2,pwd);
                int row=ps.executeUpdate();
                if(row>=0){
                    System.out.println("插入数据成功！");
                    out.println("<h1>注册成功！</h1>");
                    out.print("<a herf=“login.jsp“>返回登录页面</a>");
                }else{
                    out.println("<h1>用户已存在！</h1>");
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      doPost(request,response);
    }
}
