package ru.vtb.javaPro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.vtb.javaPro.entity.Product;
import ru.vtb.javaPro.entity.User;

import java.util.List;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByUser(User user);

    Optional<Product> findById(Long id);

}
