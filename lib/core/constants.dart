

import 'package:flutter/material.dart';
import 'package:shoes/models/cart_model.dart';
import 'package:shoes/models/product_mode.dart';
import 'package:shoes/screens/favourite_screen.dart';
import 'package:shoes/screens/home_screen.dart';
import 'package:shoes/screens/profiel_screen.dart';

final RegExp EMAIL_VALIDATION_REGEX = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

final RegExp PASSWORD_VALIDATION_REGEX = RegExp(r'.*'); // Matches any input

   

final RegExp NAME_VALIDATION_REGEX = RegExp(r"\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+");

const String introImage = "https://images.wallpaperscraft.com/image/single/tennis_girl_racket_179812_938x1668.jpg";
const String googleLogo = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ901eAwCHJkZ_K-vjQz9vX-WNgASX8gisXw&s";


final List<Widget> screens = [

  HomeScreen(),
  FavouriteScreen(),
  HomeScreen(),
  HomeScreen(),
  ProfielScreen(),
  


];


final List<Map<String, String>> productBrands = [
  {
    "name": "Nike",
    "image":
        "https://w7.pngwing.com/pngs/833/157/png-transparent-air-force-nike-air-max-swoosh-shoe-nike-angle-logo-sneakers.png"
  },
  {
    "name": "Puma",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-F4ORcHCmVO2QwEtypWNP61d3NS42h6iFFA&s"
  },
  {
    "name": "Adidas",
    "image": "https://upload.wikimedia.org/wikipedia/commons/2/24/Adidas_logo.png"
  },
  {
    "name": "Jordan",
    "image":
        "https://e7.pngegg.com/pngimages/30/332/png-clipart-jumpman-t-shirt-air-jordan-logo-nike-michael-jordan-physical-fitness-hand-thumbnail.png"
  },
  {
    "name": "Converse",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Converse_logo.svg/2560px-Converse_logo.svg.png"
  },
 
  {
    "name": "Umbro",
    "image": "https://upload.wikimedia.org/wikipedia/commons/b/b7/Logo_Umbro.png"
  },
];



final List<Map<String,dynamic>> products = [
  {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
  {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
    {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },

    {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
  {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
    {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },

];

final List<Map<String,dynamic>> bottomProduct = [
  {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://i.pinimg.com/736x/6a/b8/f7/6ab8f71806bd568e4d229658e7e979f6.jpg"
  },
  {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
    {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },

    {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
  {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },
    {
    "name" : "Nike Jordan",
    "price": 345.2393,
    "image": "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png"
  },

];



final List<ProductMode> productsModels = [
  ProductMode(
    name: 'Nike Jordan',
    price: 58.7,
    imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
    colors: [Colors.yellow, Colors.green, Colors.cyan],
  ),
  ProductMode(
    name: 'Nike Air Max',
    price: 37.8,
    imageUrl: 'https://blackcamel.pk/cdn/shop/files/DSC4056_1200x_4b744621-abef-47a0-8287-97d096ed8355.jpg',
    colors: [Colors.blue, Colors.grey],
  ),
  ProductMode(
    name: 'Nike Club Max',
    price: 47.7,
    imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
    colors: [Colors.blue, Colors.yellow],
  ),
  ProductMode(
    name: 'Nike Air Max',
    price: 57.6,
    imageUrl: 'https://m.media-amazon.com/images/I/71f3BmjCwtL._AC_UY1000_.jpg',
    colors: [Colors.cyan, Colors.purple],
  ),




    ProductMode(
    name: 'Nike Jordan',
    price: 58.7,
    imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
    colors: [Colors.yellow, Colors.green, Colors.cyan],
  ),
  ProductMode(
    name: 'Nike Air Max',
    price: 37.8,
    imageUrl: 'https://blackcamel.pk/cdn/shop/files/DSC4056_1200x_4b744621-abef-47a0-8287-97d096ed8355.jpg',
    colors: [Colors.blue, Colors.grey],
  ),
  ProductMode(
    name: 'Nike Club Max',
    price: 47.7,
    imageUrl: 'https://m.media-amazon.com/images/I/71f3BmjCwtL._AC_UY1000_.jpg',
    colors: [Colors.blue, Colors.yellow],
  ),
  ProductMode(
    name: 'Nike Air Max',
    price: 57.6,
    imageUrl: 'https://m.media-amazon.com/images/I/71f3BmjCwtL._AC_UY1000_.jpg',
    colors: [Colors.cyan, Colors.purple],
  ),


  ProductMode(
    name: 'Nike Jordan',
    price: 58.7,
    imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
    colors: [Colors.yellow, Colors.green, Colors.cyan],
  ),
  ProductMode(
    name: 'Nike Air Max',
    price: 37.8,
    imageUrl: 'https://blackcamel.pk/cdn/shop/files/DSC4056_1200x_4b744621-abef-47a0-8287-97d096ed8355.jpg',
    colors: [Colors.blue, Colors.grey],
  ),
  ProductMode(
    name: 'Nike Club Max',
    price: 47.7,
    imageUrl: 'https://m.media-amazon.com/images/I/71f3BmjCwtL._AC_UY1000_.jpg',
    colors: [Colors.blue, Colors.yellow],
  ),
  ProductMode(
    name: 'Nike Air Max',
    price: 57.6,
    imageUrl: 'https://m.media-amazon.com/images/I/71f3BmjCwtL._AC_UY1000_.jpg',
    colors: [Colors.cyan, Colors.purple],
  ),
];



final List<CartModel> cartList = [
  CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),
  CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),
  CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),

   CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),


  CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),
  CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),
  CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),

   CartModel(
    imageUrl: "https://m.media-amazon.com/images/I/51B3VOUg52L._BO30,255,255,255_UF900,850_SR1910,1000,0,C_QL100_.jpg", 
    price: 234.43, 
    productName: "Nike man shoes", 
    size: 'L'
    ),
 
 
 


];



