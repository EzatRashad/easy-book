import 'package:mvvm_bookly/core/utils/app_images.dart';

class BoardingModel {
  final String image;
  final String title;
  final String subTitle;
  BoardingModel(
      {required this.image, required this.title, required this.subTitle});
}
List<BoardingModel> board = [
    BoardingModel(
      image: Assets.assetsImagesOnBoarding1,
      title: 'Only Books Can Help You',
      subTitle:
          'Books can help you to increase your knowledge and become more successfully.',
    ),
    BoardingModel(
      image: Assets.assetsImagesOnBoarding2,
      title: 'Learn Smartly',
      subTitle:
          'All books are storage in cloud and you can access all of them from your laptop or PC. ',
    ),
  ];