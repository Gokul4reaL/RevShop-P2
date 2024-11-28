package com.revature.shubham.service;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.revature.shubham.model.ProductResponse;

@Service
public class ProductService {
    private final RestTemplate restTemplate;

    public ProductService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public ProductResponse fetchProducts() {
        String url = "http://desktop-mdpi57u:8080/app/api/products";
        try {
            return restTemplate.getForObject(url, ProductResponse.class);
        } catch (RestClientException e) {
            System.err.println("Error fetching products: " + e.getMessage());
            return new ProductResponse(); // Return an empty response if there is an error
        }

}
}