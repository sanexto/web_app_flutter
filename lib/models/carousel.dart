class CarouselData {
  final int index;
  final String title;
  final String image;
  bool isSelected;

  CarouselData({
    required this.index,
    required this.title,
    required this.image,
    required this.isSelected
  });
}

final List<CarouselData> carousel = [
  CarouselData(
    index: 0,
    title: 'CAFÉS',
    image: 'assets/images/image1.jpg',
    isSelected: true,
  ),
  CarouselData(
    index: 1,
    title: 'POSTRES',
    image: 'assets/images/image2.jpg',
    isSelected: false,
  ),
  CarouselData(
    index: 2,
    title: 'FRAPPÉS',
    image: 'assets/images/image3.jpg',
    isSelected: false,
  ),
  CarouselData(
    index: 3,
    title: 'SMOOTHIES',
    image: 'assets/images/image4.jpg',
    isSelected: false,
  ),
  CarouselData(
    index: 4,
    title: 'TÉS',
    image: 'assets/images/image5.jpg',
    isSelected: false,
  ),
  CarouselData(
    index: 5,
    title: 'TISANA',
    image: 'assets/images/image6.jpg',
    isSelected: false,
  ),
];
