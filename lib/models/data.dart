import 'package:challenge_un/models/bike_model.dart';
import 'package:challenge_un/models/user_model.dart';
import 'package:challenge_un/widgets/app_colors.dart';

final currentUser = User(
  name: "Papa Jo",
  location: "koblenz",
  bikes: [
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
      name: "Mountain Bike",
      description:
      ' Lorem ipsum dolor sit amet consectetur, \n adipiscing elit cum imperdiet scelerisque, \n dictum rhoncus torquent penatibus.',
      price: 200,
      color: AppColors.greenColor,
      imgPath: 'deux.png',
    ),
  ]

);