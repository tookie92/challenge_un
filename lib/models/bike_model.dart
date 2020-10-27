import 'package:challenge_un/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class BikeModel{
  final int id;
  final String name;
  final double price;
  final String description;
  final Color color;
  final String imgPath;

  BikeModel({
    this.id,
    this.name,
    this.price,
    this.description,
    this.color,
    this.imgPath
  });


 static List<BikeModel> list = [


   BikeModel(
     id: 1,
     name: "Google Campus Bike",
     description:
     ' Lorem ipsum dolor sit amet consectetur, \n adipiscing elit cum imperdiet scelerisque, \n dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.redColor,
     imgPath: 'un.png',
   ),

   BikeModel(
     id: 2,
     name: "Mountain Bike",
     description:
     ' Lorem ipsum dolor sit amet consectetur, \n adipiscing elit cum imperdiet scelerisque, \n dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.greenColor,
     imgPath: 'deux.png',
   ),

   BikeModel(
     id: 3,
     name: "Google Self-drive",
     description:
     ' Lorem ipsum dolor sit amet consectetur, \n adipiscing elit cum imperdiet scelerisque, \n dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.yellowColor,
     imgPath: 'trois.png',
   ),

   BikeModel(
     id: 4,
     name: "Le quatrieme Velo",
     description:
     ' Lorem ipsum dolor sit amet consectetur, \n adipiscing elit cum imperdiet scelerisque, \n dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.blueColor,
     imgPath: 'quatre.png',
   ),
  ];
}