import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 36,
            ),
            onPressed: () {
              // open drawer
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.person_outline_rounded,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // account button tapped
              },
            ),
          )
        ],
      );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}

Widget myIconButton(Widget icon, String pressText) {
  return IconButton(
    iconSize: 20,
    icon: icon,
    onPressed: () {
      print(pressText);
    },
  );
}
