package com.WHSystem.service.impl;

import com.WHSystem.Dao.IProductCategoryDao;
import com.WHSystem.Dao.IProductDao;
import com.WHSystem.Dao.IVenderDao;
import com.WHSystem.dto.CategoryCountDto;
import com.WHSystem.dto.ProductDto;
import com.WHSystem.entity.Product;
import com.WHSystem.entity.ProductCategory;
import com.WHSystem.service.ProductService;
import com.WHSystem.utils.RodomIdUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private IProductDao productDao;
    @Autowired
    private IProductCategoryDao productCategoryDao;
    @Autowired
    private IVenderDao VenderDao;

    @Override
    public List<ProductDto> findAllProduct() {
        List<Product> all = productDao.findAll();
        List<ProductDto> productDtos = new ArrayList<>();
        for (Product product : all) {
            ProductDto productDto = new ProductDto();
            BeanUtils.copyProperties(product, productDto);
            ProductCategory byId = productCategoryDao.findById(product.getProductCategoryId());
            productDto.setProductCategoryName(byId.getProductCategoryName());

            productDto.setVenderName(VenderDao.findById(product.getVenderId()).getVenderName());
            productDtos.add(productDto);
        }
        return productDtos;

    }

    @Override
    public void addProduct(Product product) {
        product.setProductId(RodomIdUtil.getRodomId());
        productDao.saveProduct(product);
    }

    @Override
    public void addStock(Product product) {
        Product byId = productDao.findById(product.getProductId());

        byId.setProductStock(Integer.parseInt(byId.getProductStock()) + Integer.parseInt(product.getProductStock()) + "");
        productDao.updateProduct(byId);
    }

    @Override
    public Product finbyId(String productId) {
        return productDao.findById(productId);
    }

    @Override
    public void delStock(Product product) {
        Product byId = productDao.findById(product.getProductId());
        int stork = Integer.parseInt(byId.getProductStock()) - Integer.parseInt(product.getProductStock());
        if (stork < 0) {
            throw new RuntimeException("出库错误，请检查库存量");
        } else if (stork == 0) {
            productDao.deleteProduct(byId);
        } else {
            byId.setProductStock(stork+"");
            productDao.updateProduct(byId);
        }
    }

    @Override
    public List<CategoryCountDto> getCount() {
        return productDao.getCategoryCount();
    }


}
