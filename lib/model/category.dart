
class Category{
  final String title;
  final String image;

  Category({required this.title, required this.image});

}

final List<Category> categories = [
  Category(title: 'T-Shirts', image: "assets/categories/tshirt.png"),
  Category(title: 'Shoes', image: "assets/categories/shoe.png"),
  Category(title: 'Shorts', image: "assets/categories/short.png"),
  Category(title: 'Trousers', image: "assets/categories/trouser.png"),
  Category(title: 'Caps', image: "assets/categories/cap.png"),
];