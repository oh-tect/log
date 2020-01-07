package dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import dao.gradedDAO;

@WebServlet(name = "gradeshowing")
public class gradeshowing extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        request.setCharacterEncoding("GBK");
        response.setCharacterEncoding("GBK");
        HttpSession hs=request.getSession();
        String name=(String)hs.getAttribute("name");
        System.out.println(name);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/test";
            String usr="root";
            String pas="021106.w";
            Connection conn= DriverManager.getConnection(url,usr,pas);
            if(conn!=null){
                System.out.println("成功连接数据库");
            }else{
                System.out.println("sss");
            }
            PreparedStatement ps=conn.prepareStatement("SELECT *from test.grades where name=?;");
            ps.setString(1,name);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                gradedDAO grade=new gradedDAO();
                grade.setChinese(rs.getInt(2));
                grade.setMath(rs.getInt(3));
                grade.setEnglish(rs.getInt(4));
                grade.setPolitics(rs.getInt(5));
                grade.setHistory(rs.getInt(6));
                grade.setGeography(rs.getInt(7));
                grade.setBiography(rs.getInt(8));
                grade.setPhysics(rs.getInt(9));
                grade.setChemistry(rs.getInt(10));
                System.out.println(grade.getBiography());
                System.out.println(grade.getHistory());
                hs.setAttribute("Chinese",grade.getChinese());
                hs.setAttribute("Math",grade.getMath());
                hs.setAttribute("English",grade.getEnglish());
                hs.setAttribute("Politics",grade.getPolitics());
                hs.setAttribute("History",grade.getHistory());
                hs.setAttribute("Geography",grade.getGeography());
                hs.setAttribute("Biography",grade.getBiography());
                hs.setAttribute("Physics",grade.getPhysics());
                hs.setAttribute("Chemistry",grade.getChemistry());
                response.getWriter().write(grade.getChinese());
                response.getWriter().write(grade.getMath());
                response.getWriter().write(grade.getEnglish());
                response.getWriter().write(grade.getPolitics());
                response.getWriter().write(grade.getHistory());
                response.getWriter().write(grade.getGeography());
                response.getWriter().write(grade.getBiography());
                response.getWriter().write(grade.getPhysics());
                response.getWriter().write(grade.getChemistry());
            }
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        finally {
            request.getRequestDispatcher("gradechart.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
