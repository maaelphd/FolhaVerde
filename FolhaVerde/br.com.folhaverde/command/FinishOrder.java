package command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.ProductModel;
import to.ProductTO;

public class FinishOrder implements Command {
	
	private ArrayList<ProductTO> arrayProduct;

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int productsCartTotal = 0;
		String productsIds = "0";
		int productsIdsItens = -1;
		double totalOrder = 0;

		ProductModel productModel = new ProductModel();
		arrayProduct = new ArrayList<>();		
		
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
		
		// SEPARA ID DOS ITEMS QUE ESTA NUMA UNICA STRING, EM UM ARRAY
		String[] arrayProductsIds = productsIds.split(Pattern.quote(","));
		
		//PEGA ID DOS ITENS QUE ESTA NO ARRAY DE STRING E ADICONA NO ARRAYLIST DO OBJETO PRODUTO
		for (int i = 0; i< arrayProductsIds.length;i++){
						
			if(!arrayProductsIds[i].equals("0") && arrayProductsIds[i] != null) {
				
				productsIdsItens = Integer.parseInt(arrayProductsIds[i]);
								
				arrayProduct.add(productModel.selectProduct(productsIdsItens));
			}
		}
		
		for (int i = 0; i < arrayProduct.size();i++) {
			
			totalOrder += arrayProduct.get(i).getProdutPrice();
		}
				
		session.setAttribute("productList", arrayProduct);
		session.setAttribute("productsCartTotal", productsCartTotal);
		session.setAttribute("productsIds", productsIds);
		session.setAttribute("totalOrder", totalOrder);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("CartItens.jsp");
		dispatcher.forward(request, response);
	}
	
	
}
