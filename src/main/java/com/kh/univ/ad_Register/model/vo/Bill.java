package com.kh.univ.ad_Register.model.vo;

public class Bill {

	private String cName;
	private String cType;
	private String pName;
	private String credit;
	
	public Bill() {
	}

	public Bill(String cName, String category, String pName, String credit) {
		super();
		this.cName = cName;
		this.cType = category;
		this.pName = pName;
		this.credit = credit;
	}

	public String getcName()
		{
			return cName;
		}

	public void setcName(String cName)
		{
			this.cName = cName;
		}

	public String getCategory()
		{
			return cType;
		}

	public void setCategory(String category)
		{
			this.cType = category;
		}

	public String getpName()
		{
			return pName;
		}

	public void setpName(String pName)
		{
			this.pName = pName;
		}

	public String getCredit()
		{
			return credit;
		}

	public void setCredit(String credit)
		{
			this.credit = credit;
		}

	@Override
	public String toString()
		{
			return "Bill [cName=" + cName + ", cType=" + cType + ", pName=" + pName + ", credit=" + credit + "]";
		}
	
	
	
}
