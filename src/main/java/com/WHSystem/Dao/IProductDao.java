package com.WHSystem.Dao;

import com.WHSystem.dto.CategoryCountDto;
import com.WHSystem.entity.Product;

import java.util.List;

/**
 * @Auther:
 * @Date: 2020/2/9 11:56
 * @Description:
 */
public interface IProductDao {

    List<Product> findAll();

    Product findByName(String productName);

    Product findById(String productId);

    void saveProduct(Product product);

    void updateProduct(Product product);

    void deleteProduct(Product byId);

    List<CategoryCountDto> getCategoryCount();
}
