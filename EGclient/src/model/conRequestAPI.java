package model;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/conRequestAPI")
public class conRequestAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	conRequest conRequestObj = new conRequest(); 
       
  
    public conRequestAPI() {
        super();
        // TODO Auto-generated constructor stub
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String output = conRequestObj.insertConnection(request.getParameter("customerName"),
				request.getParameter("connectionType"),
				request.getParameter("requestLoad"),
				request.getParameter("contractDemand"),
				request.getParameter("address"),
				request.getParameter("email"));

		response.getWriter().write(output);
	}
	
	// Convert request parameters to a Map
	private static Map getParasMap(HttpServletRequest request)
    {
		Map<String, String> map = new HashMap<String, String>();
		try
		{
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ?
					scanner.useDelimiter("\\A").next() : "";
			scanner.close();
	 
			String[] params = queryString.split("&");
			for (String param : params)
			{ 
				String[] p = param.split("=");
				map.put(p[0], p[1]);
		    }
		 }
				
		 catch (Exception e)
	     {
		 }
		 
		return map;
	}
				

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map paras = getParasMap(request);
		String output = conRequestObj.updateConnection(paras.get("hidItemIDSave").toString(),
										   paras.get("customerName").toString(),
										   paras.get("connectionType").toString(),
										   paras.get("requestLoad").toString(),
										   paras.get("contractDemand").toString(),
										   paras.get("address").toString(),
										   paras.get("email").toString());
			
		response.getWriter().write(output);
	}


	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Map paras = getParasMap(request);
		String output = conRequestObj.deleteConnection(paras.get("connectionID").toString());
		response.getWriter().write(output);
	}

}
