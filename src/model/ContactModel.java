package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Contact;
import db.dbConnection;

public class ContactModel {
	
	public void saveDetail(Contact c)
	{
		
		try {
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into contact(name,email,msg)values(?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setString(2, c.getEmail());
			pst.setString(3, c.getMsg());
			
			int i=pst.executeUpdate();
			if (i>0) 
			{
				System.out.println("Data Entered Usswssfully");
			} 
			else 
			{
				System.out.println("Fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
