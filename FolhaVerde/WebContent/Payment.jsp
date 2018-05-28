<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurante Folha Verde - Pagamento</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Payment.css"/>
</head>
<body>
	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">		
		
			<div class="PaymentHeaderContent">
				<h1 class="PaymentText">Finalizar Compra</h1>
			</div>
			
			<div class="divPaymentDataTable">
				<table class="w3-table PaymentsDataTable">
					<tr>
						<th>
							Nome
						</th>							
						<th>
							Sobrenome
						</th>
						<th>
							CEP
						</th>						
						<th>
							Endereço
						</th>
						<th>
							Número
						</th>
						<th>
							Complemento
						</th>
						<th>
							Bairro
						</th>
						<th>
							Cidade
						</th>
						<th>
							Estado
						</th>
					</tr>
					<tr>
						<td class="tdInpUserName">
							<input type="text" id="inpUserName" placeholder="Nome De Usuário" name="data[userName]">
						</td>
						<td class="tdInpUserLastName">
							<input type="text" id="inpUserLastName" placeholder="Sobrenome" name="data[userLastName]">
						</td>
						<td class="tdInpUserCEPCode">
							<input type="text" min="" id="inpUserCEPCode" placeholder="00000-000" name="data[userCEPCode]">						
						</td>
						<td class="tdInpUserAdress">
							<input type="text" min="" id="inpUserAdress" placeholder="Avenida Vital Brasil" name="data[userAdress]">
						</td>
						<td class="tdInpUserNumberAdress">
							<input type="number" min="1" id="inpUserNumberAdress" value="1" name="data[userNumberAdress]">
						</td>
						<td class="tdInpUserComplementAdress">
							<input type="text" min="" id="inpUserComplementAdress" placeholder="Apt 100" name="data[userComplementAdress]" >
						</td>
						<td class="tdInpUserNeighborhood">
							<input type="text" min="" id="inpUserNeighborhood" placeholder="Butantã" name="data[userNeighborhood]" >
						</td>
						<td class="tdInpUserCity">
							<input type="text" min="" id="inpUserCity" placeholder="São Paulo" name="data[inpUserCity]" >
						</td>
						<td class="tdInpUserState">
						 	<input type="text" min="" id="inpUserState" placeholder="SP" name="data[inpUserState]" >
						</td>
					</tr>
				</table>
			</div>
			
			<div class="divPaymentChoiceTable">
				<table class="w3-table PaymentsChoiceTable">			
				</table>
			</div>
		</div>
		
	</div>
</body>
<footer></footer>
<script>
</script>
</html>