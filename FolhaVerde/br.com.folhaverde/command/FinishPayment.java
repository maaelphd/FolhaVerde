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
import model.OrderModel;
import model.OrderProductModel;
import model.ProductModel;
import to.ProductTO;

public class FinishPayment implements Command {
	
	private ArrayList<ProductTO> arrayProduct;
	private OrderModel orderModel;
	private OrderProductModel orderProductModel; 

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int orderId = -1;
		int productsCartTotal = 0;
		String productsIds = "0";
		int productsIdsItens = -1;
		String userName = "";
		String userLastName = "";
		String userCEPCode = "";
		String userAdress = "";
		String cardNumber = "";
		int ccSelectedCardFlag = -1;
		int ccSelectedInstallment = -1;
		String holderCardName = "";
		int ccSelectedMonth = -1;
		int ccSelectedYear = -1;
		int securityCodeCar = -1;
		String holderCardCpf = "";
		double totalOrder = -1;
		

		ProductModel productModel = new ProductModel();
		arrayProduct = new ArrayList<>();		
		
		try {
			
			if(request.getParameter("data[cartItensTotal]") != null) {
				productsCartTotal = Integer.parseInt(request.getParameter("data[cartItensTotal]"));
			}
			if(request.getParameter("data[cartSelectedItens]") != null) {
				productsIds = request.getParameter("data[cartSelectedItens]");
			}
			
			if(request.getParameter("data[userName]") != null) {
				userName = request.getParameter("data[userName]");
			}
			if(request.getParameter("data[userLastName]") != null) {
				userLastName = request.getParameter("data[userLastName]");
			}
			if(request.getParameter("data[userCEPCode]") != null) {
				userCEPCode = request.getParameter("data[userCEPCode]");
			}
			if(request.getParameter("data[userAdress]") != null) {
				userAdress = request.getParameter("data[userAdress]");
			}
			if(request.getParameter("data[cardNumber]") != null) {
				cardNumber = request.getParameter("data[cardNumber]");
			}
			if(request.getParameter("data[ccSelectedCardFlag]") != null) {
				ccSelectedCardFlag = Integer.parseInt(request.getParameter("data[ccSelectedCardFlag]"));
			}
			if(request.getParameter("data[ccSelectedInstallment]") != null) {
				ccSelectedInstallment = Integer.parseInt(request.getParameter("data[ccSelectedInstallment]"));
			}
			if(request.getParameter("data[holderCardName]") != null) {
				holderCardName = request.getParameter("data[holderCardName]");
			}
			if(request.getParameter("data[ccSelectedMonth]") != null) {
				ccSelectedMonth = Integer.parseInt(request.getParameter("data[ccSelectedMonth]"));
			}
			if(request.getParameter("data[ccSelectedYear]") != null) {
				ccSelectedYear = Integer.parseInt(request.getParameter("data[ccSelectedYear]"));
			}
			if(request.getParameter("data[securityCodeCar]") != null) {
				securityCodeCar = Integer.parseInt(request.getParameter("data[securityCodeCar]"));
			}
			if(request.getParameter("data[holderCardCpf]") != null) {
				holderCardCpf = request.getParameter("data[holderCardCpf]");
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
		
		orderModel = new OrderModel(0, userName, userLastName, userCEPCode, userAdress, cardNumber, ccSelectedCardFlag, ccSelectedInstallment, holderCardName, ccSelectedMonth,
				ccSelectedYear, securityCodeCar, holderCardCpf, totalOrder);
		
		orderId = orderModel.insertOrder(orderModel.getOrderTO());
		
		for (int i = 0; i < arrayProduct.size();i++) {
			
			orderProductModel = new OrderProductModel(0, arrayProduct.get(i).getProdructId(), orderId, arrayProduct.get(i).getProdutPrice());
			
			orderProductModel.insertOrderProduct(orderProductModel.getOrderProductTO());
		}
		
		
		
		productsCartTotal = 0;
		productsIds = "0";
		
		session.setAttribute("productList", arrayProduct);
		session.setAttribute("productsCartTotal", productsCartTotal);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
	}
	
	
}
