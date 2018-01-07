/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

/**
 *

 */
@MultipartConfig(maxFileSize = 10000000L)
public class UploadServlet extends HttpServlet {
    Connection cn;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config); //To change body of generated methods, choose Tools | Templates.
        cn=(Connection)config.getServletContext().getAttribute("CONN");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       try
        {
            String _category=req.getParameter("cmb_category");
            String _name=req.getParameter("txt_name");
            String _author=req.getParameter("txt_author");
            String _publication=req.getParameter("txt_publication");
            String _description=req.getParameter("ta_description").trim();
            double _price=Double.parseDouble(req.getParameter("txt_price"));
            
            Part _image_in_part=req.getPart("file_upload");
            InputStream _image_in_bits=_image_in_part.getInputStream();
            
            PreparedStatement ps=cn.prepareStatement("insert into books(category,name,author,publication,description,price,image) values(?,?,?,?,?,?,?)");
            ps.setString(1, _category);
            ps.setString(2, _name);
            ps.setString(3,_author);
            ps.setString(4, _publication);
            ps.setString(5, _description);
            ps.setDouble(6,_price);
            ps.setBlob(7, _image_in_bits);
            
            
            
            int a=ps.executeUpdate();
            
            RequestDispatcher rd=req.getRequestDispatcher("/BooksEntry.jsp");
            rd.include(req, resp);
            
            PrintWriter out=resp.getWriter();
            resp.setContentType("text/html");
            
            if(a>0)
                {
                    out.println("<hr>");
                    out.println("<h4 align=center>Record Inserted!</h4>");
                    out.println("<hr>");
                }
            
            out.close();
            
        
        }
       catch(Exception e)
            {
                    javax.swing.JOptionPane.showMessageDialog(null,"Error is::"+e.getMessage());
            }
    }
    
    

}
