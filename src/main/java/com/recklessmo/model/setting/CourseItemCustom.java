package com.recklessmo.model.setting;

/**
 * Created by yanzhou on 2017/10/18.
 */
public class CourseItemCustom extends CourseItem {

    private static int COURSE_TYPE_MAIN = 1;
    private static int COURSE_TYPE_WEN = 2;
    private static int COURSE_TYPE_LI = 3;
    //常用的学科名字
    public static String CHINESE = "语文";
    public static String MATH = "数学";
    public static String ENGLISH = "英语";
    public static String POLITICS = "政治";
    public static String HISTORY = "历史";
    public static String GEO = "地理";
    public static String PHYSICS = "物理";
    public static String CHEMISTRY = "化学";
    public static String BIOLOGY = "生物";
    //hashImport表示学校是否录入
    private boolean hasImport = false;
    public boolean isHasImport() {
        return hasImport;
    }

    public void setHasImport(boolean hasImport) {
        this.hasImport = hasImport;
    }

}
