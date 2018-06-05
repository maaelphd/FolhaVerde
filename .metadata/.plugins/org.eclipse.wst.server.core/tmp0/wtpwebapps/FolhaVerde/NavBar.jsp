<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
	 <meta charset="UTF-8">

 	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Pages.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/NavBar.css"/>	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RobotoFonts.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/IndieFlower.css" type="text/css">

	<form action="Controller.do" method="post" role="form">

		<div class="LogoHeader">
			<table class="w3-table TopBarTable">
				<tr>
					<td>
						<div class="LogoImg">
							<a href="Controller.do?command=ViewIndex" class="indexLink"><img src="${pageContext.request.contextPath}/imgs/LOGO.png"> <span class="NomeEmpresaLogo"> Folha Verde </span></a>
						</div>				
					</td>
					<td id="PersonIcoCol">
						<i class="material-icons" id="PersonIco">person</i>
					</td>
					<td id="shoppingCartIcoCol">
						<span class="ItensCountNumber">
							<c:if test="${not empty productsCartTotal}">
								${productsCartTotal}
							</c:if>
						</span>
						<button id="finishOrder" type="submit" name="command" value="FinishOrder"><i class="material-icons" id="shoppingCartIco">shopping_cart</i></button>						
					</td>
				</tr>
			</table>		
		</div>
	
	
		<nav>			
			<ul class="horizontal">
				<li><button class="SaladTab" type="submit" name="command" value="ViewSalads">Saladas</button></li>
				<li><button class="PlateTab" type="submit" name="command" value="ViewPlates">Pratos</button></li>
				<li><button class="DessertTab" type="submit" name="command" value="ViewDesserts">Sobremesas</button></li>		
			</ul>	
		</nav>
		
		<c:if test="${not empty productsCartTotal}">		
			<input id="cartItensTotalId" name="data[cartItensTotal]" value="${productsCartTotal}">
		</c:if>
		<c:if test="${not empty productsIds}">		
			<input id="cartSelectedItensId" name="data[cartSelectedItens]" value="${productsIds}">
		</c:if>		
	</form>
	
	<!-- JQUERY & BOOTSTRAP  -->
		
	<!-- jQuery Reference -->
	<!-- <script src="${pageContext.request.contextPath}/jquery-ui/jquery-ui.min.js"></script> -->
	<script src="${pageContext.request.contextPath}/jquery-ui/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
	
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	

<script type="text/javascript">

	$(document).ready(function () {

		var arrayItensCartId = [$('#cartSelectedItensId').val()];

	  	$(".nav a").on("click", function(){
	  	   $(".nav").find(".active").removeClass("active");
	  	   $(this).parent().addClass("active");
	  	});

		// Adiciona ao carrinho
	  	$(".productData").on("click", function(event){

	  		var selectedItemId = $(this).data("prodructid");

	  		var cartItensQtd = $('.ItensCountNumber').text();

	  		cartItensQtd = parseInt(cartItensQtd) + 1;

	  		$('.ItensCountNumber').text(cartItensQtd);

			$('#cartItensTotalId').text(cartItensQtd); // Salva no input a quantidade de itens ja passada no carrinho 
			$('#cartItensTotalId').val(cartItensQtd); // Salva no input a quantidade de itens ja passada no carrinho

	  		addCartFunction(selectedItemId);
		});

		function addCartFunction(selectedItemId) {

			arrayItensCartId.push(selectedItemId);
		    
		    $('#cartSelectedItensId').text(arrayItensCartId); // Adiciona aoinput o valor do array (codigo dos itens)
			$('#cartSelectedItensId').val(arrayItensCartId); // Adiciona aoinput o valor do array (codigo dos itens)			
		}
	});
	//# sourceURL=pen.js
</script>