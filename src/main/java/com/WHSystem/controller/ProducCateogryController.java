package com.WHSystem.controller;

import com.WHSystem.entity.ProductCategory;
import com.WHSystem.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;


@Controller
@RequestMapping("/productCategory")
public class ProducCateogryController {
    @Autowired
    ProductCategoryService productCategoryService;

    @RequestMapping("/addCategory")
    public String addCategory(ProductCategory productCategory) {
        productCategoryService.addProductCategory(productCategory);
        return "forward:/product/inputList";
    }

    @RequestMapping("/changeCategory")
    public String changeCategory(ProductCategory productCategory){
        productCategoryService.changeProductCategory(productCategory);
        return "forward:/product/inputList";
    }

    @RequestMapping("/changeCategoryPage")
    public String changeCategoryPage(String productCategoryId, Map<String,Object> map){
        ProductCategory categoryByid = productCategoryService.findCategoryByid(productCategoryId);
        map.put("category", categoryByid);
        return "updata/updataProductCategory";
    }

}
