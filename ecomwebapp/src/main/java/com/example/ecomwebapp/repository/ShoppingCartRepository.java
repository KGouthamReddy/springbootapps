package com.example.ecomwebapp.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.ecomwebapp.entity.ShoppingCart;

public interface ShoppingCartRepository extends CrudRepository<ShoppingCart, Integer>{
	
}
