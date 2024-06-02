package com.request;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestUpdateServlet
 */
@WebServlet("/RequestUpdateServlet")
public class RequestUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String sid = request.getParameter("sid");
		String username = request.getParameter("sname");
		String serviceType = request.getParameter("stype");
		String vehicleCat = request.getParameter("vehCat");
		String vehicleNo = request.getParameter("vehNo");
		String vehicleMod= request.getParameter("vehMod");
		String problem = request.getParameter("issue");
		String sDate = request.getParameter("sdate");
		String stime= request.getParameter("stime");
		String deliveryType = request.getParameter("deliveryType");
		String address = request.getParameter("paddress");
		
		boolean isTrue;
		isTrue= RequestDBUtil.updaterequest(sid, username, serviceType, vehicleCat, vehicleNo, vehicleMod, problem, sDate, stime, deliveryType, address);
		
		if(isTrue == true) {
		
			List<Request> reqDetails = RequestDBUtil.getRequestDetails(sid);
			request.setAttribute("reqDetails", reqDetails);
	
			RequestDispatcher dis = request.getRequestDispatcher("requestHistory.jsp");
			dis.forward(request, response);

		}
		else {
		
			List<Request> reqDetails = RequestDBUtil.getRequestDetails(sid);
			request.setAttribute("reqDetails", reqDetails);
	
			RequestDispatcher dis = request.getRequestDispatcher("requestHistory.jsp");
			dis.forward(request, response);
		}
				
	}

}
