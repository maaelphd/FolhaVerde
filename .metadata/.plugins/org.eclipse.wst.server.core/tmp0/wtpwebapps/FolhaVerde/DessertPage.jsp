<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Restaurante Folha Verde - Sobremesa</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/DessertPage.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RobotoFonts.css" type="text/css">
</head>
<body>

	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">	
			
			<table class="DessertItensTable">
				
				<c:if test="${not empty productList}">
					<tr class="DessertDescription">
						<c:forEach var="productListItens" items="${productList}" varStatus="loop">
							<td class="DessertImageText">
								<span class="Plate1ImageText">${productListItens.productName}</span>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="productListItens" items="${productList}" varStatus="loop">
							<td>
								<img class="Plate1Image" src="${pageContext.request.contextPath}${productListItens.productPathImage}" style="width:100%">
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="productListItens" items="${productList}" varStatus="loop">
							<td class="priceProduct">
								<h3>Preço: R$ ${productListItens.produtPrice}</h3>
							</td>
						</c:forEach>					
					</tr>
					<tr class="DessertDescription">
						<c:forEach var="productListItens" items="${productList}" varStatus="loop">
							<td>				
								<a class="productData" data-prodructId="${productListItens.prodructId}" data-productName="${productListItens.productName}"
									data-produtPrice="${productListItens.produtPrice}" data-productPathImage="${productListItens.productPathImage}"
									data-productType="${productListItens.productType}">
									<i class="material-icons addShoppingCart" id="1">add_shopping_cart</i>
								</a>
							</td>
						</c:forEach>					
					</tr>
				</c:if>
			</table>
		</div>
	</div>		

</body>

<script type="text/javascript">	
	$(document).ready(function () {		
		
		$('.DessertTab').addClass("active"); // Deixa menu marcado na side bar
	
	});	
</script>
</html>