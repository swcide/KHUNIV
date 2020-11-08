package com.kh.univ.member.model.vo;

public class Admin
	{
	private String aId; 
	private String aPwd;
	private String aName;
	private int type;
	
	
	
	


	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}






	public Admin(String aId, String aPwd, String aName, int type) {
		super();
		this.aId = aId;
		this.aPwd = aPwd;
		this.aName = aName;
		this.type = type;
	}






	public String getaId() {
		return aId;
	}






	public void setaId(String aId) {
		this.aId = aId;
	}






	public String getaPwd() {
		return aPwd;
	}






	public void setaPwd(String aPwd) {
		this.aPwd = aPwd;
	}






	public String getaName() {
		return aName;
	}






	public void setaName(String aName) {
		this.aName = aName;
	}






	public int getType() {
		return type;
	}






	public void setType(int type) {
		this.type = type;
	}






	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", aPwd=" + aPwd + ", aName=" + aName + ", type=" + type + "]";
	}
	

	

	
	
	}
