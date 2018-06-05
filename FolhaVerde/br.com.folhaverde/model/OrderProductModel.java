package model;

import java.io.IOException;

import dao.OrderProductDAO;
import to.OrderProductTO;

public class OrderProductModel {	
	
	private int orderProdructId;
	private int productId;
	private int orderId;
	private double productPrice;
	
	public OrderProductModel() {
		super();
	}

	public OrderProductModel(int orderProdructId, int productId, int orderId, double productPrice) {
		super();
		this.orderProdructId = orderProdructId;
		this.productId = productId;
		this.orderId = orderId;
		this.productPrice = productPrice;
	}

	// GET'S
	public int getOrderProdructId() {
		return orderProdructId;
	}

	public int getProductId() {
		return productId;
	}

	public int getOrderId() {
		return orderId;
	}

	public double getProductPrice() {
		return productPrice;
	}

	// SET'S
	public void setOrderProdructId(int orderProdructId) {
		this.orderProdructId = orderProdructId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	
	public int insertOrderProduct(OrderProductTO orderProductTO) throws IOException {
		
		OrderProductDAO orderProducDAO = new OrderProductDAO();
		
		return orderProducDAO.insertOrderProduct(orderProductTO);
	}
	
	public OrderProductTO getOrderProductTO() {

		OrderProductTO orderProductTO = new OrderProductTO();
		
		orderProductTO.setOrderProdructId(orderProdructId);
		orderProductTO.setProductId(productId);
		orderProductTO.setOrderId(orderId);
		orderProductTO.setProductPrice(productPrice);		
		return orderProductTO;		
	}

}
