package src.bjpowernode;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/user/login")
public  class UserServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
        boolean success =false;
            String username=request.getParameter("username");
            String password=request.getParameter("password");


        Connection conn =null;
        PreparedStatement ps =null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "select * from t_user where username =? and password=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);

            rs =ps.executeQuery();
            if (rs.next()){
                success=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }

        if (success){
            response.sendRedirect(request.getContextPath()+"/index.html");
        }else {
            response.sendRedirect(request.getContextPath()+"/error.jsp");
        }


    }
}
