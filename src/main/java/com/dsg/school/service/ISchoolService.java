package com.dsg.school.service;

import java.util.List;

import com.dsg.school.model.SchoolPo;

public interface ISchoolService {

	public List<SchoolPo> selectListProp(SchoolPo schoolPo);
	public List<SchoolPo> selectList();
	public int addSchool(SchoolPo schoolPo);
	public Object deleteSchoolById(String schoolId);
	public SchoolPo selectSchoolById(String schoolId);
	public int updateSchool(SchoolPo schoolPo);
	public List<SchoolPo> selectListPage(String schoolName);
	
}
