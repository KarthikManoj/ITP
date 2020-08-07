package model;

public class Employee {
	
		

		private String EID;
		private String firstname;
		private String address;
		private String profession;
		private String email;
		private String doj;
		private String gender;
		private String contactno;
		private String nic;
		private String salary;
	
		
	public String getSalary() {
			return salary;
		}
		public void setSalary(String salary) {
			this.salary = salary;
		}
	public void setEID(String EID)
	{
		this.EID=EID;
	}
	public String getEID()
	{
		return this.EID;
	}


	public void setaddress(String address) {
		// TODO Auto-generated method stub
		this.address=address;
	}
	public String getaddress()
	{
		return this.address;
	}
	public void setprofession(String profession) {
		// TODO Auto-generated method stub
		this.profession=profession;
	}

	public String getprofession()
	{
		return profession; 
	}
	public void setemail(String email) {
		// TODO Auto-generated method stub
		this.email=email;
	}

	public String  getemail()
	{
		return this.email;
	}
	public void setfirstname(String firstname) {
		// TODO Auto-generated method stub
		this.firstname=firstname;
	}
	public String getfirstname()
	{
		return this.firstname;
	}


	public void setdoj(String doj)
	{
		this.doj=doj;
	}
	public String getdoj()
	{
		return this.doj=doj;
	}

		public void setgender(String gender)
		{
			this.gender=gender;
			
		}
		public String getgender()
		{
			return this.gender;
		}
	
public void setcontactno(String contactno)
{
	this.contactno=contactno;
}
public String getcontactno()
{
	return this.contactno=contactno;
}

public void setnic(String nic)
{
	this.nic=nic;
}
public String getnic()
{
	return this.nic;
}

}




