package model;

import java.io.Serializable;

public class register_model implements Serializable {
	
    private static final long serialVersionUID = 1 ;
    private String username;
    private String password;
    private String comname;
    private String address;
    private String email;
    private String mobnumber;
    
    
    
    public String getusername() {
        return username;
    }
    public void setusername(String username) {
        this.username = username;
    }
    public String getpassword() {
        return password;
    }
    public void setpassword(String password) {
        this.password = password;
    }
    public String getcomname() {
        return comname;
    }
    public void setcomname(String comname) {
        this.comname = comname;
    }
    public String getaddress() {
        return address;
    }
    public void setaddress(String address) {
        this.address = address;
    }
    public String getemail() {
        return email;
    }
    public void setemail(String email) {
        this.email = email;
    }
    public String getmobnumber() {
        return mobnumber;
    }
    public void setmobnumber(String mobnumber) {
        this.mobnumber = mobnumber;
    }

}