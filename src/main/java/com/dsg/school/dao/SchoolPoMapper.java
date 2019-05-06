package com.dsg.school.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dsg.school.model.SchoolPo;

@Mapper
public interface SchoolPoMapper {
    int deleteByPrimaryKey(String schoolId);

    int insert(SchoolPo record);

    int insertSelective(SchoolPo record);

    SchoolPo selectByPrimaryKey(String schoolId);

    int updateByPrimaryKeySelective(SchoolPo record);

    int updateByPrimaryKeyWithBLOBs(SchoolPo record);

    int updateByPrimaryKey(SchoolPo record);
    
    List<SchoolPo> selectListProp(SchoolPo record);
    
    List<SchoolPo> selectList();

	List<SchoolPo> selectListPage(String schoolName);
}