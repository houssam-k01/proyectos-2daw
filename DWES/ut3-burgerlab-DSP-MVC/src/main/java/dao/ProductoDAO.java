package dao;

import conexion.ConnectionFactory;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import model.Categoria;
import model.Producto;

public class ProductoDAO {
    private static final String SELECT_ALL = "SELECT e.id AS entity_id, e.nombre AS entity_nombre, e.descripcion AS entity_descripcion, e.precio AS entity_precio, e.imagen AS entity_imagen, e.destacado AS entity_destacado, r1.id AS categoria_id, r1.nombre AS categoria_nombre FROM producto e JOIN categoria r1 ON r1.id = e.categoria_id ORDER BY e.id";
    private static final String SELECT_ONE = "SELECT e.id AS entity_id, e.nombre AS entity_nombre, e.descripcion AS entity_descripcion, e.precio AS entity_precio, e.imagen AS entity_imagen, e.destacado AS entity_destacado, r1.id AS categoria_id, r1.nombre AS categoria_nombre FROM producto e JOIN categoria r1 ON r1.id = e.categoria_id WHERE e.id = ?";
    public List<Producto> findAll() throws SQLException {
        List<Producto> result = new ArrayList<>();
        try (Connection cn = ConnectionFactory.getConnection();
             PreparedStatement ps = cn.prepareStatement(SELECT_ALL);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) result.add(mapearProducto(rs));
        }
        return result;
    }
    public Optional<Producto> findById(int id) throws SQLException {
        try (Connection cn = ConnectionFactory.getConnection();
             PreparedStatement ps = cn.prepareStatement(SELECT_ONE)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? Optional.of(mapearProducto(rs)) : Optional.empty();
            }
        }
    }

private Producto mapearProducto(ResultSet rs) throws SQLException {
        Producto producto = new Producto();
        producto.setId(rs.getInt("entity_id"));
        producto.setNombre(rs.getString("entity_nombre"));
        producto.setDescripcion(rs.getString("entity_descripcion"));
        
        // TODO 3: asigna la columna precio a la propiedad precio.
        producto.setPrecio(rs.getBigDecimal("entity_precio"));
        // TODO 4: asigna la columna imagen a la propiedad imagen.
        producto.setImagen(rs.getString("entity_imagen"));
        // TODO 5: asigna la columna destacado a la propiedad destacado.
        producto.setDestacado(rs.getBoolean("entity_destacado"));
        
        
        Categoria categoria = new Categoria();
        categoria.setId(rs.getInt("categoria_id"));
        categoria.setNombre(rs.getString("categoria_nombre"));
        producto.setCategoria(categoria);
        return producto;
    }
}
