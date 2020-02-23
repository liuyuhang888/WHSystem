package com.WHSystem.dto;



public class CategoryCountDto {
    private String cateogryName;
    private Integer count;

    @Override
    public String toString() {
        return "CategoryCountDto{" +
                "cateogryName='" + cateogryName + '\'' +
                ", count=" + count +
                '}';
    }

    public String getCateogryName() {
        return cateogryName;
    }

    public void setCateogryName(String cateogryName) {
        this.cateogryName = cateogryName;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
