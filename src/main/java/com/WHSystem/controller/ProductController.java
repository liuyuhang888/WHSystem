package com.WHSystem.controller;

import com.WHSystem.dto.CategoryCountDto;
import com.WHSystem.dto.ProductDto;
import com.WHSystem.entity.Product;
import com.WHSystem.entity.ProductCategory;
import com.WHSystem.entity.Vender;
import com.WHSystem.service.ProductCategoryService;
import com.WHSystem.service.ProductService;
import com.WHSystem.service.VenderService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;
    @Autowired
    private VenderService venderService;
    @Autowired
    private ProductCategoryService productCategoryService;


    @RequestMapping("/productList")
    public String productList(Map<String,Object> map){
        List<ProductDto> allProduct = productService.findAllProduct();
        map.put("productList", allProduct);

        return "goods";

    }
    @RequestMapping("/outPutList")
    public String outPutList(Map<String,Object> map){
        List<ProductDto> allProduct = productService.findAllProduct();
        map.put("productList", allProduct);

        return "putOut";

    }
    @RequestMapping("/inputList")
    public String inputList(Map<String,Object> map){
        List<Vender> venderList = venderService.findVenderList();
        List<ProductCategory> productCategoryList = productCategoryService.findProductCategoryList();
        map.put("venderList",venderList);
        map.put("productCategoryList",productCategoryList);

        return "putIn";
    }

    @RequestMapping("/addProduct")
    public String addProduct(Product product){
        productService.addProduct(product);
        return "forward:/product/inputList";
    }

    @RequestMapping("/increase")
    public String increase(Product product){

        productService.addStock(product);

        return "forward:/product/productList";
    }
    @RequestMapping("/changeProductPage")
    public String changeProductPage(String productId,Map map){
        map.put("productId", productId);
        return "updata/updateStock";
    }

    @RequestMapping("/uncrease")
    public String uncrease(Product product, Model model){
        try {
        productService.delStock(product);

        }catch (Exception e){
            model.addAttribute("msg", e.getMessage());
            return "forward:/product/outPutList";
        }
        model.addAttribute("msg","出库成功");
        return "forward:/product/outPutList";
    }
    @RequestMapping("/updateOutPage")
    public String updateOutPage(String productId,Map map){
        map.put("productId", productId);
        return "updata/updateOutPage";
    }
    @RequestMapping("/chartPage")
    public String chartPage(){
        return "chart";
    }




    @RequestMapping(value = "/getData",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String getData(){
        Gson gson = new GsonBuilder().create();
        List<CategoryCountDto> count = productService.getCount();
        // 将Java对象序列化为Json字符串
        String objectToJson = gson.toJson(count);
        return objectToJson;
    }
}
