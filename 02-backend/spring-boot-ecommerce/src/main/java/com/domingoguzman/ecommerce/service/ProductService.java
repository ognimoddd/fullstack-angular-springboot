package com.domingoguzman.ecommerce.service;

import com.domingoguzman.ecommerce.dao.ProductRepository;
import com.domingoguzman.ecommerce.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ProductService {

    private final ProductRepository productRepository;

    @Autowired
    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getFirstProductInEachCategory() {
        return productRepository.findFirstProductInEachCategory();
    }
}
