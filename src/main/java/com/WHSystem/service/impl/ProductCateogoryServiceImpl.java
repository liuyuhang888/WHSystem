package com.WHSystem.service.impl;

import com.WHSystem.Dao.IProductCategoryDao;
import com.WHSystem.entity.ProductCategory;
import com.WHSystem.service.ProductCategoryService;
import com.WHSystem.utils.RodomIdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: 刘宇航
 * @Date: 2020/2/18 10:58
 * @Description:
 */
@Service
public class ProductCateogoryServiceImpl implements ProductCategoryService {

    @Autowired
    private IProductCategoryDao productCategoryDao;

    @Override
    public List<ProductCategory> findProductCategoryList() {
        return productCategoryDao.findAll();
    }

    @Override
    public ProductCategory findCategoryByid(String categoryId) {

        return productCategoryDao.findById(categoryId);
    }

    @Override
    public void addProductCategory(ProductCategory productCategory) {
        productCategory.setProductCategoryId(RodomIdUtil.getRodomId());
        productCategoryDao.saveProductCategory(productCategory);
    }

    @Override
    public void changeProductCategory(ProductCategory productCategory) {
        productCategoryDao.updateById(productCategory);
    }

}
