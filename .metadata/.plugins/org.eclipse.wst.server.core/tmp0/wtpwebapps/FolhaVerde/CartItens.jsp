<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurante Folha Verde - Meu Carrinho</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/CartItens.css"/>
</head>
<body>
	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">		
		
			<div class="MyCartHeaderContent">
				<h1 class="MyCartText">Meu Carrinho</h1>
			</div>
			
			<table class="w3-table CartItensTable">
				<tr>
					<th>
						<span class="CartItensTableHeader">Item</span>
					</th>
					<th>
						<span class="CartItensTableHeader">Entrega</span>
					</th>
					<th>
						<span class="CartItensTableHeader">Preço</span>
					</th>
					<th>
						<span class="CartItensTableHeader">Quantidade</span>
					</th>
					<th>
						<span class="CartItensTableHeader">Total</span>
					</th>			
				</tr>
				<c:if test="${not empty productList}">
					<c:forEach var="productListItens" items="${productList}" varStatus="loop">
						<tr>
							<td class="itemDescription">
								${productListItens.productName}
							</td>
							<td class="itemDelivery">
								A Calcular
							</td>
							<td class="itemPrice">
								${productListItens.produtPrice}
							</td>
							<td class="itemQuantity">
								1
							</td>
							<td class="itemTotal">
								${productListItens.produtPrice}
							</td>				
						<tr>
					</c:forEach>
				</c:if>
			</table>
			<div class="divCartItensTotalTable" align="right">
				<table class="w3-table CartItensTotalTable">
					<tr>
						<td>
							SubTotal
						</td>
						<td>
							<c:if test="${not empty totalOrder}">
								<span class="subtotalOrder">${totalOrder}</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							Entrega
						</td>
						<td>
							<span class="deliveryPriceOrder">10.00</span>
						</td>
					</tr>
					<tr>
						<td>
							TOTAL
						</td>
						<td>
							<c:if test="${not empty totalOrder}">
								<span class="TotalOrder"><c:out value="${totalOrder + 10}" /></span>
							</c:if>							
						</td>
					</tr>				
					
				</table>
			</div>
		</div>
		
		<form action="Controller.do" method="post" role="form">
		
			<c:if test="${not empty productsCartTotal}">		
				<input id="cartItensTotalId" name="data[cartItensTotal]" value="${productsCartTotal}">
			</c:if>
			<c:if test="${not empty productsIds}">		
				<input id="cartSelectedItensId" name="data[cartSelectedItens]" value="${productsIds}">
			</c:if>		
		
			<div class="btn buttonsDiv" align="right">
				<button type="submit" name="command" value="Payment" autofocus>Finalizar Pedido</button>
			</div>
		</form>
	</div>
</body>
<footer></footer>
<script>
</script>
</html>