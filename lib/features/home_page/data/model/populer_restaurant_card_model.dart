import '../../../../constant/image_manger.dart';

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
      imageCard: ImageManger.kResturantImage,
      titelText: 'Good Food',
      subTitel: '22 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestourantImage1,
      titelText: 'Healthy Food',
      subTitel: '24 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestourantImage2,
      titelText: 'Smart Resto',
      subTitel: '5 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestourantImage3,
      titelText: 'Vegan Resto',
      subTitel: '9 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kOne, titelText: 'Good Food', subTitel: '13 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kResturantVagan,
      titelText: 'Healthy Food',
      subTitel: '18 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kRestaurantCheef,
      titelText: 'Smart Resto',
      subTitel: '17 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kTwo,
      titelText: 'Vegan Resto',
      subTitel: '19 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kThree,
      titelText: 'Good Food',
      subTitel: '8 Mins'),
  PopulerRestaurantCardModel(
      imageCard: ImageManger.kPizzaEmoji,
      titelText: 'pizza',
      subTitel: '6 Mins'),
];
