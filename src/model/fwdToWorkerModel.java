package model;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.workerBean;
import model.BookingBean;

import db.dbConnection;
import model.fwdWorkerBean;

public class fwdToWorkerModel {
	
	
	public void forwardToPlumber(fwdWorkerBean fwd) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="INSERT INTO `fwd_services` VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, fwd.getBookId());
			pst.setString(2, fwd.getWorkerId());
			pst.setString(3, fwd.getWorker());
			pst.setString(4, "s01");
			pst.setString(5, fwd.getService());
			pst.setString(6, fwd.getRequirement());
			pst.setString(7, fwd.getDate());
			pst.setString(8, fwd.getTime());
			pst.setString(9, fwd.getCity());
			pst.setString(10, fwd.getArea());
			pst.setString(11,fwd.getAddress());
			pst.setString(12,fwd.getUId());
			pst.setString(13,fwd.getCustomer());
			pst.setString(14,fwd.getCsContact());
			pst.setString(15,fwd.getWContact());
			int i=pst.executeUpdate();
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
	
	public fwdWorkerBean getDetails(fwdWorkerBean fwd,workerBean w,BookingBean b) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `booking` join `worker` where booking.booking_id=? AND worker.worker_id=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setInt(1, b.getId());
			pst.setString(2, w.getId());
			
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				System.out.println("Data Entered Usswssfully");
				fwd.setUId(rs.getString("booking.userid"));
				fwd.setBookId(rs.getString("booking.booking_id"));
				fwd.setWorkerId(rs.getString("worker.worker_id"));
				fwd.setWorker(rs.getString("worker.name"));
				fwd.setService(rs.getString("booking.service"));
				fwd.setRequirement(rs.getString("booking.requirement"));
				fwd.setDate(rs.getString("booking.date"));
				fwd.setTime(rs.getString("booking.time"));
				fwd.setCity(rs.getString("booking.city"));
				fwd.setArea(rs.getString("booking.area"));
				fwd.setAddress(rs.getString("booking.address"));
				fwd.setCustomer(rs.getString("booking.name"));
				fwd.setCsContact(rs.getString("booking.contact"));
				fwd.setWContact(rs.getString("worker.contact_no"));
			}else
			{
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return fwd;
	}
	public List<fwdWorkerBean> getData(String id) {
		List<fwdWorkerBean> list=new ArrayList<fwdWorkerBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `fwd_services` where worker_id=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				fwdWorkerBean fwd=new fwdWorkerBean();
				System.out.println("Data Entered Usswssfully");
				
				fwd.setBookId(rs.getString("booking_id"));
				fwd.setWorkerId(rs.getString("worker_id"));
				fwd.setWorker(rs.getString("worker_name"));
				fwd.setService(rs.getString("service"));
				fwd.setRequirement(rs.getString("requirement"));
				fwd.setDate(rs.getString("date"));
				fwd.setTime(rs.getString("time"));
				fwd.setCity(rs.getString("city"));				
				fwd.setArea(rs.getString("area"));
				fwd.setAddress(rs.getString("address"));
				fwd.setCustomer(rs.getString("customer"));
				fwd.setCsContact(rs.getString("customer_contact"));
				fwd.setWContact(rs.getString("worker_contact"));
				list.add(fwd);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}
	public List<fwdWorkerBean> getDetail(String id) {
		List<fwdWorkerBean> list=new ArrayList<fwdWorkerBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `fwd_services` where userid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				fwdWorkerBean fwd=new fwdWorkerBean();
				System.out.println("Data Entered Usswssfully");
				
				fwd.setBookId(rs.getString("booking_id"));
				fwd.setWorkerId(rs.getString("worker_id"));
				fwd.setWorker(rs.getString("worker_name"));
				fwd.setService(rs.getString("service"));
				fwd.setRequirement(rs.getString("requirement"));
				fwd.setDate(rs.getString("date"));
				fwd.setTime(rs.getString("time"));
				fwd.setCity(rs.getString("city"));				
				fwd.setArea(rs.getString("area"));
				fwd.setAddress(rs.getString("address"));
				fwd.setCustomer(rs.getString("customer"));
				fwd.setCsContact(rs.getString("customer_contact"));
				fwd.setWContact(rs.getString("worker_contact"));
				list.add(fwd);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}
	public List<fwdWorkerBean> getallData(String id) {
		List<fwdWorkerBean> list=new ArrayList<fwdWorkerBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `fwd_services` where serviceid=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				fwdWorkerBean fwd=new fwdWorkerBean();
				System.out.println("Data Entered Usswssfully");
				fwd.setBookId(rs.getString("booking_id"));
				fwd.setUId(rs.getString("userid"));
				fwd.setWorkerId(rs.getString("worker_id"));
				fwd.setWorker(rs.getString("worker_name"));
				fwd.setService(rs.getString("service"));
				fwd.setRequirement(rs.getString("requirement"));
				fwd.setDate(rs.getString("date"));
				fwd.setTime(rs.getString("time"));
				fwd.setCity(rs.getString("city"));				
				fwd.setArea(rs.getString("area"));
				fwd.setAddress(rs.getString("address"));
				fwd.setCustomer(rs.getString("customer"));
				fwd.setCsContact(rs.getString("customer_contact"));
				fwd.setWContact(rs.getString("worker_contact"));
				list.add(fwd);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}

	public void deleteData(fwdWorkerBean ff) {
		
		
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="DELETE FROM `eservicecall`.`fwd_services` WHERE booking_id=?;";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, ff.getBookId());
			
			
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
