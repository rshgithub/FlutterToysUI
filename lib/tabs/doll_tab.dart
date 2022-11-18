import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/toy_title.dart';

class DollTab extends StatelessWidget {

  List dollsOnSale = [
    ["Toy ", "36", Colors.blue, "assets/images/toy.png"],
    ["Toy 3", "95", Colors.brown, "assets/images/toy3.png"],
    ["Toy 5", "45", Colors.red, "assets/images/toy5.png"],
    ["Toy 8", "95", Colors.brown, "assets/images/toy8.png"],
    ["Toy 5", "45", Colors.red, "assets/images/toy5.png"],

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dollsOnSale.length,
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return ToyCard(
          toyFlavor: dollsOnSale[index][0],
          toyPrice: dollsOnSale[index][1],
          toyColor: dollsOnSale[index][2],
          toyImageName: dollsOnSale[index][3],
        );
      },
    );
  }
}