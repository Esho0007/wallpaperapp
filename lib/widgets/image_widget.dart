import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:wallpaperapp/pages/image_page.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
        children: [
          for (int i = 1; i < 9; i++)
            GestureDetector(
              onTap: () {
                context.pushTransparentRoute(ImagePage());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: '$i',
                    child: Image.asset(
                      'assets/images/$i.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
