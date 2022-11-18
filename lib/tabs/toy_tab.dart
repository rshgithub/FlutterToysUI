import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ft_toys_ui/utils/toy_title.dart';


class ToyTab extends StatelessWidget {
  // list of donuts
  List toysOnSale = [
    ["Toy 6", "84", Colors.purple, "assets/images/toy6.png"],
    ["Toy 7", "95", Colors.brown, "assets/images/toy7.png"],
    ["Toy 1", "45", Colors.red, "assets/images/toy1.png"],
    ["Toy 2", "84", Colors.purple, "assets/images/toy2.png"],
    ["Toy 4", "36", Colors.blue, "assets/images/toy4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: toysOnSale.length,
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return ToyCard(
          toyFlavor: toysOnSale[index][0],
          toyPrice: toysOnSale[index][1],
          toyColor: toysOnSale[index][2],
          toyImageName: toysOnSale[index][3],
        );
      },
    );
  }
}