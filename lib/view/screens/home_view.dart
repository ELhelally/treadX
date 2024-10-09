import 'package:flutter/material.dart';
import 'package:treadx/view/utils/assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          MyCustomAppBar(),
          CardHeader()
        ],
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.menu), Icon(Icons.search)],
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                  colors: [Color(0xff0E107A), Color(0xff0A0A0A)])),
          child: Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18, top: 18),
                    child: Text(
                      'The latest version \n is available',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gruppo',
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 30,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        'explore',
                        style: TextStyle(
                            fontFamily: 'Gruppo',
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const Positioned(
            left: 210,
            bottom: 20,
            child: Expanded(
                child: Image(
              image: AssetImage(Assets.imagesMainShoes),
              height: 200,
              width: 200,
            )))
      ],
    );
  }
}
