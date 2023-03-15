package com.bjpowernode.oa.web.action;

import com.bjpowernode.oa.utils.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet({"/user/login","/user/exit","/user/reg","/user/detail"})
public class Userservlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String servletPath = request.getServletPath();
        if ("/user/login".equals(servletPath)) {
            doLogin(request,response);
        }else if ("/user/exit".equals(servletPath)){
            doExit(request,response);
        }else if("/user/reg".equals(servletPath)){
            doReg(request,response);
        }else if ("/user/detail".equals(servletPath)){
            doDetail(request,response);
        }
    }

    private void doDetail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pic_nm = request.getParameter("pic_nm");
        request.setAttribute("pic_nm",pic_nm);
//        request.getRequestDispatcher(request.getContextPath()+"/detail.jsp").forward(request,response);//   /oa/detail.jsp找不到，404
//      request.getRequestDispatcher("detail.jsp").forward(request,response); //   /user/detail.jsp找不到，404
      request.getRequestDispatcher("/detail.jsp").forward(request,response);// 存在，但没有css样式

    }


    private void doReg(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmps = request.getParameter("confirmps");
        String usermail=request.getParameter("usermail");
        String login_text = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$";
        String reg_text="^(?![a-zA-Z]+$)(?![A-Z0-9]+$)(?![A-Z\\W_]+$)(?![a-z0-9]+$)(?![a-z\\W_]+$)(?![0-9\\W_]+$)[a-zA-Z0-9\\W_]{6,20}$";
        String mail_text="^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";

        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        int count=0;
        try {
            conn=DBUtil.getConnection();
            String sql="select username from user where username=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,username);
            rs=ps.executeQuery();
            if (rs.next()){
                JOptionPane.showMessageDialog(null,"注册的用户名已存在，请重试！","消息",JOptionPane.WARNING_MESSAGE);
//                request.getRequestDispatcher(request.getContextPath()+"/register.jsp").forward(request,response);
                response.sendRedirect("/oa/register.jsp");
            }else{
                if (username.length()==0 || password.length()==0 || usermail.length()==0){
                    JOptionPane.showMessageDialog(null,"用户名或密码不能为空，请重试！","消息",JOptionPane.WARNING_MESSAGE);
                    response.sendRedirect("/oa/register.jsp");
                }else {
                    if (!usermail.matches(mail_text)) {
                        JOptionPane.showMessageDialog(null,"邮箱不合法，请重试！","消息",JOptionPane.WARNING_MESSAGE);
                        response.sendRedirect("/oa/register.jsp");
                    }else {
                        if (username.contains(" ") || password.contains(" ")) {
                            JOptionPane.showMessageDialog(null,"用户名或密码含有空格，请重试！","消息",JOptionPane.WARNING_MESSAGE);
                            response.sendRedirect("/oa/register.jsp");
                        }else {
                            if (!username.matches(login_text)) {
                                JOptionPane.showMessageDialog(null,"用户名不合法(6-20位，必须包含数字、字母)，请重试！","消息",JOptionPane.WARNING_MESSAGE);
                                response.sendRedirect("/oa/register.jsp");
                            }else {
                                if (!password.matches(reg_text)) {
                                    JOptionPane.showMessageDialog(null,"密码不合法(6-20位，必须包含数字、大、小写字母与特殊符号其中三种)，请重试！","消息",JOptionPane.WARNING_MESSAGE);
                                    response.sendRedirect("/oa/register.jsp");
                                }else {
                                    if (confirmps.equals(password)) {
                                        String sql2="insert into user(username,password) values (?,?)";
                                        ps=conn.prepareStatement(sql2);
                                        ps.setString(1,username);
                                        ps.setString(2,password);
                                        count=ps.executeUpdate();
                                    }else {
                                        JOptionPane.showMessageDialog(null,"两次密码不一致，请重试！","消息",JOptionPane.WARNING_MESSAGE);
                                        response.sendRedirect("/oa/register.jsp");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }
        if (count==1) {
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
    }


    private void doExit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session!=null){
            //销毁session对象
            session.invalidate();
            response.sendRedirect(request.getContextPath());
        }
    }


    protected void doLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean success=false;
        //获取用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //连接数据库，验证用户名和密码
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn= DBUtil.getConnection();
            String sql="select * from user where username=? and password=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            rs =ps.executeQuery();
            if (rs.next()) {
                success=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }
        if (success){
            //获取session对象(这里要求是：必须获取session，没有session也要新建一个session对象)
            HttpSession session = request.getSession();
            session.setAttribute("username",username);
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else {
            if (username.length()==0 ||password.length()==0) {
                JOptionPane.showMessageDialog(null,"用户名或密码不能为空！","提示",JOptionPane.WARNING_MESSAGE);
                response.sendRedirect(request.getContextPath());
            }else {
                JOptionPane.showMessageDialog(null,"用户名或密码错误，请重试！","提示",JOptionPane.WARNING_MESSAGE);
                response.sendRedirect(request.getContextPath());
            }
//            request.setAttribute("msg","fail");
//            request.getRequestDispatcher("login.jsp").forward(request,response);

        }
    }

}
