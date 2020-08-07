package model;

public class Appoint {
	
		private String AppId;
		private String type;
		private String date;
		private String time;
		private String pid;
		
		public String getPid() {
			return pid;
		}
		public void setPid(String pid) {
			this.pid = pid;
		}
		
		public String getAppId() {
			return AppId;
		}
		public void setAppId(String appId) {
			AppId = appId;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
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
		

}
