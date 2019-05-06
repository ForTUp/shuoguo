package com.dsg.school.dao;

import org.apache.ibatis.annotations.Mapper;

import com.dsg.school.model.DeptPo;

@Mapper
public interface DeptPoMapper {
    int deleteByPrimaryKey(String deptId);

    int insert(DeptPo record);

    int insertSelective(DeptPo record);

    DeptPo selectByPrimaryKey(String deptId);

    int updateByPrimaryKeySelective(DeptPo record);

    int updateByPrimaryKeyWithBLOBs(DeptPo record);

    int updateByPrimaryKey(DeptPo record);
}