<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>DiscMaster Home</title>
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'stylefont.css')}">
	<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
	<link href='http://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
</head>
<body style="background-color:black">
<style>.fi-social-facebook{color:dodgerblue;font-size:2rem;}.fi-social-youtube{color:red;font-size:2rem;}.fi-social-pinterest{color:darkred;font-size:2rem;}i.fi-social-instagram{color:brown;font-size:2rem;}i.fi-social-tumblr{color:navy;font-size:2rem;}.fi-social-twitter{color:skyblue;font-size:2rem;}</style>
<header>
	<div class="top-bar", style="background-color:red">
		<div class="top-bar-right" style="background-color:red">
			<ul class="menu">
				<g:if test="${session?.user}" style="background-color: red">
					<li style="background-color:red; color:#b2d1ff">Estas logeado como: ${session.user?.name}</li>
					<li><g:link action="logout" controller="user" title="Logout" style="color:white">Logout</g:link></li>
				</g:if>
				<g:else>
                    <li>
					<g:form controller="user" action="login" name="loginForm" method="POST">
						<div class="formField">
							<label for="name">Login:</label>
							<g:textField name="name" value="${user?.name}"></g:textField>
						</div>
						<div class="formField">
							<label for="password">Password:</label>
							<g:passwordField name="password" value="${user?.password}"></g:passwordField>
						</div>
						<g:submitButton class="formButton" name="login" value="Login"></g:submitButton>
					</g:form>
                    </li>
				</g:else>

				<li style="background-color:red"><a href="user/register.gsp" style="color:white">Registrarse</a></li>
				<li style="background-color:red"><a href="#" style="color:white">Mi Perfil</a></li>
				<li style="background-color:red"><a href="#" style="color:white">Mi WishList</a></li>
				<li style="background-color:red"><a href="#" style="color:white"><img src="${resource(dir: 'images', file: 'carrito-de-compras.png')}" alt="kart" style="width:30px;height:30px;"></a></li>
			</ul>
		</div>
		<div class="top-bar-left" style="background-color:red">
			<ul class="menu">
				<li><input type="search" placeholder="Search"></li>
				<li><button type="button" class="button" style="background-color:black">Search</button></li>
			</ul>
		</div>
	</div>

	<br>
	<div class="row">
		<div class="medium-4 columns">
			<h1 class="tipo_2">DiscMaster</h1>
			<!--                    <img src="http://placehold.it/450x183&text=DiscMaster" alt="company logo">-->
		</div>
		<div class="medium-7 columns">
			<!--                    <img src="http://placehold.it/900x175&text=Responsive Ads - ZURB Playground/333" alt="advertisement for deep fried Twinkies">-->
		</div>
	</div>

	<br>
	<div class="title-bar" data-responsive-toggle="main-menu" data-hide-for="medium" style="background-color:red">
		<button class="menu-icon" type="button" data-toggle></button>
		<div class="title-bar-title">Menu</div>
	</div>
	<div class="top-bar" id="main-menu" style="background-color:red">
		<ul class="menu vertical medium-horizontal expanded medium-text-center" data-responsive-menu="drilldown medium-dropdown">
			<li><a class="botonMenu" href="#" style="color:white">Home</a></li>
			<li><a class="botonMenu" href="#" style="color:white">Bandas</a></li>
			<li><a class="botonMenu" href="#" style="color:white">Catálogo</a></li>
			<li><a class="botonMenu" href="#" style="color:white">Contacto</a></li>
		</ul>
	</div>
</header>

<br>
<div class="row column">
	<h1 class="tipo_1" >Próximos conciertos</h1>
</div>
<br>
<div class="row">
	<div class="medium-7 columns">
		<p><img src="${resource(dir: 'images', file: 'Soulfly_Bogota.jpg')}" alt="main article image"></p>
	</div>
	<div class="medium-5 columns">
		<p><img src="${resource(dir: 'images', file: 'amorphis-latinoamerica-2016.jpg')}" alt="article promo image"></p>
		<p><img src="${resource(dir: 'images', file: 'riotttt.jpg')}" alt="article promo image"></p>
		<p><img src="${resource(dir: 'images', file: 'CandlemassColombia.png')}" alt="article promo image"></p>
	</div>
</div>
<hr>
<div class="row column">
	<h1 class="tipo_1">Próximos estrenos</h1>
	<br>
</div>
<div class="row small-up-3 medium-up-4 large-up-4">
	<div class="column">
		<img src="${resource(dir: 'images', file: 'AmonAmarthJomsviking.jpg')}" alt="image for article" >
		<h4 class="next_rel">Jomsviking</h4>
		<h4 class="next_rel">Amon Amarth</h4>
		<h4 class="next_rel">25/03/2016</h4>
	</div>
	<div class="column">
		<img src="${resource(dir: 'images', file: 'katatoniafallcdbigger.jpg')}" alt="image for article">
		<h4 class="next_rel">The Fall of Hearts</h4>
		<h4 class="next_rel">Katatonia</h4>
		<h4 class="next_rel">20/05/2016</h4>
	</div>
	<div class="column">
		<img src="${resource(dir: 'images', file: 'thunderstone-apocalypse-again-portada-400x400.jpg')}" alt="image for article">
		<h4 class="next_rel">Apocalypse Again</h4>
		<h4 class="next_rel">Thunderstone</h4>
		<h4 class="next_rel">01/04/2016</h4>
	</div>
	<div class="column show-for-medium">
		<img src="${resource(dir: 'images', file: 'ragethedevilstrikes.jpg')}" alt="image for article">
		<h4 class="next_rel">The Devil Strikes Again</h4>
		<h4 class="next_rel">RAGE</h4>
		<h4 class="next_rel">10/06/2016</h4>
	</div>
</div>

<hr>
<div class="row column">
	<h1 class="tipo_1">Eventos</h1>
</div>
<div class="row">
	<div class="large-8 columns" style="border-right: 1px solid #E3E5E8;">
		<article>
			<div class="row">
				<div class="large-6 columns">
					<p><img src="${resource(dir: 'images', file: 'RockAl.jpg')}" alt="image for article" alt="article preview image"></p>
				</div>
				<div class="large-6 columns">
					<h5 class="event">Festival Rock Al Parque 2016</h5>
					<p>
						<span style="color:white"><i class="fi-torso"> By Daniel &nbsp;&nbsp;</i></span>
						<span style="color:white"><i class="fi-calendar"> 19/03/2016 &nbsp;&nbsp;</i></span>
						<span style="color:white"><i class="fi-comments"> 6 comments</i></span>
					</p>
					<p style="color: white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="large-6 columns">
					<p><img src="${resource(dir: 'images', file: 'Usmetal-Festival-Logo-2.png')}" alt="image for article" alt="article preview image"></p>
				</div>
				<div class="large-6 columns">
					<h5 class="event">Usmetal Festival</h5>
					<p>
						<span style="color:white"><i class="fi-torso"> By Sergio &nbsp;&nbsp;</i></span>
						<span style="color:white"><i class="fi-calendar"> 14/03/16 &nbsp;&nbsp;</i></span>
						<span style="color:white"><i class="fi-comments"> 10 comments</i></span>
					</p>
					<p style="color:white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
				</div>
			</div>

			<hr>

			<div class="row">
				<div class="large-6 columns">
					<p><img src="${resource(dir: 'images', file: 'Metal_Millenium_2016.png')}" alt="image for article" alt="article preview image"></p>
				</div>
				<div class="large-6 columns">
					<h5 class="event">Metal Millenium XVII</h5>
					<p>
						<span style="color:white"><i class="fi-torso"> By Daniel &nbsp;&nbsp;</i></span>
						<span style="color:white"><i class="fi-calendar"> 14/02/16 &nbsp;&nbsp;</i></span>
						<span style="color:white"><i class="fi-comments"> 17 comments</i></span>
					</p>
					<p style="color:white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
				</div>
			</div>

			<hr>

			<ul class="pagination" role="navigation" aria-label="Pagination">
				<li class="disabled">Previous <span class="show-for-sr">page</span></li>
				<li class="current" style="color:white; background-color:black"><span class="show-for-sr">You're on page</span> 1</li>
				<li><a href="#" aria-label="Page 2">2</a></li>
				<li><a href="#" aria-label="Page 3">3</a></li>
				<li><a href="#" aria-label="Page 4">4</a></li>
				<li><a href="#" aria-label="Next page">Next <span class="show-for-sr">page</span></a></li>
			</ul>
		</article>
	</div>
	<div class="large-4 columns">
		<aside>
			<div class="row small-up-3">
				<div class="column text-center">
					<i class="fi-social-facebook"></i>
					<h6 style="color:white">89</h6>
					<p><small>FOLLOWERS</small></p>
					<br>
				</div>
				<div class="column text-center">
					<i class="fi-social-twitter"></i>
					<h6 style="color:white">76</h6>
					<p><small>FOLLOWERS</small></p>
					<br>
				</div>
				<div class="column text-center">
					<i class="fi-social-youtube"></i>
					<h6 style="color:white">103</h6>
					<p><small>FOLLOWERS</small></p>
				</div>
			</div>
			<br>
			<div class="row column">
				<h1 class="tipo_1">Anuncios</h1>
				<h5 class="event">Se necesita bajista</h5>
				<p style="color: white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
				<br>
				<h5 class="event">Audiciones para vocalista femenina</h5>
				<p style="color: white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
				<br>
				<h5 class="event">Concurso colección rockera</h5>
				<p style="color: white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
			</div>
			<br>
		</aside>
	</div>
</div>
<footer>
	<div style="background-color:black" class="row expanded callout secondary">
	</div>
	<hr>
	<div class="row expanded">
		<div class="medium-6 columns">
			<ul class="menu">
				<li><a style="color: white" href="#">Legal</a></li>
				<li><a style="color: white" href="#">Partner</a></li>
				<li><a style="color: white" href="#">Explore</a></li>
			</ul>
		</div>
		<div class="medium-6 columns">
			<ul class="menu align-right">
				<li class="menu-text">Copyright © 2016 DiscMaster</li>
			</ul>
		</div>
	</div>
</footer>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
<script>
	$(document).foundation();
</script>
<script type="text/javascript" src="https://intercom.zurb.com/scripts/zcom.js"></script>
</body>
</html>
