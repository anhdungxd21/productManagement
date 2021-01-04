package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone XS","Apple"));
        products.put(2, new Product(2, "Iphone XR","Apple"));
        products.put(3, new Product(3,"Galaxy Note 10","Samsung"));
        products.put(4, new Product(4,"Galaxy S 20","Samsung"));
        products.put(5, new Product(5,"Mi Note 5 pro","Xiaomi"));
        products.put(6, new Product(6, "Vsmart Live","Vsmart"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
         products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
