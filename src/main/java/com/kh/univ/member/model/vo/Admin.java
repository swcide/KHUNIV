package com.kh.univ.member.model.vo;

public class Admin
	{
	private String aId; 
	private String aPwd;
	private String aName;
	
	
	
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Admin(String aId, String aPwd, String aName) {
		super();
		this.aId = aId;
		this.aPwd = aPwd;
		this.aName = aName;
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

	public void setAName(String aName) {
		this.aName = aName;
	}

	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", aPwd=" + aPwd + ", aName=" + aName + "]";
	}

	
	
	}
