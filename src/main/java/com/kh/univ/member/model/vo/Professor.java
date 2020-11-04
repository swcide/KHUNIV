package com.kh.univ.member.model.vo;

import java.sql.Date;

public class Professor
	{
		private String pNo ;
		private String pName;
		private String pSsn;
		private String pAddr;
		private String deptNo;
		private String pPosition;
		private String pPwd;
		private String pEmail;
		private String pLab;
		
		
		public Professor() {}


		public Professor(String pNo, String pName, String pSsn, String pAddr, String deptNo, String pPosition, String pPwd, String pEmail, String pLab) {
			super();
			this.pNo = pNo;
			this.pName = pName;
			this.pSsn = pSsn;
			this.pAddr = pAddr;
			this.deptNo = deptNo;
			this.pPosition = pPosition;
			this.pPwd = pPwd;
			this.pEmail = pEmail;
			this.pLab = pLab;
		}


		public String getpNo()
			{
				return pNo;
			}


		public void setpNo(String pNo)
			{
				this.pNo = pNo;
			}


		public String getpName()
			{
				return pName;
			}


		public void setpName(String pName)
			{
				this.pName = pName;
			}


		public String getpSsn()
			{
				return pSsn;
			}


		public void setpSsn(String pSsn)
			{
				this.pSsn = pSsn;
			}


		public String getpAddr()
			{
				return pAddr;
			}


		public void setpAddr(String pAddr)
			{
				this.pAddr = pAddr;
			}


		public String getDeptNo()
			{
				return deptNo;
			}


		public void setDeptNo(String deptNo)
			{
				this.deptNo = deptNo;
			}


		public String getpPosition()
			{
				return pPosition;
			}


		public void setpPosition(String pPosition)
			{
				this.pPosition = pPosition;
			}


		public String getpPwd()
			{
				return pPwd;
			}


		public void setpPwd(String pPwd)
			{
				this.pPwd = pPwd;
			}


		public String getpEmail()
			{
				return pEmail;
			}


		public void setpEmail(String pEmail)
			{
				this.pEmail = pEmail;
			}


		public String getpLab()
			{
				return pLab;
			}


		public void setpLab(String pLab)
			{
				this.pLab = pLab;
			}


		@Override
		public String toString()
			{
				return "Professor [pNo=" + pNo + ", pName=" + pName + ", pSsn=" + pSsn + ", pAddr=" + pAddr + ", deptNo=" + deptNo + ", pPosition=" + pPosition + ", pPwd=" + pPwd + ", pEmail="
						+ pEmail + ", pLab=" + pLab + "]";
			}
		
		
		
		
	}
