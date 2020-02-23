package com.WHSystem.service;

import com.WHSystem.entity.ProductCategory;

import java.util.List;


public interface ProductCategoryService {
    List<ProductCategory> findProductCategoryList();
    ProductCategory findCategoryByid(String categoryId);
    void addProductCategory(ProductCategory productCategory);
    void changeProductCategory(ProductCategory productCategory);
}
