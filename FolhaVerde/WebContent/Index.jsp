<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurante Folha Verde</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Index.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RobotoFonts.css" type="text/css">
</head>
<body>
	<div id="wrapper">
		<c:import url="NavBar.jsp"></c:import>
		
		<div id="divPageContent">		
		
		<table class="w3-table indexPresentationTable">
			<tr>
				<td>
					<p class="txtHistory">
					Em maio de 2002 nasceu o restaurante vegetariano orgânico Folha Verde.<br>
					Aos cuidados da chef Mylenne Signé, chilena radicada no Brasil desde 1988.<br>
					A experiência da sociedade no Apfel Centro motivou a abertura desta nova unidade.<br> 
					Mylenne começou seus estudos em gastronomia sozinha, com livros de culinária.<br>
					Mas seu futuro como chef vegetariana ganhou forma quando se tornou pupila da <br>
					“Tia Lucia”, imigrante suíça que fundou o primeiro restaurante vegetariano de<br>
					São Paulo. Foi ela quem passou suas receitas para Mylenne “Ela também me ensinou<br>
					muitas das coisas que até hoje pratico em minha alimentação, além de ter me <br>
					ensinado como conduzir um restaurante - desde a criação do cardápio até a <br>
					importância e valor de cada alimento - ela foi minha mentora”.<br> 
					Além disso, as lembranças de sua infância no Chile, da cozinha de sua avó e<br>
					de sua tia-avó com o perfume de legumes e temperos foram responsáveis por <br>
					influenciar Mylenne na fusão de sabores e cores de sua gastronomia que se <br>
					afirma como uma das mais vanguardistas do país no segmento vegetariano.<br> 
					Os pratos são criados de forma completamente natural, transformando-os sem <br>
					deixar de valorizar seu sabor e propriedades nutritivas. E foi justamente <br>
					esta capacidade de mutação dos vegetais que mais atraem Mylenne: <br>
					“me encantam as infinitas possibilidades dos vegetais na cozinha. <br>
					As cores, os aromas os sabores…”.
					</p>
				</td>				
				<td>
					<div>
						<img class="IndexSlideShow" src="${pageContext.request.contextPath}/imgs/PRATO1.jpg">
						<img class="IndexSlideShow" src="${pageContext.request.contextPath}/imgs/PRATO2.jpg">
						<img class="IndexSlideShow" src="${pageContext.request.contextPath}/imgs/SALADA1.jpg">
						<img class="IndexSlideShow" src="${pageContext.request.contextPath}/imgs/SALADA2.jpg">
						<img class="IndexSlideShow" src="${pageContext.request.contextPath}/imgs/SOBREMESA1.jpg">
						<img class="IndexSlideShow" src="${pageContext.request.contextPath}/imgs/SOBREMESA2.jpg">
					</div>
				</td>				
			<tr>
		</table>	
		</div>
	</div>
</body>
<footer></footer>
<script>

	// INICIA CARROSEL (SLIDESHOW)
	var myIndex = 0;
	carousel();
	
	function carousel() {
	    var i;
	    var x = document.getElementsByClassName("IndexSlideShow");
	    for (i = 0; i < x.length; i++) {
	       x[i].style.display = "none";  
	    }
	    myIndex++;
	    if (myIndex > x.length) {myIndex = 1}    
	    x[myIndex-1].style.display = "block";  
	    setTimeout(carousel, 5000); // Change image every 2 seconds
	}
	//FIM CARROSEL (SLIDESHOW)
</script>
</html>