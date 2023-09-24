package model;

public class fwdWorkerBean {
	
	String booking_id, uid;
	String worker_id,worker_name,service,requirement,date,time,city,area,address,customer,customer_contact,worker_contact;
	public String getBookId() {
		return booking_id;
	}

	public void setBookId(String id) {
		this.booking_id = id;
	}
	public String getUId() {
		return uid;
	}

	public void setUId(String id) {
		this.uid = id;
	}
	public String getWorkerId() {
		return worker_id;
	}

	public void setWorkerId(String id) {
		this.worker_id = id;
	}
	public String getWorker() {
		return worker_name;
	}

	public void setWorker(String name) {
		this.worker_name = name;
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
	public String getDate() {
		return date;
	}

	public void setDate(String dt) {
		this.date = dt;
	}
	public String getTime() {
		return time;
	}

	public void setTime(String t) {
		this.time = t;
	}
	public String getCity() {
		return city;
	}

	public void setCity(String cty) {
		this.city = cty;
	}
	public String getArea() {
		return area;
	}

	public void setArea(String ar) {
		this.area = ar;
	}
	public String getAddress() {
		return address;
	}

	public void setAddress(String add) {
		this.address = add;
	}
	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String ct) {
		this.customer = ct;
	}
	public String getCsContact() {
		return customer_contact;
	}

	public void setCsContact(String phon) {
		this.customer_contact = phon;
	}
	public String getWContact() {
		return worker_contact;
	}

	public void setWContact(String phon) {
		this.worker_contact = phon;
	}
}
