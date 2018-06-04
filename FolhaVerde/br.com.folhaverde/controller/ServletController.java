package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

@WebServlet("/Controller.do")
@MultipartConfig
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	public void doExecute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			Command comando = (Command) Class.forName("command." + request.getParameter("command")).newInstance();

			System.out.println("1: "+ request.getParameter("data[cartItensTotal]"));
			
			comando.executa(request, response);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			e.printStackTrace();
			throw new ServletException(e);
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doExecute(request, response);
		System.out.println("2: "+ request.getParameter("data[cartItensTotal]"));
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doExecute(request, response);
		System.out.println("3: "+ request.getParameter("data[cartItensTotal]"));
	}

}