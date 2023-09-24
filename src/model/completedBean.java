package model;

public class completedBean {
	int service_charges,extra_charges;
	float wages;
	String wages_paid;
	String book_id,worker_id,user_id,service_id,customer,service,requirement,worker,worker_contact,date,time,area,address,city,customer_contact,paid;
	int total_charges;
	public String getBookId() {
		return book_id;
	}

	public void setBookId(String id) {
		this.book_id = id;
	}
	public String getWorkerId() {
		return worker_id;
	}

	public void setWorkerId(String id) {
		this.worker_id = id;
	}
	public String getUserId() {
		return user_id;
	}

	public void setUserId(String id) {
		this.user_id = id;
	}
	public String getServiceId() {
		return service_id;
	}

	public void setServiceId(String id) {
		this.service_id = id;
	}
	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String name) {
		this.customer = name;
	}
	public String getService() {
		return service;
	}
	public void setService(String name) {
		this.service = name;
	}
	
	public String getRequirement() {
		return requirement;
	}

	public void setRequirement(String req) {
		this.requirement = req;
	}
	public String getWorker() {
		return worker;
	}
	public void setWorker(String name) {
		this.worker = name;
	}
	public String getWorkerContact() {
		return worker_contact;
	}
	public void setWorkerContact(String phone) {
		this.worker_contact = phone;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String dt) {
		this.date = dt;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String add) {
		this.address = add;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCustomerContact() {
		return customer_contact;
	}
	public void setCustomerContact(String phone) {
		this.customer_contact = phone;
	}
	public int getServiceCharges() {
		return service_charges;
	}
	public void setServiceCharges(int charge) {
		this.service_charges = charge;
	}
	public int getExtraCharges() {
		return extra_charges;
	}
	public void setExtraCharges(String charge) {
		this.extra_charges = Integer.parseInt(charge);
	}
	public String getPaid() {
		return paid;
	}
	public void setPaid(String paid) {
		this.paid = paid;
	}
	public int getTotalCharges() {
		return total_charges;
	}

	public void setTotalCharges(int int1) {
		this.total_charges=int1;
		
	}
	public float getWages() {
		return wages;
	}

	public void setWages(float f) {
		this.wages=f;
		
	}
	public String getWagesPaid() {
		return wages_paid;
	}

	public void setWagesPaid(String s) {
		this.wages_paid=s;
		
	}

}
