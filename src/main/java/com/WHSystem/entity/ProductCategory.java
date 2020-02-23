package com.WHSystem.entity;

import java.util.Date;

//产品类别
public class ProductCategory {
    //产品分类id
    private String productCategoryId;
    //产品分类名称
    private String productCategoryName;
    //创建时间
    private Date createTime;
    //修改时间
    private Date updateTime;

    @Override
    public String toString() {
        return "ProductCategory{" +
                "productCategoryID='" + productCategoryId + '\'' +
                ", productCategoryName='" + productCategoryName + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }

    public String getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(String productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public String getProductCategoryName() {
        return productCategoryName;
    }

    public void setProductCategoryName(String productCategoryName) {
        this.productCategoryName = productCategoryName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
