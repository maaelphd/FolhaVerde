package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import factory.ConnectionFactory;
import to.OrderTO;

public class OrderDAO {
	
	public int insertOrder(OrderTO OrderTO) throws IOException {	
		
		String sqlInsert = "INSERT INTO folhaverde.tb_order (id_order, user_name, user_last_name, user_cep_code, user_adress, card_number, cc_selected_card_flag_id, cc_slected_installment,"
				+ " holder_card_name, cc_selected_month, cc_selected_year, security_code_card, holder_card_cpf, total_order) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert, Statement.RETURN_GENERATED_KEYS);) {
			stm.setInt(1, 0);
			stm.setString(2, OrderTO.getUserName());
			stm.setString(3, OrderTO.getUserLastName());
			stm.setString(4, OrderTO.getUserCEPCode());
			stm.setString(5, OrderTO.getUserAdress());
			stm.setString(6, OrderTO.getCardNumber());
			stm.setInt(7, OrderTO.getCcSelectedCardFlagId());
			stm.setInt(8, OrderTO.getCcSelectedInstallmentId());
			stm.setString(9, OrderTO.getHolderCardName());
			stm.setInt(10, OrderTO.getCcSelectedMonth());
			stm.setInt(11, OrderTO.getCcSelectedYear());
			stm.setInt(12, OrderTO.getSecurityCodeCar());
			stm.setString(13, OrderTO.getHolderCardCpf());
			stm.setDouble(14, OrderTO.getTotalOrder());
			stm.execute();
			
			String sqlSelect = "SELECT LAST_INSERT_ID()";
			try(PreparedStatement stm1 = conn.prepareStatement(sqlSelect);
					ResultSet rs = stm1.executeQuery();){
					if(rs.next()){
						OrderTO.setOrderId(rs.getInt(1));
					}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}

		return OrderTO.getOrderId();
	}

}
