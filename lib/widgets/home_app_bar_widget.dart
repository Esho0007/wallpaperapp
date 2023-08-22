import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'appDrawer');
            },
            child: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          Text(
            'DP WallPapers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              shadows: [
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-3, -3),
                    blurRadius: 3,
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
    );
  }
}
