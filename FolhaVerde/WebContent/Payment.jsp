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
			
			<form action="Controller.do" method="post" role="form" id="PaymentForm">
				
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
						</tr>
						<tr>
							<td class="tdInpUserName">
								<input type="text" id="inpUserName" placeholder="Nome" name="data[userName]">
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
						</tr>
					</table>
				</div>
				
				<div class="divPaymentChoiceTable">
					<table class="w3-table PaymentsChoiceTable">
						<tr>
							<td class="paymenTableTitle">
								<h3>Cartão de crédito</h3>
							</td>
							<td class="paymenTableContent">
								<div class="CardForm">
									<div>
										<p class="PaymentCardNumber input text required">
											<label class="FormFieldLabel " for="creditCardpayment-card-0Number">Número do cartão</label>
											<input type="tel" id="creditCardpayment-card-0Number" class="input-medium  error" name="data[cardNumber]" maxlength="30" value="">
										</p>
										<div class="PaymentCardFlags clearfix form-inline">
											<p class="card-flags active">
												<label class="radio card-flag-label" for="creditCardselectedCard0cc-0" title="Visa">
													<input type="radio" class="card-flag-radio" id="creditCardselectedCard0cc-0" name="creditCardSelectedCardFlag" tabindex="-1" value="0">
													<span class="card-flag Visa ">Visa</span>
												</label>
												<label class="radio card-flag-label" for="creditCardselectedCard1cc-0" title="American Express">
													<input type="radio" class="card-flag-radio" id="creditCardselectedCard1cc-0" name="creditCardSelectedCardFlag" tabindex="-1" value="1">
													<span class="card-flag American Express ">American Express</span>
												</label>
												<label class="radio card-flag-label" for="creditCardselectedCard2cc-0" title="Hipercard">
													<input type="radio" class="card-flag-radio" id="creditCardselectedCard2cc-0" name="creditCardSelectedCardFlag" tabindex="-1" value="2">
													<span class="card-flag Hipercard ">Hipercard</span>
												</label>
												<label class="radio card-flag-label" for="creditCardselectedCard3cc-0" title="Diners">
													<input type="radio" class="card-flag-radio" id="creditCardselectedCard3cc-0" name="creditCardSelectedCardFlag" tabindex="-1" value="3">
													<span class="card-flag Diners card-selected">Diners</span>
												</label>
												<label class="radio card-flag-label" for="creditCardselectedCard4cc-0" title="Elo">
													<input type="radio" class="card-flag-radio" id="creditCardselectedCard4cc-0" name="creditCardSelectedCardFlag" tabindex="-1" value="4">
													<span class="card-flag Elo ">Elo</span>
												</label>
												<label class="radio card-flag-label" for="creditCardselectedCard5cc-0" title="Mastercard">
													<input type="radio" class="card-flag-radio" id="creditCardselectedCard5cc-0" name="creditCardSelectedCardFlag" tabindex="-1" value="5">
													<span class="card-flag Mastercard ">Mastercard</span>
												</label>
											</p>
										</div>
									</div>
									<div class="PaymentInstallments ">
										<p class="select required">
											<label class="FormFieldLabel hide" for="creditCardpayment-card-0Brand">Parcelamentos disponíveis:</label>
											<select class="input-xlarge " id="creditCardpayment-card-0Brand">
												<option value="">Em quantas parcelas deseja pagar?</option>
												<option value="1">1x-</option>
												<option value="2">2x-</option>
												<option value="2">3x-</option>
												<option value="2">4x-</option>
												<optgroup label=""></optgroup>
											</select>
										</p>
									</div>
									<div>
										<p class="PaymentCardHolderName">
											<label class="FormFieldLabel " for="creditCardpayment-card-0Name">Nome impresso no cartão</label>
											<input type="text" class="input-medium  " id="creditCardpayment-card-0Name" name="data[holderCardName]" value="">
										</p>
										<div class="PaymentCardDueDate clearfix">
											<p class="payment-card-due-month input text required">
												<label class="FormFieldLabel pull-left" for="creditCardpayment-card-0Month">Validade</label>
												<select class="input-mini " id="creditCardpayment-card-0Month" name="cardExpirationMonth">
													<option value="">Mês</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
												</select>
												
	
												<select class="input-mini " id="creditCardpayment-card-0Year" name="cardExpirationYear">
													<option value="">Ano</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
													<option value="32">32</option>
													<option value="33">33</option>
													<option value="34">34</option>
													<option value="35">35</option>
													<option value="36">36</option>
													<option value="37">37</option>
													<option value="38">38</option>
													<option value="39">39</option>
													<option value="40">40</option>
												</select>
	
											</p>
										</div>
									</div>
									<p class="PaymentCardCVV input text required">
										<label class="FormFieldLabel " for="creditCardpayment-card-0Code">Código de segurança</label>
										<input type="tel" id="creditCardpayment-card-0Code" class="input-mini" maxlength="3" value="" name="data[securityCodeCar]">
									</p>
									<p class="PaymentCardHolderDocument input text required mask">
										<label class="FormFieldLabel " for="holder-document-0">CPF do titular</label>
										<input type="tel" id="holder-document-0" class="input-small" value="" placeholder="999.999.999-99" name="data[holderCardCpf]">
									</p>
								</div>	
							</td>
						</tr>			
					</table>
				
					<input id="ccSelectedCardFlagId" name="data[ccSelectedCardFlag]" value="">	
					<input id="ccSelectedInstallmentId" name="data[ccSelectedInstallment]">
					<input id="ccSelectedMonthId" name="data[ccSelectedMonth]">
					<input id="ccSelectedYearId" name="data[ccSelectedYear]">				
					
					<c:if test="${not empty productsCartTotal}">		
						<input id="cartItensTotalId" name="data[cartItensTotal]" value="${productsCartTotal}">
					</c:if>
					<c:if test="${not empty productsIds}">		
						<input id="cartSelectedItensId" name="data[cartSelectedItens]" value="${productsIds}">
					</c:if>	
				</div>
				
				<div class="btn buttonsDiv" align="center">
					<button class="SaladTab" type="submit" name="command" value="FinishPayment">Confirmar</button>
				</div>
			</form>				
		</div>
	</div>
</body>
<footer></footer>
<script type="text/javascript">

	$('#PaymentForm input').on('change', function() {
		$('#ccSelectedCardFlagId').text($('input[name=creditCardSelectedCardFlag]:checked', '#PaymentForm').val()); // Adiciona ao input o valor do cartao selecionado
		$('#ccSelectedCardFlagId').val($('input[name=creditCardSelectedCardFlag]:checked', '#PaymentForm').val()); // Adiciona ao input o valor do cartao selecionado 
	});

	$('#creditCardpayment-card-0Month').on('change', function (e) {
	    var optionSelected = $("option:selected", this);
	    var valueSelected = this.value;
	    $('#ccSelectedMonthId').text(valueSelected); // Adiciona ao input o valor do mes selecionado
		$('#ccSelectedMonthId').val(valueSelected); // Adiciona ao input o valor do mes selecionado	   
	});

	$('#creditCardpayment-card-0Year').on('change', function (e) {
	    var optionSelected = $("option:selected", this);
	    var valueSelected = this.value;
	    $('#ccSelectedYearId').text(valueSelected); // Adiciona ao input o valor do ano selecionado
		$('#ccSelectedYearId').val(valueSelected); // Adiciona ao input o valor do ano selecionado	   
	});

	$('#creditCardpayment-card-0Brand').on('change', function (e) {
	    var optionSelected = $("option:selected", this);
	    var valueSelected = this.value;
	    $('#ccSelectedInstallmentId').text(valueSelected); // Adiciona ao input o valor do ano selecionado
		$('#ccSelectedInstallmentId').val(valueSelected); // Adiciona ao input o valor do ano selecionado	   
	});

</script>
</html>