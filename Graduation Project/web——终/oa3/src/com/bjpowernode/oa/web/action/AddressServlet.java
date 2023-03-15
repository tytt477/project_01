package com.bjpowernode.oa.web.action;

import com.bjpowernode.oa.bean.Address;
import com.bjpowernode.oa.bean.Dept;
import com.bjpowernode.oa.utils.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.swing.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet({"/address/list","/address/save","/address/modify","/address/del","/user/car"})
public class AddressServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String servletPath = request.getServletPath();
        HttpSession session = request.getSession(false);
        if(session !=null && session.getAttribute("username")!=null){
            if ("/address/list".equals(servletPath)) {
                doList(request,response);
            }else if ("/address/save".equals(servletPath)) {
                doSave(request,response);
            }else if ("/address/modify".equals(servletPath)) {
                doModify(request,response);
            }else if ("/address/del".equals(servletPath)) {
                doDel(request,response);
            }else if ("/user/car".equals(servletPath)) {
                response.sendRedirect(request.getContextPath()+"/car.jsp");
            }
        }else{
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }

    }

    private void doDel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String id = request.getParameter("id");
        Connection conn=null;
        PreparedStatement ps=null;
        int count =0 ;
        try {
            conn=DBUtil.getConnection();
            String sql ="delete from address where id=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,id);
            count=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,null);
        }
        if (count==1){
            response.sendRedirect(request.getContextPath()+"/address/list");
        }
    }

    private void doModify(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String id = request.getParameter("id");
        String rec = request.getParameter("rec");
        String address = request.getParameter("address");
        String code = request.getParameter("code");
        String tel = request.getParameter("tel");

        int count=0;
        if (rec.length()!=0){
            if (address.length()!=0) {
                if (tel.length()!=0) {
                    if (code.length()==6) {
                        if (tel.length()>10 && tel.length()<14) {
                            Connection conn=null;
                            PreparedStatement ps=null;
                            try {
                                conn= DBUtil.getConnection();
                                String sql="update address set rec=? ,address=?,code=?,tel=? where id=?";
                                ps = conn.prepareStatement(sql);
                                ps.setString(1,rec);
                                ps.setString(2,address);
                                ps.setString(3,code);
                                ps.setString(4,tel);
                                ps.setString(5,id);
                                count = ps.executeUpdate();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }finally {
                                DBUtil.close(conn,ps,null);
                            }
                            if (count==1) {
                                response.sendRedirect(request.getContextPath()+"/address/list");
                            }
                        }else {
                            JOptionPane.showMessageDialog(null,"请输入正确的联系方式，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                            response.sendRedirect(request.getContextPath()+"/address/list");
                        }
                    }else{
                        JOptionPane.showMessageDialog(null,"请输入正确的邮编，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                        response.sendRedirect(request.getContextPath()+"/address/list");
                    }
                }else{
                    JOptionPane.showMessageDialog(null,"联系方式不得为空，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                    response.sendRedirect(request.getContextPath()+"/address/list");
                }
            }else{
                JOptionPane.showMessageDialog(null,"收件地址不得为空，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                response.sendRedirect(request.getContextPath()+"/address/list");
            }
        }else{
            JOptionPane.showMessageDialog(null,"收件人不得为空，请重试！","提示",JOptionPane.WARNING_MESSAGE);
            response.sendRedirect(request.getContextPath()+"/address/list");
        }
    }

    private void doSave(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String rec = request.getParameter("rec");
        String address = request.getParameter("address");
        String code = request.getParameter("code");
        String tel = request.getParameter("tel");

        int count=0;
        if (rec.length()!=0){
            if (address.length()!=0) {
                if (tel.length()!=0) {
                    if (code.length()==6) {
                        if (tel.length()>10 && tel.length()<14) {
                           Connection conn=null;
                           PreparedStatement ps=null;
                           ResultSet rs=null;
                            try {
                                conn=DBUtil.getConnection();
                                String sql="select * from address where rec=? and address=? and code=? and tel=?";
                                ps= conn.prepareStatement(sql);
                                ps.setString(1,rec);
                                ps.setString(2,address);
                                ps.setString(3,code);
                                ps.setString(4,tel);
                                rs=ps.executeQuery();
                                if (rs.next()){
                                    JOptionPane.showMessageDialog(null,"该地址已存在，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                                    response.sendRedirect(request.getContextPath()+"/address/list");
                                }else {
                                    try {
                                        conn = DBUtil.getConnection();
                                        String sql1="insert into address(rec,address,code,tel) values (?,?,?,?)";
                                        ps=conn.prepareStatement(sql1);
                                        ps.setString(1,rec);
                                        ps.setString(2,address);
                                        ps.setString(3,code);
                                        ps.setString(4,tel);
                                        count=ps.executeUpdate();
                                    } catch (SQLException e) {
                                        e.printStackTrace();
                                    }
                                }
                            } catch (SQLException ex) {
                                ex.printStackTrace();
                            }finally {
                                DBUtil.close(conn,ps,rs);
                            }
                        }else {
                            JOptionPane.showMessageDialog(null,"请输入正确的联系方式，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                            response.sendRedirect(request.getContextPath()+"/address/list");
                        }
                    }else{
                        JOptionPane.showMessageDialog(null,"请输入正确的邮编，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                        response.sendRedirect(request.getContextPath()+"/address/list");
                    }
                }else{
                    JOptionPane.showMessageDialog(null,"联系方式不得为空，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                    response.sendRedirect(request.getContextPath()+"/address/list");
                }
            }else{
                JOptionPane.showMessageDialog(null,"收件地址不得为空，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                response.sendRedirect(request.getContextPath()+"/address/list");
            }
        }else{
            JOptionPane.showMessageDialog(null,"收件人不得为空，请重试！","提示",JOptionPane.WARNING_MESSAGE);
            response.sendRedirect(request.getContextPath()+"/address/list");
        }

        if (count==1){
            response.sendRedirect(request.getContextPath()+"/address/list");
        }

    }

    private void doList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Address> addresses=new ArrayList<>();

        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn= DBUtil.getConnection();
            String sql="select id,rec,address,code,tel from address";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String rec = rs.getString("rec");
                String address = rs.getString("address");
                String code = rs.getString("code");
                String tel = rs.getString("tel");

                Address ad = new Address();
                ad.setId(id);
                ad.setRec(rec);
                ad.setAddress(address);
                ad.setCode(code);
                ad.setTel(tel);

                addresses.add(ad);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }

        request.setAttribute("addressList",addresses);

        request.getRequestDispatcher("/info.jsp").forward(request,response);
    }
}
