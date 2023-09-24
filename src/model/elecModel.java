package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import com.bean.AutoInsBean;
import model.elecBean;
import db.dbConnection;

public class elecModel {

	public List<elecBean> getData(String s){
		List<elecBean> list=new ArrayList<elecBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="select * from booking where serviceid=?;";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, s);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				
				elecBean se=new elecBean();
				se.setId(rs.getString("userid"));
				se.setBookId(rs.getString("booking_id"));
				se.setSe_name(rs.getString("service"));
				se.setDate(rs.getString("date"));
				se.setTime(rs.getString("time"));
				se.setCity(rs.getString("city"));
				se.setArea(rs.getString("area"));
				se.setAddress(rs.getString("address"));
				list.add(se);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}

	public void deleteElec(int id) {
		// TODO Auto-generated method stub
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="delete from services where se_sub_id='"+id+"'";
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			System.out.println("Deleted");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	/*public void updatePlumb(AutoInsBean sp) {
		// TODO Auto-generated method stub
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="update services set se_sub_name=? where se_sub_id=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, sp.getName());
			pst.setString(2, sp.getId());
			
			int i=pst.executeUpdate();
			
			if(i>0)
			{
				System.out.println("Success");
			}
			else
			{
				System.out.println("Failed");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}*/	
}

