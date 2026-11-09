<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!doctype html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>BurgerLab</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body>
	<header class="navbar">
		<div class="container">
			<a class="brand" href="${pageContext.request.contextPath}/productos">BurgerLab</a>
			<nav class="navlinks">
				<a href="${pageContext.request.contextPath}/productos">Catálogo</a>
			</nav>
		</div>
	</header>
	<main>
		<section class="hero">
			<div class="container">
				<div class="hero__content">
					<span class="eyebrow">Catálogo</span>
					<h1>Sabor diseñado al detalle</h1>
					<p>READ completo: listado, detalle, objetos relacionados,
						imágenes y flujo Oracle a navegador.</p>
					<a class="btn btn--primary" href="#catalogo">Explorar</a>
				</div>
			</div>
		</section>
		<section class="section section--white" id="catalogo">
			<div class="container">
				<div class="section-head">
					<div>
						<span class="eyebrow">Selección</span>
						<h2>Descubre el catálogo</h2>
					</div>
				</div>
				<%-- TODO 1-9: completa variable, colección, imagen, título, descripción, distintivo, metadato, id y precio cuando exista. --%>
				<div class="grid">
					<c:if test="${empty productos}">
						<div class="empty">
							<h3>No hay resultados</h3>
							<p>La interfaz está preparada para representar una colección
								vacía.</p>
						</div>
					</c:if>
					<c:forEach var="producto" items="${productos}">
						<article class="card">
							<img class="card__image"
								src="${pageContext.request.contextPath}${producto.imagen}"
								alt="${producto.nombre}">
							<div class="card__body">
								<span class="badge">${producto.categoria.nombre}</span>
								<h3>${producto.nombre}</h3>
								<p>${producto.descripcion}</p>
								<div class="meta">
									<span>${producto.destacado ? 'Destacado' : 'Carta'}</span>
								</div>
								<div class="card__footer">
									<strong class="price">${producto.precio} €</strong><a
										class="btn btn--ghost"
										href="${pageContext.request.contextPath}/productos?accion=detalle&amp;id=${producto.id}">Ver
										detalle</a>
								</div>
							</div>
						</article>
					</c:forEach>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<div class="container">
			<strong>BurgerLab</strong>
			<p>Sabor diseñado al detalle. Proyecto académico DWES.</p>
		</div>
	</footer>
</body>
</html>
