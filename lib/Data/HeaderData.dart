import 'package:flutter/material.dart';

List<String> category = [
  "POSTS",
  "FIND PROFESSIONALS",
  "DESIGN IDEAS",
  "MORE",
];
List<Color> color = [
  Colors.lightBlueAccent,
  Colors.green.shade700,
  Colors.pinkAccent.shade100,
  Colors.blueAccent,
];
List<Color> textColor = [
  Color(0xFFED0641),
  Colors.blueAccent,
  Colors.pinkAccent.shade700,
  Colors.pinkAccent.shade100,
];

List<IconData> icondata = [
  Icons.post_add_outlined,
  Icons.person_pin_outlined,
  Icons.lightbulb_outline_rounded,
  Icons.more
];

int? selectedIndex;
List<dynamic> dataList = [
  
  {
    "title": "Posts",
    "items": [
      "Kitchen And Dinning",
      "kitchen",
      "Modular Kitchen",
      "Dining Room",
      "Home Bar",
    ],
  },
  {
    "title": "Find Professionals",
    "items": [
      "Interior Designers",
      "Architects",
      "Landscape Architects",
      "Home Builders",
      "Modular Furniture",
      "General Contractor"
    ],
  },
  {
    "title": "Design Ideas",
    "items": [
      "Flooring Designs",
      "Dinning Room Design",
      "Item 3",
      "Item 4",
      "Item 5",
      "Item 6",
      "Item 7",
    ],
  },
  {
    "title": "More",
    "items": [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
    ],
  },
];
