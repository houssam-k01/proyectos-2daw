<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Perfil dinámico</title>
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
  <div class="section-title"><div><p class="eyebrow">Datos preparados por el controller</p><h1>Perfil de usuario</h1></div></div>
  <section class="panel profile">
    <div class="profile-art"><img src="${pageContext.request.contextPath}/assets/img/profile-avatar.svg" alt="Avatar ilustrado del perfil"></div>
    <div>
      <!-- TODO 1-5: completa las expresiones EL con rol, nombre, edad, correo y grupo. -->
      <span class="badge">${rol}</span>
      <h2>${nombre}</h2>
      <p class="muted">Esta ficha no inventa datos: representa los atributos que ha recibido.</p>
      <dl class="definition-list">
        <dt>Edad</dt><dd>${edad} años</dd>
        <dt>Correo</dt><dd>${correo}</dd>
        <dt>Grupo</dt><dd>${grupo}</dd>
      </dl>
    </div>
  </section>
</main>
<footer class="footer">DWES · UT3 · JSP y MVC</footer>
</body>
</html>
