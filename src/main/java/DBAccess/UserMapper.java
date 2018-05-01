package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.PasswordEncryption;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * The purpose of UserMapper is to...
 *
 * @author kasper
 */
public class UserMapper {

    public static void createUser(User user) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, role) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setBytes(2, user.getPassword());
            ps.setString(3, user.getRole());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            user.setId(id);
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static User login(String email, String password) throws LoginSampleException, NoSuchAlgorithmException {

        // denne metode skal rettes så ledes, at vi tager et salt objekt udfra databasen og kan bruge det til at verificere brugeren
        try {
            PasswordEncryption PE = new PasswordEncryption();
            Connection con = Connector.connection();
            String SQL = "SELECT id, role FROM Users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ps.setBytes(2, password);
            ps.setBytes(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("id");
                User user = new User(role, role, email, password, role, salt);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Order> getOrders() throws ClassNotFoundException, SQLException {
        ArrayList<Order> orders = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("order_id");
            int SBricks = rs.getInt("Heigth");
            int MBricks = rs.getInt("Width");
            int LBricks = rs.getInt("Length");
            boolean status = rs.getBoolean("status");
            Order order = new Order(id, SBricks, MBricks, LBricks, status);
            orders.add(order);
        }
        return orders;
    }

    public static void createOrder(Order order, User user) throws SQLException, ClassNotFoundException {

        Connection con = Connector.connection();
        String SQL = "INSERT INTO orders (id, Heigth, Width, Length, status) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
        ps.setInt(1, user.getId());
        ps.setInt(2, order.getHeigth());
        ps.setInt(3, order.getWidth());
        ps.setInt(4, order.getLength());
        ps.setBoolean(5, order.getStatus());
        ps.executeUpdate();
        ResultSet ids = ps.getGeneratedKeys();
        ids.next();
        int id = ids.getInt(1);
        order.setId(id);
    }

    public static ArrayList<Order> getOrders(User u) throws ClassNotFoundException, SQLException {
        int id = u.getId();
        ArrayList<Order> orders = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders " + "WHERE id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int orderId = rs.getInt("order_id");
            int heigth = rs.getInt("Heigth");
            int width = rs.getInt("Width");
            int length = rs.getInt("Length");
            boolean status = rs.getBoolean("status");
            Order order = new Order(orderId, heigth, width, length, status);
            orders.add(order);
        }
        return orders;
    }

    public static void updateOrder(int id) throws ClassNotFoundException, SQLException {
        Connection con = Connector.connection();
        String SQL = "update orders set status = ? where order_id = ?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setBoolean(1, true);
        ps.setInt(2, id);
        ps.executeUpdate();
    }
}
