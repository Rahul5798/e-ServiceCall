package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.dbConnection;


public class service {
	
	public List<serviceBean> getServices(String service){
		List<serviceBean> list=new ArrayList<serviceBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from services where service_name=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, service);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				
				serviceBean se=new serviceBean();
				
				se.setId(rs.getString("sub_id"));
				se.setSe_name(rs.getString("sub_s_name"));
				se.setPrice(rs.getInt("price"));
				list.add(se);
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

}
