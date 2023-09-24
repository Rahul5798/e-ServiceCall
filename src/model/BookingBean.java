package model;

public class BookingBean {

	String uid,ser,req,date,time,name,email,add,phon,city,area;
	int id;
	public int getId() {
		return id;
	}

	public void setId(String id) {
		this.id = Integer.valueOf(id);
	}
	public String getUId() {
		return uid;
	}

	public void setUId(String ser) {
		this.uid = ser;
	}
	public String getSer() {
		return ser;
	}

	public void setSer(String ser) {
		this.ser = ser;
	}

	public String getReq() {
		return req;
	}

	public void setReq(String req) {
		this.req = req;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public void setArea(String area) {
		this.area = area;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public String getPhon() {
		return phon;
	}

	public void setPhon(String phon) {
		this.phon = phon;
	}
}
