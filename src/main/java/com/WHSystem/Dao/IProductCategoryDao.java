package com.WHSystem.Dao;

import com.WHSystem.entity.ProductCategory;

import java.util.List;

/**
 * @Auther:
 * @Date: 2020/2/9 11:57
 * @Description:
 */
public interface IProductCategoryDao {

    List<ProductCategory> findAll();

    ProductCategory findById(String productCategoryId);

    ProductCategory findByName(String name);

    void saveProductCategory(ProductCategory productCategory);

    void deleteById(String productCategoryId);

    void updateById(ProductCategory ProductCategory);

}
