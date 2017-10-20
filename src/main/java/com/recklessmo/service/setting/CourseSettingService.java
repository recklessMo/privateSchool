package com.recklessmo.service.setting;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.recklessmo.dao.setting.CourseSettingDAO;
import com.recklessmo.dao.setting.CourseSettingDAO;
import com.recklessmo.model.setting.*;
import com.recklessmo.web.webmodel.page.Page;
import com.recklessmo.web.webmodel.page.PageQuery;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hpf on 8/17/16.
 */
@Service
public class CourseSettingService {

    @Resource
    private CourseSettingDAO courseSettingDAO;

    public void addCourse(Course course){
        courseSettingDAO.addCourse(course);
    }

    public void updateCourse(Course course){
        courseSettingDAO.updateCourse(course);
    }

    public void deleteCourse(int id){
        courseSettingDAO.deleteCourse(id);
    }

    public CourseItemCustom getCourseByCourseIdAndOrgId(String courseId,long orgId) throws Exception{
        return courseSettingDAO.getCourseByCourseIdAndOrgId(courseId,orgId);
    }

   /* public List<CourseItemCustom> listCourse(CourseItemCustom courseItemCustom){
        return courseSettingDAO.listCourse(courseItemCustom);
    }*/

    public PageInfo<CourseItemCustom> queryByPage(CourseItemCustom courseItemCustom, PageQuery pageQuery){
        Integer pageNo = pageQuery.getPageNo();
        Integer pageSize = pageQuery.getPageSize();
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo, pageSize);
        List<CourseItemCustom> list = courseSettingDAO.listCourse(courseItemCustom);
        PageInfo<CourseItemCustom> page = new PageInfo<CourseItemCustom>(list);
        System.out.println(page.getPageNum());
        System.out.println(page.getPageSize());
        System.out.println(page.getStartRow());
        System.out.println(page.getEndRow());
        System.out.println(page.getTotal());
        System.out.println(page.getPages());
        System.out.println(page.isHasPreviousPage());
        System.out.println(page.isHasNextPage());
        return page;
    }

    public int listCourseCount(Page page){
        return courseSettingDAO.listCourseCount(page);
    }

    public List<Course> getStandardCourseList(){
        return courseSettingDAO.getStandardCourseList();
    }

    public void addOneCourse(CourseItemCustom courseItemCustom) throws Exception {courseSettingDAO.addOneCourse(courseItemCustom);}

}
