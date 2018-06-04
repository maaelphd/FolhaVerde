package to;

import java.io.Serializable;

public class ProductTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int prodructId;
	private String productName;
	private double produtPrice;
	private String productPathImage;
	private int productType;
	
	public ProductTO() {
		super();
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	// GET'S
	public int getProdructId() {
		return prodructId;
	}
	public String getProductName() {
		return productName;
	}
	public double getProdutPrice() {
		return produtPrice;
	}
	public String getProductPathImage() {
		return productPathImage;
	}
	public int getProductType() {
		return productType;
	}
	
	// SET'S
	public void setProdructId(int prodructId) {
		this.prodructId = prodructId;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public void setProdutPrice(double produtPrice) {
		this.produtPrice = produtPrice;
	}
	public void setProductPathImage(String productPathImage) {
		this.productPathImage = productPathImage;
	}
	public void setProductType(int productType) {
		this.productType = productType;
	}

}