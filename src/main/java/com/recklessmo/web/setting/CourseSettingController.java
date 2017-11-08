package com.recklessmo.web.setting;

import com.github.pagehelper.PageInfo;
import com.recklessmo.generator.UUIDGenerator;
import com.recklessmo.model.security.DefaultUserDetails;
import com.recklessmo.model.setting.*;
import com.recklessmo.response.JsonResponse;
import com.recklessmo.service.setting.CourseSettingService;
import com.recklessmo.util.ContextUtils;
import com.recklessmo.web.webmodel.page.Page;
import com.recklessmo.web.webmodel.page.PageQuery;
import org.springframework.security.authentication.jaas.DefaultJaasAuthenticationProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by hpf on 8/17/16.
 */
@Controller
@RequestMapping("/v1/setting")
public class CourseSettingController {

    @Resource
    private CourseSettingService courseSettingService;

//   不提供自己添加接口, 为了统一数据, 需要对课程进行统一编码!

//    @RequestMapping(value = "/course/add", method = {RequestMethod.POST})
//    @ResponseBody
//    public JsonResponse addCourse(@RequestBody Course Course){
//        //TODO do some check here
//        courseSettingService.addCourse(Course);
//        return new JsonResponse(200, null, null);
//    }

    @RequestMapping(value = "/course/list", method = {RequestMethod.POST})
    @ResponseBody
    public JsonResponse listCourse(@RequestBody PageQuery page){
        DefaultUserDetails userDetails = ContextUtils.getLoginUserDetail();
        Long orgId = userDetails.getOrgId();
        page.setOrgId(orgId);
        CourseItemCustom courseItemCustom = new CourseItemCustom();
        courseItemCustom.setOrgId(orgId);
        PageInfo<CourseItemCustom> pages = courseSettingService.queryByPage(courseItemCustom,page);
        //Integer pageNum = pages.getPageNum();
        Integer lastPage = pages.getLastPage();

        List<CourseItemCustom> courseList = pages.getList();
        return new JsonResponse(200, courseList, lastPage);
    }

    /*@RequestMapping(value = "/course/listStandard", method = {RequestMethod.POST})
    @ResponseBody
    public JsonResponse listStandard(@RequestBody Page page){
        DefaultUserDetails userDetails = ContextUtils.getLoginUserDetail();
        page.setOrgId(userDetails.getOrgId());
        List<CourseItemCustom> courseList = courseSettingService.listCourse(page);
        page.setOrgId(0);
        List<CourseItemCustom> StandardCourseList = courseSettingService.listCourse(page);
        StandardCourseList.stream().forEach(item -> {
            Optional<CourseItemCustom> temp = courseList.stream().filter(t -> t.getCourseId() == item.getCourseId()).findAny();
            item.setHasImport(temp.isPresent());
        });
        return new JsonResponse(200, StandardCourseList, StandardCourseList.size());
    }*/

    @RequestMapping(value = "/course/import", method = {RequestMethod.POST})
    @ResponseBody
    public JsonResponse importCourse(@RequestBody Course[] courses){
        DefaultUserDetails userDetails = ContextUtils.getLoginUserDetail();
        for(Course course : courses){
            try{
                //直接添加, 通过数据库主键来判断
                course.setOrgId(userDetails.getOrgId());
                courseSettingService.addCourse(course);
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        return new JsonResponse(200, null, null);
    }

    @RequestMapping(value = "/course/addOne",method = {RequestMethod.POST})
    @ResponseBody
    public JsonResponse addOneCourse(@RequestBody CourseItemCustom courseItemCustom) throws Exception{

        DefaultUserDetails userDetails = ContextUtils.getLoginUserDetail();

        courseItemCustom.setOrgId(userDetails.getOrgId());

        if(courseItemCustom != null||courseItemCustom.getCourseName()!=null)
            courseSettingService.addOneCourse(courseItemCustom);

        return new JsonResponse(200, null, null);

    }


    @RequestMapping(value = "/course/delete", method = {RequestMethod.POST})
    @ResponseBody
    public JsonResponse deleteCourse(@RequestBody CourseItem courseItem) throws Exception{
        DefaultUserDetails userDetails = ContextUtils.getLoginUserDetail();

        CourseItemCustom courseItemCustom = courseSettingService.getCourseByCourseIdAndOrgId(courseItem.getCourseId(),userDetails.getOrgId());
        if(courseItem != null){
            courseSettingService.deleteCourse(courseItemCustom.getId());
        }
        return new JsonResponse(200, null, null);
    }

    @RequestMapping(value = "/course/batchDelete", method = {RequestMethod.POST})
    @ResponseBody
    public JsonResponse batchDelete(@RequestBody String[] courseIds) throws Exception{

        DefaultUserDetails userDetails = ContextUtils.getLoginUserDetail();

        Long orgId = userDetails.getOrgId();

        List<String> list = Arrays.asList(courseIds);

        Map<String,Object> deleteParam = new HashMap<String,Object>();

        deleteParam.put("list",list);
        deleteParam.put("orgId",orgId);

        if(deleteParam!=null&&deleteParam.size()!=0&&!deleteParam.isEmpty()){

            courseSettingService.batchDelete(deleteParam);
        }

        return new JsonResponse(200,null,null);
    }

}
