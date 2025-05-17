import 'package:food_ninga/constant/image_manger.dart';

class PopulerRestaurantCardModel {
  final String imageCard;
  final String titelText;
  final String subTitel;

  PopulerRestaurantCardModel(
      {required this.imageCard,
      required this.titelText,
      required this.subTitel});
}

List<PopulerRestaurantCardModel> populerRestaurantCardModel = [
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRateRestourantImage,
      titelText: 'titelText',
      subTitel: 'supTitel'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestourantImage1,
      titelText: 'titelText',
      subTitel: 'supTitel'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestourantImage2,
      titelText: 'titelText',
      subTitel: 'supTitel'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestourantImage3,
      titelText: 'titelText',
      subTitel: 'supTitel'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestaurantCheef,
      titelText: 'titelText',
      subTitel: 'supTitel'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kResturantVagan,
      titelText: 'titelText',
      subTitel: 'supTitel'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kResturantImage,
      titelText: 'titelText',
      subTitel: 'supTitel'), PopulerRestaurantCardModel(
      imageCard: ImageManger.kResturantImage,
      titelText: 'titelText',
      subTitel: 'supTitel'), PopulerRestaurantCardModel(
      imageCard: ImageManger.kResturantImage,
      titelText: 'titelText',
      subTitel: 'supTitel'),
];
