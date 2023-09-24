package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.dbConnection;

public class completedModel {
	
	public void enterData(completedBean cp) {
		// TODO Auto-generated method stub
		try{
			
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="INSERT INTO `completed`(`booking_id`,`worker_id`,`user_id`,`service_id`,`customer`,`service`,`requirement`,`worker`,`worker_contact`,`date`,`time`,`area`,`address`,`city`,`customer_contact`,`service_charges`,`extra_charges`,`paid`,'wages_paid')VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, cp.getBookId());
			pst.setString(2, cp.getWorkerId());
			pst.setString(3, cp.getUserId());
			pst.setString(4, cp.getServiceId());
			pst.setString(5, cp.getCustomer());
			pst.setString(6, cp.getService());
			pst.setString(7, cp.getRequirement());
			pst.setString(8, cp.getWorker());
			pst.setString(9, cp.getWorkerContact());
			pst.setString(10, cp.getDate());
			pst.setString(11, cp.getTime());
			pst.setString(12, cp.getArea());
			pst.setString(13, cp.getAddress());
			pst.setString(14, cp.getCity());
			pst.setString(15, cp.getCustomerContact());
			pst.setInt(16, cp.getServiceCharges());
			pst.setInt(17, cp.getExtraCharges());
			pst.setString(18, cp.getPaid());
			pst.setString(19, "no");
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
	
	public completedBean getDetails(fwdWorkerBean fwd,serviceBean sc, String extra_charges) {
		
		completedBean cp=new completedBean();
			
		try{
			
			
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `fwd_services` join `services` where fwd_services.booking_id=? AND services.sub_s_name=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, fwd.getBookId());
			pst.setString(2, sc.getSe_name());
			
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				
				cp.setBookId(rs.getString("fwd_services.booking_id"));
				cp.setWorkerId(rs.getString("fwd_services.worker_id"));
				cp.setUserId(rs.getString("fwd_services.userid"));
				cp.setServiceId(rs.getString("fwd_services.serviceid"));
				cp.setCustomer(rs.getString("fwd_services.customer"));
				cp.setService(rs.getString("fwd_services.service"));
				cp.setRequirement(rs.getString("fwd_services.requirement"));
				cp.setWorker(rs.getString("fwd_services.worker_name"));
				cp.setWorkerContact(rs.getString("fwd_services.worker_contact"));
				cp.setDate(rs.getString("fwd_services.date"));
				cp.setTime(rs.getString("fwd_services.time"));
				cp.setArea(rs.getString("fwd_services.area"));
				cp.setAddress(rs.getString("fwd_services.address"));
				cp.setCity(rs.getString("fwd_services.city"));
				cp.setCustomerContact(rs.getString("fwd_services.customer_contact"));
				cp.setServiceCharges(rs.getInt("services.price"));
				
				cp.setExtraCharges(extra_charges);
				
				cp.setPaid("no");
				
				
			}else
			{
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		
		return cp;
	}
	
	public List<completedBean> getallData(String id) {
		List<completedBean> list=new ArrayList<completedBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `completed` where service_id=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				completedBean cp=new completedBean();
				cp.setBookId(rs.getString("booking_id"));
				cp.setWorkerId(rs.getString("worker_id"));
				cp.setUserId(rs.getString("user_id"));
				cp.setServiceId(rs.getString("service_id"));
				cp.setCustomer(rs.getString("customer"));
				cp.setService(rs.getString("service"));
				cp.setRequirement(rs.getString("requirement"));
				cp.setWorker(rs.getString("worker"));
				cp.setWorkerContact(rs.getString("worker_contact"));
				cp.setDate(rs.getString("date"));
				cp.setTime(rs.getString("time"));
				cp.setArea(rs.getString("area"));
				cp.setAddress(rs.getString("address"));
				cp.setCity(rs.getString("city"));
				cp.setCustomerContact(rs.getString("customer_contact"));
				cp.setServiceCharges(rs.getInt("service_charges"));
				cp.setExtraCharges(rs.getString("extra_charges"));
				cp.setPaid(rs.getString("paid"));
				cp.setTotalCharges(rs.getInt("total_charges"));
				
				list.add(cp);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}
	public List<completedBean> getDetail(String id) {
		List<completedBean> list=new ArrayList<completedBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `completed` where user_id=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				completedBean cp=new completedBean();
				cp.setBookId(rs.getString("booking_id"));
				cp.setWorkerId(rs.getString("worker_id"));
				cp.setUserId(rs.getString("user_id"));
				cp.setServiceId(rs.getString("service_id"));
				cp.setCustomer(rs.getString("customer"));
				cp.setService(rs.getString("service"));
				cp.setRequirement(rs.getString("requirement"));
				cp.setWorker(rs.getString("worker"));
				cp.setWorkerContact(rs.getString("worker_contact"));
				cp.setDate(rs.getString("date"));
				cp.setTime(rs.getString("time"));
				cp.setArea(rs.getString("area"));
				cp.setAddress(rs.getString("address"));
				cp.setCity(rs.getString("city"));
				cp.setCustomerContact(rs.getString("customer_contact"));
				cp.setServiceCharges(rs.getInt("service_charges"));
				cp.setExtraCharges(rs.getString("extra_charges"));
				cp.setPaid(rs.getString("paid"));
				cp.setTotalCharges(rs.getInt("total_charges"));
				list.add(cp);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}
	public List<completedBean> payWages() {
		List<completedBean> list=new ArrayList<completedBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `completed` where wages_paid=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, "no");
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				completedBean cp=new completedBean();
				cp.setBookId(rs.getString("booking_id"));
				cp.setWorkerId(rs.getString("worker_id"));
				cp.setUserId(rs.getString("user_id"));
				cp.setServiceId(rs.getString("service_id"));
				cp.setCustomer(rs.getString("customer"));
				cp.setService(rs.getString("service"));
				cp.setRequirement(rs.getString("requirement"));
				cp.setWorker(rs.getString("worker"));
				cp.setWorkerContact(rs.getString("worker_contact"));
				cp.setDate(rs.getString("date"));
				cp.setTime(rs.getString("time"));
				cp.setArea(rs.getString("area"));
				cp.setAddress(rs.getString("address"));
				cp.setCity(rs.getString("city"));
				cp.setCustomerContact(rs.getString("customer_contact"));
				cp.setServiceCharges(rs.getInt("service_charges"));
				cp.setExtraCharges(rs.getString("extra_charges"));
				cp.setPaid(rs.getString("paid"));
				cp.setTotalCharges(rs.getInt("total_charges"));
				cp.setWages(rs.getFloat("wages"));
				cp.setWagesPaid(rs.getString("wages_paid"));
				list.add(cp);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}
	
	
	public List<completedBean> getDataWorker(String id) {
		List<completedBean> list=new ArrayList<completedBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `completed` where worker_id=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				completedBean cp=new completedBean();
				cp.setBookId(rs.getString("booking_id"));
				cp.setWorkerId(rs.getString("worker_id"));
				cp.setUserId(rs.getString("user_id"));
				cp.setServiceId(rs.getString("service_id"));
				cp.setCustomer(rs.getString("customer"));
				cp.setService(rs.getString("service"));
				cp.setRequirement(rs.getString("requirement"));
				cp.setWorker(rs.getString("worker"));
				cp.setWorkerContact(rs.getString("worker_contact"));
				cp.setDate(rs.getString("date"));
				cp.setTime(rs.getString("time"));
				cp.setArea(rs.getString("area"));
				cp.setAddress(rs.getString("address"));
				cp.setCity(rs.getString("city"));
				cp.setCustomerContact(rs.getString("customer_contact"));
				cp.setServiceCharges(rs.getInt("service_charges"));
				cp.setExtraCharges(rs.getString("extra_charges"));
				cp.setPaid(rs.getString("paid"));
				cp.setTotalCharges(rs.getInt("total_charges"));
				list.add(cp);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}
	
	public List<completedBean> getWages(String id) {
		List<completedBean> list=new ArrayList<completedBean>();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="SELECT * FROM `completed` where worker_id=? ;";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{	
				completedBean cp=new completedBean();
				cp.setBookId(rs.getString("booking_id"));
				cp.setWorkerId(rs.getString("worker_id"));
				cp.setUserId(rs.getString("user_id"));
				cp.setServiceId(rs.getString("service_id"));
				cp.setCustomer(rs.getString("customer"));
				cp.setService(rs.getString("service"));
				cp.setRequirement(rs.getString("requirement"));
				cp.setWorker(rs.getString("worker"));
				cp.setWorkerContact(rs.getString("worker_contact"));
				cp.setDate(rs.getString("date"));
				cp.setTime(rs.getString("time"));
				cp.setArea(rs.getString("area"));
				cp.setAddress(rs.getString("address"));
				cp.setCity(rs.getString("city"));
				cp.setCustomerContact(rs.getString("customer_contact"));
				cp.setServiceCharges(rs.getInt("service_charges"));
				cp.setExtraCharges(rs.getString("extra_charges"));
				cp.setPaid(rs.getString("paid"));
				cp.setTotalCharges(rs.getInt("total_charges"));
				cp.setWages(rs.getFloat("wages"));
				cp.setWagesPaid(rs.getString("wages_paid"));
				list.add(cp);
			}
			
		}catch(Exception e)
		{

			System.out.println(e);
			
		}
		return list;
	}

}
