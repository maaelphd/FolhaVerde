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

public class ViewDesserts implements Command {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductModel productModel = new ProductModel();
		
		// Line 01
		ArrayList<ProductTO> arrayProduct	= null;
		
		HttpSession session = request.getSession();		

		arrayProduct = productModel.listProduct(2);
		
		session.setAttribute("productList", arrayProduct);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("DessertPage.jsp");
		dispatcher.forward(request, response);
	}
	
	
}