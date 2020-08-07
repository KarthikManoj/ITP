package model;

import java.sql.Blob;

public class Patient {

	
	String mobileNo ;
	String userID;
	String firstName;
	String lastName;
	String email;
	String address;
	String bloodGroup;
	String gender;
	String age;
	String previous;
	String current;
	String prescription;
	String uname;
	String pass;
	String previousMD;
	Blob image;
	
	
	
	
	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	public String getPreviousMD() {
		return previousMD;
	}

	public void setPreviousMD(String previousMD) {
		this.previousMD = previousMD;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
        
        public void setUserID(String userID) {
		this.userID = userID;
		
	}
    
        public String getUserID() {
		return userID ;
	}
        
        public void setMobileNumber(String mobileNo) {
		this.mobileNo = mobileNo;
		
	}
    
        public String getMobileNumber() {
		return mobileNo ;
	}
        
       
        public String getfirstName() {
		return firstName;
	}
	
	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}
	
	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}

	public String getbloodGroup() {
		return bloodGroup;
	}

	public void setbloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getPrevious() {
		return previous;
	}

	public void setPrevious(String previous) {
		this.previous = previous;
	}

	public String getCurrent() {
		return current;
	}

	public void setCurrent(String current) {
		this.current = current;
	}

	public String getPrescription() {
		return prescription;
	}

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	
	
	
}

