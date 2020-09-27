class ImageData {
  final String image;

  const ImageData({this.image});
}

class TextData {
  final String food;
  final String ratin;

  const TextData({this.food, this.ratin});
}

const foods = [
  TextData(food: 'Good Thai', ratin: '4.3'),
  TextData(food: 'Sushi Car', ratin: '3.8'),
  TextData(food: 'Blacksmith Cafe', ratin: '4.3'),
  TextData(food: 'Pizza Box', ratin: '4.3'),
];

const meals = [
  ImageData(image: 'assets/images/food1.jpg'),
  ImageData(image: 'assets/images/food3.jpg'),
  ImageData(image: 'assets/images/food4.jpg'),
  ImageData(image: 'assets/images/food2.jpg'),
  ImageData(image: 'assets/images/food6.jpg'),
  ImageData(image: 'assets/images/food5.jpg'),
];

const mostpop = [
  ImageData(image: 'assets/images/food3.jpg'),
  ImageData(image: 'assets/images/food6.jpg'),
  ImageData(image: 'assets/images/food2.jpg'),
  ImageData(image: 'assets/images/food5.jpg'),
  ImageData(image: 'assets/images/food4.jpg'),
  ImageData(image: 'assets/images/food1.jpg'),
];
const suggestion = [
  ImageData(image: 'assets/images/food4.jpg'),
  ImageData(image: 'assets/images/food5.jpg'),
  ImageData(image: 'assets/images/food2.jpg'),
  ImageData(image: 'assets/images/food3.jpg'),
  ImageData(image: 'assets/images/food6.jpg'),
  ImageData(image: 'assets/images/food1.jpg'),
];

const restron = [
  ImageData(image: 'assets/images/rest1.jpg'),
  ImageData(image: 'assets/images/rest2.jpg'),
  ImageData(image: 'assets/images/rest3.jpg'),
  ImageData(image: 'assets/images/rest4.jpg'),
  ImageData(image: 'assets/images/rest5.jpg'),
  ImageData(image: 'assets/images/rest6.jpg'),
  ImageData(image: 'assets/images/rest7.jpg'),
];
