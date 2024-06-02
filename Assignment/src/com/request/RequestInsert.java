package com.request;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestInsert
 */
@WebServlet("/RequestInsert")
public class RequestInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("uname");
		String serviceType = request.getParameter("select1");
		String vehicleCat = request.getParameter("select2");
		String vehicleNo = request.getParameter("text-input");
		String vehiclemod = request.getParameter("model");
		String description = request.getParameter("des");
		String serviceDate = request.getParameter("day");
		String serviceTime = request.getParameter("time");
		String deliveryType = request.getParameter("select3");
		String address = request.getParameter("addr");
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.insertRequest(username,serviceType, vehicleCat, vehicleNo, vehiclemod, description, serviceDate, serviceTime, deliveryType, address);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
