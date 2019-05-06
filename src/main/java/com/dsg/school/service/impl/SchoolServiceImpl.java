package com.dsg.school.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.school.dao.SchoolPoMapper;
import com.dsg.school.model.SchoolPo;
import com.dsg.school.service.ISchoolService;

@Service
@Transactional
public class SchoolServiceImpl implements ISchoolService{

	@Resource
	private SchoolPoMapper schoolPOMapper;
	
	/*
	 * @Override public List<SchoolPo> selectList(SchoolPo schoolPo) { return
	 * schoolPOMapper.selectList(schoolPo); }
	 */

	@Override
	public List<SchoolPo> selectList() {
		return schoolPOMapper.selectList();
	}

	@Override
	public List<SchoolPo> selectListProp(SchoolPo schoolPo) {
		return schoolPOMapper.selectListProp(schoolPo);
	}

	@Override
	public int addSchool(SchoolPo schoolPo) {
		schoolPo.setSchoolId(java.util.UUID.randomUUID().toString().replaceAll("-", ""));
		return schoolPOMapper.insert(schoolPo);
		
	}

	@Override
	public Object deleteSchoolById(String schoolId) {
		return schoolPOMapper.deleteByPrimaryKey(schoolId);
	}

	@Override
	public SchoolPo selectSchoolById(String schoolId) {
		return schoolPOMapper.selectByPrimaryKey(schoolId);
	}

	@Override
	public int updateSchool(SchoolPo schoolPo) {
		return schoolPOMapper.updateByPrimaryKey(schoolPo);
	}

	@Override
	public List<SchoolPo> selectListPage(String schoolName) {
		return schoolPOMapper.selectListPage(schoolName);
	}


}
