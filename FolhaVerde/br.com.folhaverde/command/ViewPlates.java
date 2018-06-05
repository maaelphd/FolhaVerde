package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.ProductModel;
import to.ProductTO;

public class ViewPlates implements Command {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int productsCartTotal = 0;
		String productsIds = "0";

		ProductModel productModel = new ProductModel();
		ArrayList<ProductTO> arrayProduct	= null;
		
		try {
			
			if(request.getParameter("data[cartItensTotal]") != null) {
				productsCartTotal	= Integer.parseInt(request.getParameter("data[cartItensTotal]"));
			}
			if(request.getParameter("data[cartSelectedItens]") != null) {
				productsIds			= request.getParameter("data[cartSelectedItens]");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();		

		arrayProduct = productModel.listProduct(1);
		
		session.setAttribute("productList", arrayProduct);
		session.setAttribute("productsCartTotal", productsCartTotal);
		session.setAttribute("productsIds", productsIds);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("PlatePage.jsp");
		dispatcher.forward(request, response);
	}
	
	
}
