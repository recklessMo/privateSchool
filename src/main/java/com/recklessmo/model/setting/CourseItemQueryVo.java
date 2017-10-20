package com.recklessmo.model.setting;

/**
 * Created by yanzhou on 2017/10/18.
 */
public class CourseItemQueryVo  {

    //课程信息
    private Course course;

    //课程信息扩展
    private CourseItemCustom courseItemCustom;

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public CourseItemCustom getCourseItemCustom() {
        return courseItemCustom;
    }

    public void setCourseItemCustom(CourseItemCustom courseItemCustom) {
        this.courseItemCustom = courseItemCustom;
    }
}
