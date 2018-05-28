<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Restaurante Folha Verde - Saladas</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/SaladPage.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RobotoFonts.css" type="text/css">
</head>
<body>

	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">	
			
			<table class="SaladItensTable">

				<tr class="SaladDescription">
					<td>
						<span class="Salad1ImageText">Opção de Salada 1</span>
					</td>
					<td>
						<span class="Salad2ImageText">Opção de Salada 2</span>
					</td>					
					<td>
						<span class="Salad3ImageText">Opção de Salada 3</span>
					</td>
				</tr>
				<tr>
					<td>
						<img class="Salad1Image" src="${pageContext.request.contextPath}/imgs/SALADA1.jpg" style="width:100%">
					</td>
					<td>
						<img class="Salad2Image" src="${pageContext.request.contextPath}/imgs/SALADA2.jpg" style="width:100%">
					</td>					
					<td>
						<img class="Salad3Image" src="${pageContext.request.contextPath}/imgs/SALADA3.jpg" style="width:100%">
					</td>
				</tr>
				<tr class="SaladDescription">
					<td>				
						<i class="material-icons addShoppingCart">add_shopping_cart</i>
					</td>
					<td>
						<i class="material-icons addShoppingCart">add_shopping_cart</i>
					</td>					
					<td>
						<i class="material-icons addShoppingCart">add_shopping_cart</i>
					</td>
				</tr>
			</table>
		</div>
	</div>		

</body>

<script type="text/javascript">	
	$(document).ready(function () {		
		
		$('.SaladTab').addClass("active"); // Deixa menu marcado na side bar

		// Adiciona ao carrinho
	  	$(".addShoppingCart").on("click", function(){

	  		var cartItensQtd = $('.ItensCountNumber').text();

	  		cartItensQtd = parseInt(cartItensQtd) + 1;

	  		$('.ItensCountNumber').text(cartItensQtd);
		});
	
	});	
</script>
</html>