import 'package:flutter/material.dart';
import 'package:wallpaperapp/widgets/image_widget.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // custom app bar
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Text(
                    'Favourite',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      shadows: [
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3, -3),
                            blurRadius: 2,
                            spreadRadius: 10),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(3, 3),
                            blurRadius: 2,
                            spreadRadius: 22),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "favPage");
                    },
                    child: const Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            //search bar widget

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.all(8),
              child: Text(
                'Your Favourite:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  shadows: [
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-3, -3),
                        blurRadius: 2,
                        spreadRadius: 10),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(3, 3),
                        blurRadius: 2,
                        spreadRadius: 22),
                  ],
                ),
              ),
            ),

            const Flexible(
              flex: 1,
              child: ImageWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
