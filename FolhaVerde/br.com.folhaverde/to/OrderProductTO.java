package to;

import java.io.Serializable;

public class OrderProductTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int orderProdructId;
	private int productId;
	private int orderId;
	private double productPrice;
	
	public OrderProductTO() {
		super();
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
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


}
