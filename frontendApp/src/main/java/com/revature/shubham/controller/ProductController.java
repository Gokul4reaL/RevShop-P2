package com.revature.shubham.controller;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.revature.shubham.model.ProductResponse;
import com.revature.shubham.service.ProductService;
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/products")
    public String getProducts(Model model) {
        ProductResponse productResponse = productService.fetchProducts();
        if (productResponse != null && productResponse.getCollection() != null) {
            model.addAttribute("products", productResponse.getCollection());
        } else {
            model.addAttribute("products", Collections.emptyList());
        }
        return "products"; // The JSP file where the product details will be displayed
    }
}

 