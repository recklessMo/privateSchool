package com.recklessmo.model.setting;

/**
 * Created by yanzhou on 2017/10/18.
 */
public class CourseItem {

    /*
  * id:课程主键
  * orgId:机构号
  * courseId:课程编号--uuid
  * courseName:课程名称
  * courseDiff:课程难度
  * courseDesc:课程描述
  * deleted:是否删除
  * */

    private Integer id;
    private Long orgId;
    private String courseId;
    private String courseName;
    private String courseDiff;
    private String courseDesc;
    private Integer deleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getOrgId() {
        return orgId;
    }

    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseDiff() {
        return courseDiff;
    }

    public void setCourseDiff(String courseDiff) {
        this.courseDiff = courseDiff;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}
