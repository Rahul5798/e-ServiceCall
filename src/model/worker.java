package model;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.dbConnection;

public class worker {
	
	public List<workerBean> getWorker(String service,String area){
		List<workerBean> list=new ArrayList<workerBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT worker_id,name,city,area FROM worker where area=? AND profession=?;";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, area);
			pst.setString(2, service);
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				
				workerBean w=new workerBean();
				
				w.setId(rs.getString("worker_id"));
				w.setName(rs.getString("name"));
				w.setCity(rs.getString("city"));
				w.setArea(rs.getString("area"));
				
				list.add(w);
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public void getDetails(String id) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			workerBean w=new workerBean();
			String sql="SELECT * FROM worker where worker_id=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				System.out.println("Data Entered Usswssfully");
				
				w.setId(rs.getString("worker_id"));
				w.setName(rs.getString("name"));
				
			}else
			{
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{

			System.out.println("Fail");
			
		}
	}

	public void addDetail(workerBean bb) {
		// TODO Auto-generated method stub
		try{
			
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="INSERT INTO `eservicecall`.`worker`(`worker_id`,`name`,`contact_no`,`profession`,`city`,`address`,`area`,`age`)VALUES(?,?,?,?,?,?,?,?);";
					
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, bb.getId());
			pst.setString(2, bb.getName());
			pst.setString(3, bb.getContact());
			pst.setString(4, bb.getProfession());
			pst.setString(5, bb.getCity());
			pst.setString(6, bb.getAddress());
			pst.setString(7, bb.getArea());
			
			pst.setString(8, bb.getAge());
			
			int i=pst.executeUpdate();
			System.out.print(i);
			if(i>0)
			{
				System.out.println("Data Entered Usswssfully");
				
				
			}else
			{
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
	}
	
	public void removeDetail(workerBean bb) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="DELETE FROM `eservicecall`.`worker` WHERE worker_id=?;";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, bb.getId());
			
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Data deleted Usswssfully");
			}else
			{
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{

			System.out.println("Fail");
			
		}
	}

	

}
