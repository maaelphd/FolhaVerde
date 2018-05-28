<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Restaurante Folha Verde - Desserts</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/DessertPage.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RobotoFonts.css" type="text/css">
</head>
<body>

	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">	
			
			<table class="DessertItensTable">

				<tr class="DessertDescription">
					<td>
						<span class="Dessert1ImageText">Opção de Sobremesa 1</span>
					</td>
					<td>
						<span class="Dessert2ImageText">Opção de Sobremesa 2</span>
					</td>					
					<td>
						<span class="Dessert3ImageText">Opção de Sobremesa 3</span>
					</td>
				</tr>
				<tr>
					<td>
						<img class="Dessert1Image" src="${pageContext.request.contextPath}/imgs/SOBREMESA1.jpg" style="width:100%">
					</td>
					<td>
						<img class="Dessert2Image" src="${pageContext.request.contextPath}/imgs/SOBREMESA2.jpg" style="width:100%">
					</td>					
					<td>
						<img class="Dessert3Image" src="${pageContext.request.contextPath}/imgs/SOBREMESA3.jpg" style="width:100%">
					</td>
				</tr>
				<tr class="DessertDescription">
					<td>				
						<i class="material-icons addShoppingCart" id="1">add_shopping_cart</i>
					</td>
					<td>
						<i class="material-icons addShoppingCart" id="2">add_shopping_cart</i>
					</td>					
					<td>
						<i class="material-icons addShoppingCart" id="3">add_shopping_cart</i>
					</td>
				</tr>
			</table>
		</div>
	</div>		

</body>

<script type="text/javascript">	
	$(document).ready(function () {		
		
		$('.DessertTab').addClass("active"); // Deixa menu marcado na side bar

		// Adiciona ao carrinho
	  	$(".addShoppingCart").on("click", function(){

	  		var cartItensQtd = $('.ItensCountNumber').text();

	  		cartItensQtd = parseInt(cartItensQtd) + 1;

	  		$('.ItensCountNumber').text(cartItensQtd);
		});
	
	});	
</script>
</html>