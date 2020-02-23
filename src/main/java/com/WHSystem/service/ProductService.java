package com.WHSystem.service;

import com.WHSystem.dto.CategoryCountDto;
import com.WHSystem.dto.ProductDto;
import com.WHSystem.entity.Product;

import java.util.List;

/**
 * @Auther: 刘宇航
 * @Date: 2020/2/11 20:59
 * @Description:
 */
public interface ProductService {
    List<ProductDto> findAllProduct();

    void addProduct(Product product);

    void addStock(Product product);

    Product finbyId(String productId);

    void delStock(Product product);

    List<CategoryCountDto> getCount();
}
