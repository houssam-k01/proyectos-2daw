package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/perfil")
public class PerfilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String rol = request.getParameter("rol");
		String nombre = request.getParameter("nombre");
		int edad = Integer.parseInt(request.getParameter("edad"));
		String correo = request.getParameter("correo");
		String grupo = request.getParameter("grupo");
		
		request.setAttribute("rol", rol);
		request.setAttribute("nombre", nombre);
		request.setAttribute("edad", edad);
		request.setAttribute("correo", correo);
		request.setAttribute("grupo", grupo);

		request.getRequestDispatcher("/WEB-INF/views/practica03/perfil.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
