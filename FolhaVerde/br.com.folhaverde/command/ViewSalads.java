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

public class ViewSalads implements Command {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productsCartTotal = 0;
		String productsIds = "";

		ProductModel productModel = new ProductModel();
		ArrayList<ProductTO> arrayProduct	= null;
		
		try {
			
			productsCartTotal	= Integer.parseInt(request.getParameter("data[cartItensTotal]"));
			productsIds			= request.getParameter("data[cartSelectedItens]");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		System.out.println("productsCartTotal: "+ productsCartTotal);
		
		HttpSession session = request.getSession();		

		arrayProduct = productModel.listProduct(0);
		
		session.setAttribute("productList", arrayProduct);
		session.setAttribute("productsCartTotal", productsCartTotal);
		session.setAttribute("productsIds", productsIds);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("SaladPage.jsp");
		dispatcher.forward(request, response);
	}
	
	
}
