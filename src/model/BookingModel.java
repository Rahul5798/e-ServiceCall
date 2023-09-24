package model;

import db.dbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.BookingBean;


public class BookingModel {

	public void addDetail(BookingBean bb,String id) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="INSERT INTO `eservicecall`.`booking`(`serviceid`,`service`,`requirement`,`date`,`time`,`name`,`email`,`city`,`area`,`address`,`contact`,`userid`)VALUES(?,?,?,?,?,?,?,?,?,?,?,?);";
					
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			pst.setString(2, bb.getSer());
			pst.setString(3, bb.getReq());
			pst.setString(4, bb.getDate());
			pst.setString(5, bb.getTime());
			pst.setString(6, bb.getName());
			pst.setString(7, bb.getEmail());
			pst.setString(8, bb.getCity());
			pst.setString(9, bb.getArea());
			pst.setString(10, bb.getAdd());
			pst.setString(11, bb.getPhon());
			pst.setString(12, bb.getUId());
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
	
	public void removeDetail(BookingBean bb) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="DELETE FROM `eservicecall`.`booking` WHERE booking_id=?;";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, bb.getId());
			
			
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

	public BookingBean fetchDetail() {
		// TODO Auto-generated method stub
		BookingBean bb=new BookingBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from booking";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				bb.setId(rs.getString("booking_id"));
				bb.setUId(rs.getString("userid"));
				bb.setSer(rs.getString("service"));
				bb.setReq(rs.getString("requirement"));
				bb.setDate(rs.getString("date"));
				bb.setTime(rs.getString("time"));
				bb.setAdd(rs.getString("address"));
				bb.setArea(rs.getString("area"));
				bb.setCity(rs.getString("city"));
				bb.setName(rs.getString("name"));
				bb.setEmail(rs.getString("email"));
				bb.setPhon(rs.getString("contact"));
				
			}	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return bb;

	}
	
	public List<BookingBean> getDetail(String id) {
		List<BookingBean> list=new ArrayList<BookingBean>();
		
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from booking where userid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				BookingBean bb=new BookingBean();
				bb.setId(rs.getString("booking_id"));
				bb.setUId(rs.getString("userid"));
				bb.setSer(rs.getString("service"));
				bb.setReq(rs.getString("requirement"));
				bb.setDate(rs.getString("date"));
				bb.setTime(rs.getString("time"));
				bb.setAdd(rs.getString("address"));
				bb.setArea(rs.getString("area"));
				bb.setCity(rs.getString("city"));
				bb.setName(rs.getString("name"));
				bb.setEmail(rs.getString("email"));
				bb.setPhon(rs.getString("contact"));
				list.add(bb);
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;

	}
}
