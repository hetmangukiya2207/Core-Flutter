import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

import 'ImageUtils.dart';

List<Map> Mobiles = [
  {
    'ItemImages': ImagePath + Mobile1,
    'BrandName': "Apple 14 Pro Max",
    'Price': "₹1,44,999",
  },
  {
    'ItemImages': ImagePath + Mobile2,
    'BrandName': "Apple 13 Pro Max",
    'Price': "₹1,27,999",
  },
  {
    'ItemImages': ImagePath + Mobile3,
    'BrandName': "Oppo A5 s",
    'Price': "₹22,000",
  },
  {
    'ItemImages': ImagePath + Mobile4,
    'BrandName': "Samsung S23 Ultra",
    'Price': "₹1,20,000",
  },
  {
    'ItemImages': ImagePath + Mobile5,
    'BrandName': "Samsung S6 Edge",
    'Price': "₹60,000",
  },
  {
    'ItemImages': ImagePath + Mobile6,
    'BrandName': "MI POCO F1",
    'Price': "₹25,000",
  },
  {
    'ItemImages': ImagePath + Mobile7,
    'BrandName': "Vivo y17",
    'Price': "₹20,000",
  },
  {
    'ItemImages': ImagePath + Mobile8,
    'BrandName': "Vivo y90",
    'Price': "₹30,000",
  },
  {
    'ItemImages': ImagePath + Mobile9,
    'BrandName': "Oppo Realme",
    'Price': "₹35,000",
  },
  {
    'ItemImages': ImagePath + Mobile10,
    'BrandName': "Realme C33",
    'Price': "₹17,000",
  },
];

List<Map> Laptops = [
  {
    'ItemImages': ImagePath + MB1,
    'BrandName': "MacBook Pro M2 Chip",
    'Price': "₹1,30,000",
  },
  {
    'ItemImages': ImagePath + MB2,
    'BrandName': "MacBook Pro M1 Chip",
    'Price': "₹99,999",
  },
  {
    'ItemImages': ImagePath + MB3,
    'BrandName': "Inspiron 16 Laptop",
    'Price': "₹57,990",
  },
  {
    'ItemImages': ImagePath + MB4,
    'BrandName': "Intel Core i3",
    'Price': "₹60,000",
  },
  {
    'ItemImages': ImagePath + MB5,
    'BrandName': "Lenovo Ideapad 3 AMD Ryzen 5",
    'Price': "₹68,400",
  },
  {
    'ItemImages': ImagePath + MB6,
    'BrandName': "Xioami NotebookUltra",
    'Price': "₹76,900",
  },
  {
    'ItemImages': ImagePath + MB7,
    'BrandName': "Xiaomi Notebook Pro 120G 12th Gen",
    'Price': "₹86,000",
  },
  {
    'ItemImages': ImagePath + MB8,
    'BrandName': "HP 15s- Ryzen 5-5500U 8GB RAM",
    'Price': "₹54,000",
  },
  {
    'ItemImages': ImagePath + MB9,
    'BrandName': "Lenovo IdeaPad 3 11th Gen Intel Core i3",
    'Price': "₹60,000",
  },
  {
    'ItemImages': ImagePath + MB10,
    'BrandName': "ASUS VivoBook 14",
    'Price': "₹35,000",
  },
];

List<Map> tablet = [
  {
    'ItemImages': ImagePath + i1,
    'BrandName': "Apple iPad Air",
    'Price': "₹1,44,999",
  },
  {
    'ItemImages': ImagePath + i2,
    'BrandName': "iPad 10th gen",
    'Price': "₹1,27,999",
  },
  {
    'ItemImages': ImagePath + i3,
    'BrandName': "Samsung Galaxy Tab S8",
    'Price': "₹22,000",
  },
  {
    'ItemImages': ImagePath + i4,
    'BrandName': "Amazon Fire 7",
    'Price': "₹1,20,000",
  },
  {
    'ItemImages': ImagePath + i5,
    'BrandName': "Samsung Galaxy Tab A7",
    'Price': "₹60,000",
  },
  {
    'ItemImages': ImagePath + i6,
    'BrandName': "Microsoft Surface Go 2",
    'Price': "₹25,000",
  },
  {
    'ItemImages': ImagePath + i7,
    'BrandName': "Samsung Galaxy Tab S8 Ultra",
    'Price': "₹20,000",
  },
  {
    'ItemImages': ImagePath + i8,
    'BrandName': "iPad mini 6",
    'Price': "₹30,000",
  },
  {
    'ItemImages': ImagePath + i9,
    'BrandName': "Lenovo Tab M10 HD 2nd Gen",
    'Price': "₹35,000",
  },
  {
    'ItemImages': ImagePath + i10,
    'BrandName': "Lenovo M8 Hd 2Nd Gen Tab",
    'Price': "₹17,000",
  },
];

List<Map> Watches = [
  {
    'ItemImages': ImagePath + w1,
    'BrandName': "Apple Watch Series 8",
    'Price': "₹68,900",
  },
  {
    'ItemImages': ImagePath + w2,
    'BrandName': "Invincible Plus",
    'Price': "₹21,000",
  },
  {
    'ItemImages': ImagePath + w3,
    'BrandName': "NoiseFit Evolve 3",
    'Price': "₹32,500",
  },
  {
    'ItemImages': ImagePath + w4,
    'BrandName': "Titan Talk- Touch Screen",
    'Price': "₹15,000",
  },
  {
    'ItemImages': ImagePath + w5,
    'BrandName': "ColorFit Pro 4 Alpha",
    'Price': "₹8,000",
  },
  {
    'ItemImages': ImagePath + w6,
    'BrandName': "ColorFit Icon Buzz",
    'Price': "₹7,000",
  },
  {
    'ItemImages': ImagePath + w7,
    'BrandName': "Virtuoso VIII Chapter Two",
    'Price': "₹25,000",
  },
  {
    'ItemImages': ImagePath + w8,
    'BrandName': "Quantum",
    'Price': "₹20,000",
  },
  {
    'ItemImages': ImagePath + w9,
    'BrandName': "NoiseFit Evolve 3",
    'Price': "₹3,000",
  },
  {
    'ItemImages': ImagePath + w10,
    'BrandName': "Supernova",
    'Price': "₹19,000",
  },
];

List<Map> CartList = [
  {
    'ItemImages': ImagePath + Mobile1,
    'BrandName': "Apple 14 Pro Max",
    'Price': "₹1,44,999",
  },
  {
    'ItemImages': ImagePath + MB1,
    'BrandName': "MacBook Pro M2 Chip",
    'Price': "₹1,30,000",
  },
  {
    'ItemImages': ImagePath + MB1,
    'BrandName': "MacBook Pro M2 Chip",
    'Price': "₹1,30,000",
  },
  {
    'ItemImages': ImagePath + Mobile3,
    'BrandName': "Oppo A5 s",
    'Price': "₹22,000",
  },
  {
    'ItemImages': ImagePath + w9,
    'BrandName': "NoiseFit Evolve 3",
    'Price': "₹3,000",
  },
  {
    'ItemImages': ImagePath + w9,
    'BrandName': "NoiseFit Evolve 3",
    'Price': "₹3,000",
  },
  {
    'ItemImages': ImagePath + MB8,
    'BrandName': "HP 15s- Ryzen 5-5500U 8GB RAM",
    'Price': "₹54,000",
  },
  {
    'ItemImages': ImagePath + MB10,
    'BrandName': "ASUS VivoBook 14",
    'Price': "₹35,000",
  },
  {
    'ItemImages': ImagePath + i4,
    'BrandName': "Amazon Fire 7",
    'Price': "₹1,20,000",
  },
];

List<Map> Suggested = [
  {
    'ItemImages': ImagePath + MB9,
    'BrandName': "Lenovo IdeaPad 3 11th Gen Intel Core i3",
    'Price': "₹60,000",
  },
  {
    'ItemImages': ImagePath + i9,
    'BrandName': "Lenovo Tab M10 HD 2nd Gen",
    'Price': "₹35,000",
  },
  {
    'ItemImages': ImagePath + MB9,
    'BrandName': "Lenovo IdeaPad 3 11th Gen Intel Core i3",
    'Price': "₹60,000",
  },
  {
    'ItemImages': ImagePath + Mobile3,
    'BrandName': "Oppo A5 s",
    'Price': "₹22,000",
  },
  {
    'ItemImages': ImagePath + Mobile4,
    'BrandName': "Samsung S23 Ultra",
    'Price': "₹1,20,000",
  },
  {
    'ItemImages': ImagePath + MB10,
    'BrandName': "ASUS VivoBook 14",
    'Price': "₹35,000",
  },
  {
    'ItemImages': ImagePath + i10,
    'BrandName': "Lenovo M8 Hd 2Nd Gen Tab",
    'Price': "₹17,000",
  },
  {
    'ItemImages': ImagePath + MB10,
    'BrandName': "ASUS VivoBook 14",
    'Price': "₹35,000",
  },
];

