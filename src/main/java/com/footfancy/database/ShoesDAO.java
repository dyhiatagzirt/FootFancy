package com.footfancy.database;

import com.footfancy.beans.Shoes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShoesDAO {

	public static List<Shoes> getAllShoes() throws SQLException, ClassNotFoundException {
		List<Shoes> shoesList = new ArrayList<>();
		String sql = "SELECT * FROM shoes";
		try (Connection conn = DBConnect.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery()) {

			while (rs.next()) {
				shoesList.add(new Shoes(rs.getString("brand"), rs.getString("name"), rs.getString("id"),
						rs.getInt("sizeMin"), rs.getInt("sizeMax"), rs.getDouble("price"), rs.getString("imagePath")));
			}
		}
		return shoesList;
	}

	public static Shoes getShoeById(String shoeId) throws SQLException, ClassNotFoundException {
		Shoes shoe = null;
		String sql = "SELECT * FROM shoes WHERE id = ?";
		try (Connection conn = DBConnect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, shoeId);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					shoe = new Shoes(rs.getString("brand"), rs.getString("name"), rs.getString("id"),
							rs.getInt("sizeMin"), rs.getInt("sizeMax"), rs.getDouble("price"),
							rs.getString("imagePath"));
				}
			}
		}
		return shoe;
	}
}
