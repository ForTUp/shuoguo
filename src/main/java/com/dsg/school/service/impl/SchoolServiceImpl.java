package com.dsg.school.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
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
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		schoolPo.setSchoolId(java.util.UUID.randomUUID().toString().replaceAll("-", ""));
		schoolPo.setCreateTime(date);
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
