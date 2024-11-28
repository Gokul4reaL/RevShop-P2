package com.revature.shubham.model;
import java.util.List;

public class ProductResponse {
    private List<Product> collection;

    public List<Product> getCollection() {
        return collection;
    }

    public void setCollection(List<Product> collection) {
        this.collection = collection;
    }
}
