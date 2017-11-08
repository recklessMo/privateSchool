package com.recklessmo.dao.setting;

import com.recklessmo.model.setting.*;
import com.recklessmo.web.webmodel.page.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by hpf on 8/17/16.
 */
public interface CourseSettingDAO {

    void addCourse(Course Course);

    void updateCourse(Course Course);

    List<CourseItemCustom> listCourse(CourseItemCustom courseItemCustom);

    int listCourseCount(Page page);

    void deleteCourse(@Param("id")int id);

    CourseItemCustom getCourseByCourseIdAndOrgId(@Param("courseId")String courseId, @Param("orgId")long orgId);
    //CourseItemCustom getCourseByCourseIdAndOrgId(CourseItemCustom courseItemCustom) throws Exception;

    List<Course> getStandardCourseList();
    void addOneCourse(CourseItemCustom courseItemCustom) throws Exception;

    void batchDelete(Map<String,Object> deleteParam) throws Exception;
    void insertCourseList(@Param("courseList")List<CourseItemCustom> courseList) throws Exception;

}
