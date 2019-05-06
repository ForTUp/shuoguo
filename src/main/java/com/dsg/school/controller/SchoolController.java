package com.dsg.school.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dsg.school.model.SchoolPo;
import com.dsg.school.service.ISchoolService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;

@RestController
@RequestMapping("/school")
@Api("SchoolController相关的api")
public class SchoolController {

	@Resource
	private ISchoolService schoolService;
	
	@ApiOperation(value = "查询所有学校信息",notes = "查询所有学校信息")
	@RequestMapping(value = "schoolList.json",method = RequestMethod.GET)
	public Object getSchoolList() {

		 Map<String, Object> map = new HashMap<String, Object>(); 
		 List<SchoolPo> list = schoolService.selectList(); 
		 map.put("list", list); 
		 map.put("code", 0);
		return map;
	}
	
	@ApiOperation(value = "根据学校名称查询所有学校信息",notes = "根据学校名称查询所有学校信息")
	@ApiImplicitParam(name = "schoolName",value = "学校名称",paramType = "path",required = false,dataType = "String")
	@RequestMapping(value = "selectListProp.json",method = RequestMethod.POST)
	public Object getSchoolListByName(
				@RequestParam(value = "schoolName",required = false ) String schoolName
				){
		SchoolPo schoolPo = new SchoolPo();
		if (schoolName!=null && ""!=schoolName) {
			schoolPo.setSchoolName(schoolName);
		}
		
		  System.out.println(schoolName); 
		  Map<String, Object> map = new HashMap<String,Object>(); 
		  List<SchoolPo> list = schoolService.selectListProp(schoolPo);
		  map.put("list", list); 
		  map.put("code", 0);
		 
		return map;
	}
	
	/*
	 * schoolName: '', schoolPlace: '', schoolIntro: '', contactPerson: '',
	 * contactPhone: ''
	 */
	@ApiOperation(value = "添加学校",notes = "添加学校")
	@ApiImplicitParam(name = "schoolPo",value = "学校对象",paramType = "path",required = true,dataType = "com.dsg.school.model.SchoolPo")
	@RequestMapping(value = "addschool",method = RequestMethod.POST)
	public  Object addSchool(@RequestBody SchoolPo schoolPo,HttpServletRequest request) {
		System.out.println(JSONObject.fromObject(schoolPo));
		return schoolService.addSchool(schoolPo);
	}
	
	@ApiOperation(value = "删除学校",notes = "删除学校")
	@ApiImplicitParam(name = "schoolId",value = "学校主键",paramType = "query",required = true,dataType = "String")
	@RequestMapping(value = "deleteSchoolById",method = RequestMethod.GET)
	public Object deleteSChoolById(@RequestParam(value = "schoolId",required = true) String schoolId) {
		return schoolService.deleteSchoolById(schoolId);
	}
	
	@ApiOperation(value = "通过ID获取学校信息",notes = "通过ID获取学校信息")
	@ApiImplicitParam(name = "schoolId",value = "学校主键",paramType = "query",required = true,dataType = "String")
	@RequestMapping(value = "selectSchoolById",method = RequestMethod.GET)
	public Object selectSchoolById(@RequestParam(value = "schoolId",required = true) String schoolId) {
		System.out.println(schoolId);
		SchoolPo schoolPo = schoolService.selectSchoolById(schoolId);
		System.out.println(JSONObject.fromObject(schoolPo));
		return schoolPo; 
	}
	
	@ApiOperation(value = "通过ID修改学校信息",notes = "通过ID修改学校信息")
	@ApiImplicitParam(name = "schoolPo",value = "学校对象",paramType = "path",required = true,dataType = "com.dsg.school.model.SchoolPo")
	@RequestMapping(value = "updateSchool",method = RequestMethod.POST)
	public Object updateSchool(@RequestBody SchoolPo schoolPo) {
		return schoolService.updateSchool(schoolPo);
	}
	
	/**
	 * 
	 * @param schoolName 搜索条件
	 * @param currentPage 当前页面
	 * @param pagesize	显示条数
	 * @return
	 */
	@ApiOperation(value = "模糊加后台分页学校列表",notes = "模糊加后台分页学校列表")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "schoolPo",value = "学校对象",paramType = "query",required = false,dataType = "com.dsg.school.model.SchoolPo"),	
			@ApiImplicitParam(name = "currentPage",value = "当前页面",paramType = "query",required = true,dataType = "int"),
			@ApiImplicitParam(name = "pagesize",value = "显示条数",paramType = "query",required = true,dataType = "int")
	})
	
	/**
	 * 
	 * @param schoolPo
	 * @param currentPage
	 * @param pagesize
	 * @return
	 */
	@RequestMapping(value = "selectSchoolListPage",method = RequestMethod.GET)
	public Object selectSchoolListPage(
			@RequestBody(required = false) SchoolPo schoolPo,
			@RequestParam(value = "currentPage",required = true) Integer currentPage,
			@RequestParam(value = "pagesize",required = true) Integer pagesize
			) {
		//PageHelper.startPage(Integer.parseInt(currentPage),Integer.parseInt(pagesize));
		PageHelper.startPage(currentPage,pagesize);
		Map<String, Object> map = new HashMap<String, Object>();
		List<SchoolPo> list = schoolService.selectListProp(schoolPo);
		PageInfo<SchoolPo> appsPageInfo	= new PageInfo<SchoolPo>(list);
		map.put("total", appsPageInfo.getTotal());
		map.put("data", list);
		System.out.println(JSONObject.fromObject(map));
		return map;
	}
}
