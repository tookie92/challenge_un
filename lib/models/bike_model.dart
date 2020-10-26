import 'package:challenge_un/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class BikeModel{
  final String name;
  final double price;
  final String description;
  final Color color;
  final String imgPath;

  BikeModel({
    this.name,
    this.price,
    this.description,
    this.color,
    this.imgPath
  });


 static List<BikeModel> list = [


   BikeModel(
     name: "Le premier Velo",
     description:
     ' Lorem ipsum dolor sit amet consectetur, adipiscing elit cum imperdiet scelerisque, dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.redColor,
     imgPath: 'un.png',
   ),

   BikeModel(
     name: "Le deuxieme Velo",
     description:
     ' Lorem ipsum dolor sit amet consectetur, adipiscing elit cum imperdiet scelerisque, dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.greenColor,
     imgPath: 'deux.png',
   ),

   BikeModel(
     name: "Le troisieme Velo",
     description:
     ' Lorem ipsum dolor sit amet consectetur, adipiscing elit cum imperdiet scelerisque, dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.yellowColor,
     imgPath: 'trois.png',
   ),

   BikeModel(
     name: "Le quatrieme Velo",
     description:
     ' Lorem ipsum dolor sit amet consectetur, adipiscing elit cum imperdiet scelerisque, dictum rhoncus torquent penatibus.',
     price: 184,
     color: AppColors.blueColor,
     imgPath: 'quatre.png',
   ),
  ];
}