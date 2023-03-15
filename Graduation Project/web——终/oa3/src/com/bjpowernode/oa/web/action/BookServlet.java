package com.bjpowernode.oa.web.action;

import com.bjpowernode.oa.bean.Book;
import com.bjpowernode.oa.utils.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet({"/book/detail"})
public class BookServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String servletPath = request.getServletPath();
        if ("/book/detail".equals(servletPath)) {
            doDetail(request,response);
        }
    }

    private void doDetail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Book book=new Book();

        String pic_nm = request.getParameter("pic_nm");

        Connection conn = null;
        PreparedStatement ps= null;
        ResultSet rs=null;
        try {
            conn= DBUtil.getConnection();
            String sql="select bk_nm,aut,pub,pri from books where pic_nm=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,pic_nm);
            rs=ps.executeQuery();
            if (rs.next()){
                String bk_nm = rs.getString("bk_nm");
                String aut =rs.getString("aut");
                String pub =rs.getString("pub");
                String pri =rs.getString("pri");

                book.setBk_nm(bk_nm);
                book.setPic_nm(pic_nm);
                book.setAut(aut);
                book.setPub(pub);
                book.setPri(pri);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }

        request.setAttribute("book",book);
        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }
}
