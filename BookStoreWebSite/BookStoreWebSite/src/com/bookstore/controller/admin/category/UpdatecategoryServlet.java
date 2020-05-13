package com.bookstore.controller.admin.category;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.controller.BaseServlet;
import com.bookstore.service.CategoryServices;
import com.bookstore.service.UserServices;


@WebServlet("/admin/update_category")
public class UpdatecategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public void UpdateUserServlet() {
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryServices CategoryServices = new CategoryServices(request, response);
		CategoryServices.updateCategory();
	}

}
