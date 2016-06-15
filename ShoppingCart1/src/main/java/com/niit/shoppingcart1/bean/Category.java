package com.niit.shoppingcart1.bean;

import org.springframework.stereotype.Component;

@Component
public class Category {
private String id;
private String name;
private double descritpion;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public double getDescritpion() {
	return descritpion;
}
public void setDescritpion(double descritpion) {
	this.descritpion = descritpion;
}

}
