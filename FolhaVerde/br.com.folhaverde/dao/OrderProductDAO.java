package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import factory.ConnectionFactory;
import to.OrderProductTO;

public class OrderProductDAO {
	
	public int insertOrderProduct(OrderProductTO orderProductTO) throws IOException {	
		
		String sqlInsert = "INSERT INTO folhaverde.tb_order_products (id_order_products, id_product, id_order, product_price)"
				+ " VALUES (?, ?, ?, ?);";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert, Statement.RETURN_GENERATED_KEYS);) {
			stm.setInt(1, 0);
			stm.setInt(2, orderProductTO.getProductId());
			stm.setInt(3, orderProductTO.getOrderId());
			stm.setDouble(4, orderProductTO.getProductPrice());			
			stm.execute();
			
			String sqlSelect = "SELECT LAST_INSERT_ID()";
			try(PreparedStatement stm1 = conn.prepareStatement(sqlSelect);
					ResultSet rs = stm1.executeQuery();){
					if(rs.next()){
						orderProductTO.setOrderProdructId(rs.getInt(1));
					}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}

		return orderProductTO.getOrderProdructId();
	}

}
