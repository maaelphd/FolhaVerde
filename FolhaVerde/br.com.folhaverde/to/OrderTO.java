package to;

import java.io.Serializable;

public class OrderTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int orderId;
	private String userName;
	private String userLastName;
	private String userCEPCode;
	private String userAdress;
	private String cardNumber;
	private int ccSelectedCardFlagId;
	private int ccSelectedInstallmentId;
	private String holderCardName;
	private int ccSelectedMonth;
	private int ccSelectedYear;
	private int securityCodeCar;
	private String holderCardCpf;
	private double totalOrder;
		
	public OrderTO() {
		super();
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	// GET'S
	public int getOrderId() {
		return orderId;
	}
	public String getUserName() {
		return userName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public String getUserCEPCode() {
		return userCEPCode;
	}

	public String getUserAdress() {
		return userAdress;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public int getCcSelectedCardFlagId() {
		return ccSelectedCardFlagId;
	}

	public int getCcSelectedInstallmentId() {
		return ccSelectedInstallmentId;
	}

	public String getHolderCardName() {
		return holderCardName;
	}

	public int getCcSelectedMonth() {
		return ccSelectedMonth;
	}

	public int getCcSelectedYear() {
		return ccSelectedYear;
	}

	public int getSecurityCodeCar() {
		return securityCodeCar;
	}

	public String getHolderCardCpf() {
		return holderCardCpf;
	}

	public double getTotalOrder() {
		return totalOrder;
	}
	// SET'S
	public void setOrderId(int prodructId) {
		this.orderId = prodructId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}	
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	public void setUserCEPCode(String userCEPCode) {
		this.userCEPCode = userCEPCode;
	}

	public void setUserAdress(String userAdress) {
		this.userAdress = userAdress;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public void setCcSelectedCardFlagId(int ccSelectedCardFlagId) {
		this.ccSelectedCardFlagId = ccSelectedCardFlagId;
	}

	public void setCcSelectedInstallmentId(int ccSelectedInstallmentId) {
		this.ccSelectedInstallmentId = ccSelectedInstallmentId;
	}

	public void setHolderCardName(String holderCardName) {
		this.holderCardName = holderCardName;
	}

	public void setCcSelectedMonth(int ccSelectedMonth) {
		this.ccSelectedMonth = ccSelectedMonth;
	}

	public void setCcSelectedYear(int ccSelectedYear) {
		this.ccSelectedYear = ccSelectedYear;
	}

	public void setSecurityCodeCar(int securityCodeCar) {
		this.securityCodeCar = securityCodeCar;
	}

	public void setHolderCardCpf(String holderCardCpf) {
		this.holderCardCpf = holderCardCpf;
	}

	public void setTotalOrder(double totalOrder) {
		this.totalOrder = totalOrder;
	}

}
