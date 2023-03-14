package com.example.buysell.services;

import com.example.buysell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> productList = new ArrayList<>();
    private long ID = 0;

    {
        productList.add(new Product(++ID,"Iphone 14", "CellPhone", 1300, "Lviv", "Andrew"));
        productList.add(new Product(++ID,"PlayStation 5", "Game console", 500, "Lviv", "Flash7"));
        productList.add(new Product(++ID,"Mini Cooper CountryMan", "Car", 20000, "Lviv", "Andrii"));
        productList.add(new Product(++ID,"Orbea", "Bicycle", 999, "Lviv", "Yakhim"));
    }

    public List<Product> listProducts() {
        return productList;
    }

    public void save(Product product) {
        product.setId(++ID);
        productList.add(product);
    }

    public void delete (Long id) {
        productList.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : productList) {
            if(product.getId().equals(id)) {
                return product;
            }
        }
        return null;
    }
}
