import 'package:udemyhomepage/components/course_item.dart';

import '../components/category.dart';
import '../models/item.dart';

  List<Category> categoryList1=[
    Category(title: 'Development'),
   Category(title: 'IT & Software'),
    Category(title: 'Business'),
    Category(title: 'Finance & Accounting'),
 ];
List<Category> categoryList2=[
  Category(title: 'Business'),
  Category(title: 'Finance & Accounting'),
  Category(title: 'Development'),
  Category(title: 'IT & Software'),
];


  const List<CourseItem> courseList = [
    CourseItem(item: Item(
      image: 'assets/course1.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      rateNumber: 5000,
      rate: 5,
      price: 2000,
    )
    ),
    CourseItem(item:Item(
      image: 'assets/course2.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      rateNumber: 5000,
      rate: 5,
      price: 2000,
    )),
    CourseItem(item:Item(
      image: 'assets/course3.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      rateNumber: 5000,
      rate: 5,
      price: 2000,
    )),
    CourseItem(item:Item(
      image: 'assets/course4.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      rateNumber: 5000,
      rate: 5,
      price: 2000,
    )),
    CourseItem(item:Item(
      image: 'assets/course5.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      rateNumber: 5000,
      rate: 5,
      price: 2000,
    )),
  ];

const List<CourseItem> courseList2 = [
  CourseItem(item:Item(
    image: 'assets/course4.jpg',
    title: 'Flutter Course',
    author: 'Aiman Esmaiel',
    rateNumber: 5000,
    rate: 5,
    price: 2000,
  )),
  CourseItem(item:Item(
    image: 'assets/course5.jpg',
    title: 'Flutter Course',
    author: 'Aiman Esmaiel',
    rateNumber: 5000,
    rate: 5,
    price: 2000,
  )),
  CourseItem(item:Item(
    image: 'assets/course3.jpg',
    title: 'Flutter Course',
    author: 'Aiman Esmaiel',
    rateNumber: 5000,
    rate: 5,
    price: 2000,
  )),

  CourseItem(item: Item(
    image: 'assets/course1.jpg',
    title: 'Flutter Course',
    author: 'Aiman Esmaiel',
    rateNumber: 5000,
    rate: 5,
    price: 2000,
  )
  ),
  CourseItem(item:Item(
    image: 'assets/course2.jpg',
    title: 'Flutter Course',
    author: 'Aiman Esmaiel',
    rateNumber: 5000,
    rate: 5,
    price: 2000,
  )),

];

