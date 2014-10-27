/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsp4.tanzah.servlet;

import com.utsp4.tanzah.dao.MahasiswaDao;
import com.utsp4.tanzah.database.KoneksiDatabase;
import com.utsp4.tanzah.model.Mahasiswa;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dieslow
 */
public class DataMahasiswa extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("WEB-INF/templates/jsp/DataMahasiswa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
