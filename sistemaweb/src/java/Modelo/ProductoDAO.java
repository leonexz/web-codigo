
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Producto buscar(int id) {
        Producto pr = new Producto();
        String sql = "select * from producto where idproducto=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                pr.setId(rs.getInt(1));
                pr.setNombres(rs.getString(2));
                pr.setPrecio(rs.getDouble(3));
                pr.setStock(rs.getInt(4));
                pr.setEstado(rs.getString(5));
            }
        } catch (Exception e) {
        }
        return pr;
    }
    public int actualizarstock(int id, int stock) {
        String sql = "update producto set Stock=? where idproducto=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, stock);
            ps.setInt(2, id);

            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public Producto validar(String nombres, double precio) {
        Producto pr = new Producto();
        String sql = "select * from producto where Nombres=? and Precio=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, nombres);
            ps.setDouble(2, precio);
            rs=ps.executeQuery();
            while(rs.next()){
            pr.setId(rs.getInt("IdProducto"));
            pr.setNombres(rs.getString("Nombres"));
            pr.setPrecio(rs.getDouble("Precio"));
            pr.setStock(rs.getInt("Stock"));
            }
        } catch (Exception e) {
        }return pr;
    }
    public List listar() {
        String sql = "select * from producto";
        List<Producto> lista = new ArrayList();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pr = new Producto();
                pr.setId(rs.getInt(1));
                pr.setNombres(rs.getString(2));
                pr.setPrecio(rs.getDouble(3));
                pr.setStock(rs.getInt(4));
                pr.setEstado(rs.getString(5));
                lista.add(pr);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Producto pr) {
        String sql = "insert into producto(Nombres,Precio,Stock,Estado)values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pr.getNombres());
            ps.setDouble(2, pr.getPrecio());
            ps.setInt(3, pr.getStock());
            ps.setString(4, pr.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public Producto listarId(int id) {
        Producto pr = new Producto();
        String sql = "select * from producto where IdProducto=" + id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            pr.setNombres(rs.getString(2));
            pr.setPrecio(rs.getDouble(3));
            pr.setStock(rs.getInt(4));
            pr.setEstado(rs.getString(5));
            }
        } catch (Exception e) {

        }
        return pr;
    }
    public int actualizar(Producto pr) {
        String sql = "update producto set Nombres=?,Precio=?,Stock=?,Estado=? where IdProducto=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pr.getNombres());
            ps.setDouble(2, pr.getPrecio());
            ps.setInt(3, pr.getStock());
            ps.setString(4, pr.getEstado());
            ps.setInt(5, pr.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id) {
        String sql = "delete from producto where IdProducto=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
