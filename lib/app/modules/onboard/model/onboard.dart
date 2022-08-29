import '../../../util/images.dart';

class OnBoardModel {
  String image;
  String title;
  String content;
  OnBoardModel({
    required this.content,
    required this.image,
    required this.title,
  });
}

final List<OnBoardModel> obBoardList = [
  OnBoardModel(
    content: 'Book Venues, Experience & Events, Find academies & have your week started',
    image: MyImages.onBoard1,
    title: 'Discover Something Everyday',
  ),
  OnBoardModel(
    content: 'Book Venues, Experience & Events, Find academies & have your week started',
    image: MyImages.onBoard2,
    title: 'Discover Something Everyday',
  ),
  OnBoardModel(
    content: 'Book Venues, Experience & Events, Find academies & have your week started',
    image: MyImages.onBoard3,
    title: 'Discover Something Everyday',
  ),
];
