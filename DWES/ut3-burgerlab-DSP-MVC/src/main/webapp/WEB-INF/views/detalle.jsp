<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html><html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>BurgerLab</title><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css"></head><body>
<header class="navbar"><div class="container"><a class="brand" href="${pageContext.request.contextPath}/productos">BurgerLab</a>
<nav class="navlinks"><a href="${pageContext.request.contextPath}/productos">Catálogo</a></nav></div></header><main><section class="section"><div class="container"><%-- TODO 1-10: propiedades visuales, id y campos hidden según las instrucciones. --%><div class="detail">
<img class="detail__image" src="${pageContext.request.contextPath}${TODO_1}" alt="${TODO_2}"><div><span class="badge">${TODO_4}</span><h1>${TODO_2}</h1><p>${TODO_3}</p>
<div class="meta"><span>${TODO_5}</span></div><p class="price">${TODO_6} €</p><div class="actions"><a class="btn btn--ghost" href="${pageContext.request.contextPath}/productos">Volver</a></div></div></div></div></section>
</main><footer><div class="container"><strong>BurgerLab</strong><p>Sabor diseñado al detalle. Proyecto académico DWES.</p></div></footer></body></html>
