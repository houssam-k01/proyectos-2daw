package controller;

import dao.CategoriaDAO;
import dao.ProductoDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import model.Categoria;
import model.Producto;

@WebServlet("/productos")
public class ProductoServlet extends HttpServlet {
    private ProductoDAO productoDAO;
    private CategoriaDAO categoriaDAO;

    @Override
    public void init() {
        productoDAO = new ProductoDAO();
        categoriaDAO = new CategoriaDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion == null || accion.isBlank()) accion = "listar";
        try {
            switch (accion) {
            case "listar" -> listar(request, response);
            case "detalle" -> detalle(request, response);
                default -> response.sendError(400, "Acción GET desconocida");
            }
        } catch (SQLException | IllegalArgumentException ex) {
            throw new ServletException("No se pudo atender la petición", ex);
        }
    }

    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        request.setAttribute("productos", productoDAO.findAll());
        forward(request, response, "listado.jsp");
    }

    private void detalle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = requiredInt(request, "id");
        Producto producto = productoDAO.findById(id).orElse(null);
        if (producto == null) { response.sendError(404, "Producto no encontrado"); return; }
        request.setAttribute("producto", producto);
        forward(request, response, "detalle.jsp");
    }

    private static int requiredInt(HttpServletRequest request, String name) {
        return Integer.parseInt(required(request, name));
    }

    private static String required(HttpServletRequest request, String name) {
        String value = request.getParameter(name);
        if (value == null || value.isBlank()) throw new IllegalArgumentException("Falta " + name);
        return value.trim();
    }

    private static void forward(HttpServletRequest request, HttpServletResponse response, String view) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/" + view).forward(request, response);
    }
}
