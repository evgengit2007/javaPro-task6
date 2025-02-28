package ru.vtb.javaPro.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "type_product")
public class TypeProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @OneToMany(mappedBy = "products")
    private Set<Products> products;

    @Override
    public String toString() {
        return "TypeProduct{" +
                "id=" + id +
                ", products=" + products +
                '}';
    }
}
