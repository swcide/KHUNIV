package com.kh.univ.ad_Register.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.ad_Register.model.vo.Absence;

@Repository("adDao")
public class ad_RegisterDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Absence absenceCheck(Absence ab)
		{
			return sqlSession.selectOne("registerMapper.absenceCheck",ab);
		}
}
