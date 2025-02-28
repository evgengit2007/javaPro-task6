package ru.vtb.javaPro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.vtb.javaPro.entity.Products;

public interface ProductRepository extends JpaRepository<Products, Long> {

}
