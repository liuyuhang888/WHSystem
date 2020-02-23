package com.WHSystem.entity;

import java.util.Date;

//厂家实体类
public class Vender {
    //ID
    private String venderId;
    //厂家名称
    private String venderName;
    //厂家描述
    private String venderDesc;
    //创建时间
    private Date createTime;
    //修改时间
    private Date updateTime;

    @Override
    public String toString() {
        return "Vender{" +
                "venderId='" + venderId + '\'' +
                ", venderName='" + venderName + '\'' +
                ", venderDesc='" + venderDesc + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }

    public String getVenderId() {
        return venderId;
    }

    public void setVenderId(String venderId) {
        this.venderId = venderId;
    }

    public String getVenderName() {
        return venderName;
    }

    public void setVenderName(String venderName) {
        this.venderName = venderName;
    }

    public String getVenderDesc() {
        return venderDesc;
    }

    public void setVenderDesc(String venderDesc) {
        this.venderDesc = venderDesc;
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
