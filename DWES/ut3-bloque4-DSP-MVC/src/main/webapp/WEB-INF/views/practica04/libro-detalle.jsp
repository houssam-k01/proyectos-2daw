<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Detalle de libro</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body>

<header class="site-header">
  <nav class="nav">
    <a class="brand" href="${pageContext.request.contextPath}/libros">
      <span class="brand-mark">B</span><span>Biblioteca Aula</span>
    </a>
    <div class="nav-links">
      <a class="btn btn-secondary" href="${pageContext.request.contextPath}/libros">Colección</a>
      <a class="btn btn-primary" href="${pageContext.request.contextPath}/libros/nuevo">+ Nuevo libro</a>
    </div>
  </nav>
</header>
<main class="container page">
  <p class="eyebrow">Ficha editorial</p>
  <section class="panel detail">
    <img class="detail-cover" src="${pageContext.request.contextPath}/assets/img/book-placeholder.svg" alt="Portada ficticia del libro">
    <div>
      <!-- TODO 1-7: completa las propiedades del objeto libro y el id del enlace Editar. -->
      <span class="badge">${libro.categoria.nombre}</span>
      <h1>${libro.titulo}</h1>
      <p class="muted">de <strong>${libro.autor.nombre}</strong></p>
      <dl class="definition-list">
        <dt>ISBN</dt><dd>${libro.idLibro}</dd>de.-
        <dt>Año</dt><dd>${libro.anioPublicacion}</dd>
        <dt>Precio</dt><dd class="price">${libro.precio} €</dd>
      </dl>
      <div class="actions" style="margin-top:1.5rem">
        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/libros">← Volver</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/libros?accion=editar&id=${libro.idLibro}">Editar</a>
      </div>
    </div>
  </section>
</main>
<footer class="footer">DWES · UT3 · JSP y MVC</footer>
</body>
</html>
