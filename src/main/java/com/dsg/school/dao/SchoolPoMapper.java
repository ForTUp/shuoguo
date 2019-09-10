package com.dsg.school.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.dsg.school.model.SchoolPo;

@Mapper
public interface SchoolPoMapper {
	
	String base_column_liString = "  school_id, school_name, school_database_id, school_db_name, entity_type, expire_date, \r\n" + 
			"    province_id, city_id, area_id, school_place, school_type, school_logo, school_homepage, \r\n" + 
			"    contact_person, contact_phone, user_uid, wx_mp_uid, ex_info_01, ex_info_02, ex_info_03, \r\n" + 
			 "    ex_info_04, create_time, creator, modify_time, modifier, remarks";
	String Blob_Column_List = "school_intro";
	
	
    int deleteByPrimaryKey(String schoolId);

    int insert(SchoolPo record);

    int insertSelective(SchoolPo record);

    SchoolPo selectByPrimaryKey(String schoolId);

    int updateByPrimaryKeySelective(SchoolPo record);

    int updateByPrimaryKeyWithBLOBs(SchoolPo record);

    int updateByPrimaryKey(SchoolPo record);
    
    @Select("<script> \n"
    		+ "select "+ base_column_liString +"," + Blob_Column_List  +" from  sbr_school_info "
    		+ "where 1=1 <if test='schoolName != null'> and school_name like concat('%',#{schoolName},'%')  </if> "
    		+ " order by create_time desc "
    		+ "</script>")
    @ResultMap("com.dsg.school.dao.SchoolPoMapper.ResultMapWithBLOBs")
    List<SchoolPo> selectListProp(SchoolPo record);
    
    
    @Select("select " + base_column_liString + "," + Blob_Column_List +" from  sbr_school_info order by create_time desc")
    @ResultMap("com.dsg.school.dao.SchoolPoMapper.ResultMapWithBLOBs")
    List<SchoolPo> selectList();

	List<SchoolPo> selectListPage(String schoolName);
}