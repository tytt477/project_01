package com.bjpowernode.oa.web.action;

import com.bjpowernode.oa.bean.Dept;
import com.bjpowernode.oa.utils.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet({"/dept/list","/dept/detail","/dept/delete","/dept/save","/dept/modify"})
public class DeptServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //获取session（这个session不需要新建的）
        HttpSession session = request.getSession(false);
        if(session !=null && session.getAttribute("username")!=null){
            String servletPath = request.getServletPath();
            if ("/dept/list".equals(servletPath)) {
                doList(request,response);
            }else if ("/dept/detail".equals(servletPath)){
                doDetail(request,response);
            }else if ("/dept/delete".equals(servletPath)){
                doDel(request,response);
            }else if ("/dept/save".equals(servletPath)){
                doSave(request,response);
            }else if ("/dept/modify".equals(servletPath)){
                doModify(request,response);
            }
        }else{
            //访问web站点根目录即可，自动找到欢迎页面
            response.sendRedirect(request.getContextPath());
        }

    }

    private void doModify(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String deptno = request.getParameter("deptno");
        String dname = request.getParameter("dname");
        String loc = request.getParameter("loc");

        Connection conn=null;
        PreparedStatement ps=null;
        int count=0;
        try {
            conn= DBUtil.getConnection();
            String sql="update dept set dname=? ,loc=? where deptno=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,dname);
            ps.setString(2,loc);
            ps.setString(3,deptno);
            count = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,null);
        }
        if (count==1) {
//            request.getRequestDispatcher("/dept/list").forward(request,response);
            response.sendRedirect(request.getContextPath()+"/dept/list");
        }
    }

    private void doSave(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String deptno = request.getParameter("deptno");
        String dname = request.getParameter("dname");
        String loc = request.getParameter("loc");

        Connection conn=null;
        PreparedStatement ps=null;
        int count=0;
        try {
            conn = DBUtil.getConnection();
            String sql="insert into dept(deptno,dname,loc) values (?,?,?)";
            ps=conn.prepareStatement(sql);
            ps.setString(1,deptno);
            ps.setString(2,dname);
            ps.setString(3,loc);
            count=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,null);
        }

        if (count==1) {
//            request.getRequestDispatcher("/dept/list").forward(request,response);
            response.sendRedirect(request.getContextPath()+"/dept/list");
        }
    }

    private void doDel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dname = request.getParameter("deptno");

        Connection conn =null;
        PreparedStatement ps=null;
        int count =0;
        try {
            conn=DBUtil.getConnection();
            String sql = "delete from dept where dname=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,dname);
            count=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,null);
        }
        if (count==1){
            String contextPath = request.getContextPath();
            response.sendRedirect(contextPath+"/dept/list");
        }
    }

    private void doDetail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Dept dept=new Dept();

        String dno = request.getParameter("dno");

        Connection conn = null;
        PreparedStatement ps= null;
        ResultSet rs=null;
        try {
            conn=DBUtil.getConnection();
            String sql="select dname,loc from dept where deptno=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,dno);
            rs=ps.executeQuery();
            if (rs.next()){
                String dname = rs.getString("dname");
                String loc =rs.getString("loc");

                dept.setDeptno(dno);
                dept.setDname(dname);
                dept.setLoc(loc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }

        request.setAttribute("dept",dept);

        //if ("m".equals(f)) {
        //
        //        }else if("d".equals(f)){
        //            request.getRequestDispatcher("/detail.jsp").forward(request,response);
        //
        //        }
        String forward ="/" + request.getParameter("f")+".jsp";
        request.getRequestDispatcher(forward).forward(request,response);

    }

    private void doList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        //准备一个容器，用来存储部门信息
        List<Dept> depts=new ArrayList<>();
        //连接数据库，获取数据
        Connection conn = null;
        PreparedStatement ps =null;
        ResultSet rs=null;
        try {
            conn = DBUtil.getConnection();
            String sql = "select deptno,dname,loc from dept";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                String deptno=rs.getString("deptno");
                String dname=rs.getString("dname");
                String loc=rs.getString("loc");

                //将零散的数据封装成java对象
                Dept dept=new Dept();
                dept.setDeptno(deptno);
                dept.setDname(dname);
                dept.setLoc(loc);

                //将部门对象放到list集合中
                depts.add(dept);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }

        //将一个集合放到请求域中
        request.setAttribute("deptList",depts);

        //z转发
        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }
}
