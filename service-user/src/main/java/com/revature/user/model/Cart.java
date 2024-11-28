package com.revature.user.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

/*
@Getter
@Setter*/
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
    private Long userId;
    private List<CartItem> cartItems;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public Cart(Long userId, List<CartItem> cartItems) {
		super();
		this.userId = userId;
		this.cartItems = cartItems;
	}
    
}
