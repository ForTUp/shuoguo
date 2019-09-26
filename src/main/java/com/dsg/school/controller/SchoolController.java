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
import net.sf.jsqlparser.expression.operators.conditional.AndExpression;

@RestController
@RequestMapping("/school")
@Api("SchoolController相关的api")
public class SchoolController {

	@Resource
	private ISchoolService schoolService;
	
	@ApiOperation(value = "根据学校名称查询所有学校信息",notes = "根据学校名称查询所有学校信息")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "schoolName",value = "学校名称",paramType = "query",required = false,dataType = "String"),	
		@ApiImplicitParam(name = "currentPage",value = "当前页面",paramType = "query",required = false,dataType = "int"),
		@ApiImplicitParam(name = "pagesize",value = "显示条数",paramType = "query",required = false,dataType = "int")
	})
	@RequestMapping(value = "schoolList.json",method = RequestMethod.GET)
	public Object getSchoolList(
			@RequestParam(value = "currentPage",required = false) Integer currentPage,
			@RequestParam(value = "pagesize",required = false) Integer pagesize,
			@RequestParam(value = "schoolName", required = false) String  schoolName
			) {

			if (currentPage == null) {
				currentPage=1;
			}
			if (pagesize == null) {
				pagesize=5;
			}
		 	SchoolPo schoolPo = new SchoolPo();
		 	if (schoolName != null && schoolName!="") {
				schoolPo.setSchoolName(schoolName);
			}
		
		 	PageHelper.startPage(currentPage,pagesize);
			Map<String, Object> map = new HashMap<String, Object>();
			List<SchoolPo> list = schoolService.selectListProp(schoolPo);; 
			PageInfo<SchoolPo> appsPageInfo	= new PageInfo<SchoolPo>(list);
			 map.put("list", list); 
			 map.put("code", 0);
			 map.put("total", appsPageInfo.getTotal());
		return map;
	}
	
	/*
	@ApiOperation(value = "根据学校名称查询所有学校信息",notes = "根据学校名称查询所有学校信息")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "schoolPo",value = "学校对象",paramType = "query",required = false,dataType = "com.dsg.school.model.SchoolPo"),	
		@ApiImplicitParam(name = "currentPage",value = "当前页面",paramType = "query",required = true,dataType = "int"),
		@ApiImplicitParam(name = "pagesize",value = "显示条数",paramType = "query",required = true,dataType = "int")
	})
	@RequestMapping(value = "selectListProp.json",method = RequestMethod.POST)
	public Object getSchoolListByName(
			@RequestParam(value = "currentPage",required = true) Integer currentPage,
			@RequestParam(value = "pagesize",required = true) Integer pagesize,
			@RequestBody(required = false) SchoolPo schoolPo
				){
		  PageHelper.startPage(currentPage, pagesize);
		  Map<String, Object> map = new HashMap<String,Object>(); 
		  List<SchoolPo> list = schoolService.selectListProp(schoolPo);
		  PageInfo<SchoolPo> appsPageInfo = new PageInfo<SchoolPo>();
		  System.out.println(appsPageInfo.getTotal());
		  map.put("list", list); 
		  map.put("code", 0);
		  map.put("total", appsPageInfo.getTotal());
		 
		return map;
	}
	*/
	
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
	 * @param schoolPo 搜索条件
	 * @param currentPage 当前页面
	 * @param pagesize	显示条数
	 * @return
	 */
	/*
	@ApiOperation(value = "模糊加后台分页学校列表",notes = "模糊加后台分页学校列表")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "schoolPo",value = "学校对象",paramType = "query",required = false,dataType = "com.dsg.school.model.SchoolPo"),	
			@ApiImplicitParam(name = "currentPage",value = "当前页面",paramType = "query",required = true,dataType = "int"),
			@ApiImplicitParam(name = "pagesize",value = "显示条数",paramType = "query",required = true,dataType = "int")
	})
	@RequestMapping(value = "selectSchoolListPage",method = RequestMethod.GET)
	public Object selectSchoolListPage(
			@RequestBody(required = false) SchoolPo schoolPo,
			@RequestParam(value = "currentPage",required = true) Integer currentPage,
			@RequestParam(value = "pagesize",required = true) Integer pagesize
			) {
		PageHelper.startPage(currentPage,pagesize);
		Map<String, Object> map = new HashMap<String, Object>();
		List<SchoolPo> list = schoolService.selectListProp(schoolPo);
		PageInfo<SchoolPo> appsPageInfo	= new PageInfo<SchoolPo>(list);
		map.put("total", appsPageInfo.getTotal());
		map.put("data", list);
		System.out.println(JSONObject.fromObject(map));
		return map;
	}
	*/
}
