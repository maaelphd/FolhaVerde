package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class ViewIndex implements Command {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productsCartTotal = 0;
		String productsIds = "0";
				
		HttpSession session = request.getSession();		

		session.setAttribute("productsCartTotal", productsCartTotal);
		session.setAttribute("productsIds", productsIds);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
	}
	
	
}
