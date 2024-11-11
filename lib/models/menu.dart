import 'package:goodcoffee/values/string_app.dart';

class MenuData {
  final String title, image;

  MenuData({required this.title, required this.image});
}

final List<MenuData> menu = [
  MenuData(
    title: coffeesStr,
    image: 'assets/images/menu1.png',
  ),
  MenuData(
    title: drinksStr,
    image: 'assets/images/menu2.png',
  ),
  MenuData(
    title: cakesStr,
    image: 'assets/images/menu3.png',
  ),
  MenuData(
    title: sandwichesStr,
    image: 'assets/images/menu4.png',
  ),
];
