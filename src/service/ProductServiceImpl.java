package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Nintendo", "Switch", 400, ""));
        products.put(2, new Product(2, "Nintendo", "3DS",230, ""));
        products.put(3, new Product(3, "Sony", "Play Station 4", 280, ""));
        products.put(4, new Product(4, "Sony", "Play Station Vita",280, ""));
        products.put(5, new Product(5, "Microsoft", "Xbox One",450, ""));
        products.put(6, new Product(6, "Microsoft", "Xbox 360",380, ""));
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
    public List<Product> findByDeveloper(String name) {
        List<Product> findProductsByDeveloper = new ArrayList<>();
        for (int i = 1; i <= products.size(); i++) {
            if (products.get(i) != null) {
                if (name.toLowerCase().contains(products.get(i).getDeveloper().toLowerCase())) {
                    findProductsByDeveloper.add(products.get(i));
                }
            }
        }
        return findProductsByDeveloper;
    }

    @Override
    public List<Product> findByModel(String name) {
        List<Product> findProductsByModel = new ArrayList<>();
        for (int i = 1; i <= products.size(); i++) {
            if (products.get(i) != null) {
                if (products.get(i).getModel().toLowerCase().contains(name.toLowerCase())) {
                    findProductsByModel.add(products.get(i));
                }
            }
        }
        return findProductsByModel;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public int getSize() {
        return products.size();
    }
}
