<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Restaurante Folha Verde - Pratos</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/PlatePage.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RobotoFonts.css" type="text/css">
</head>
<body>

	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">	
			
			<table class="PlateItensTable">

				<tr class="PlateDescription">
					<td>
						<span class="Plate1ImageText">Opção de Prato 1</span>
					</td>
					<td>
						<span class="Plate2ImageText">Opção de Prato 2</span>
					</td>					
					<td>
						<span class="Plate3ImageText">Opção de Prato 3</span>
					</td>
				</tr>
				<tr>
					<td>
						<img class="Plate1Image" src="${pageContext.request.contextPath}/imgs/PRATO1.jpg" style="width:100%">
					</td>
					<td>
						<img class="Plate2Image" src="${pageContext.request.contextPath}/imgs/PRATO2.jpg" style="width:100%">
					</td>					
					<td>
						<img class="Plate3Image" src="${pageContext.request.contextPath}/imgs/PRATO3.png" style="width:100%">
					</td>
				</tr>
				<tr class="PlateDescription">
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
		
		$('.PlateTab').addClass("active"); // Deixa menu marcado na side bar

		// Adiciona ao carrinho
	  	$(".addShoppingCart").on("click", function(){

	  		var cartItensQtd = $('.ItensCountNumber').text();

	  		cartItensQtd = parseInt(cartItensQtd) + 1;

	  		$('.ItensCountNumber').text(cartItensQtd);
		});
	
	});	
</script>
</html>