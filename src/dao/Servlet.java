package dao;

import javax.jms.Session;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import dao.UserDAO;

public class Servlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        request.setCharacterEncoding("GBK");
        response.setCharacterEncoding("GBK");
        PrintWriter out=response.getWriter();
        out.println("<h1><center>404 Not Found</center></h1>");
        out.println("<hr>");
        String usrName=request.getParameter("username");
        String passWord=request.getParameter("password");
        if(usrName==null|passWord==null){
            System.out.println("都是空的！");
            out.println("<h1>用户名及密码为空！</h1>");
        }
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/test";
            String usr="root";
            String pas="021106.w";
            Connection conn= DriverManager.getConnection(url,usr,pas);
            if(conn!=null){
                System.out.println("成功连接数据库");
            }
            PreparedStatement ps=conn.prepareStatement("SELECT *FROM test.test");
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                UserDAO userDAO=new UserDAO();
                userDAO.setUsername(rs.getString(1));
                userDAO.setPassword(rs.getString(2));
                if(usrName.equals(userDAO.getUsername())){
                    if(passWord.equals(userDAO.getPassword())){
                        System.out.println("用户"+userDAO.getUsername()+"登录！");
                        HttpSession hs=request.getSession();
                        hs.setAttribute("name",userDAO.username);
                        response.getWriter().write(userDAO.username);
                        request.getRequestDispatcher("mainPage.jsp").forward(request,response);
                        break;
                    }
                }else{

                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
    }

