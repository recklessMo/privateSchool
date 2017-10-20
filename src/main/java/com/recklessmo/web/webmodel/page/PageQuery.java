package com.recklessmo.web.webmodel.page;

/**
 * Created by yanzhou on 2017/10/20.
 */
public class PageQuery {

    Long orgId;
    Integer pageNo;
    Integer pageSize;

    public Long getOrgId() {
        return orgId;
    }

    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
