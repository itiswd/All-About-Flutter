import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Colors.white,
          Color(0xff2b2d42),
          Color(0xff2b2d42),
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff2b2d42),
        toolbarHeight: 75,
        title: const Center(
          child: Text(
            'All About',
            style: TextStyle(
              fontFamily: 'AbrilFatface-Regular',
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('cc');
                });
              },
              child: itemContainer(
                'Courses',
                'https://cdn-icons-png.flaticon.com/512/2231/2231672.png',
              )),
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('rm');
                });
              },
              child: itemContainer(
                'Road Maps',
                'https://cdn-icons-png.flaticon.com/512/7402/7402503.png',
              )),
        ],
      ),
    );
  }

  Container itemContainer(String name01, String imagee) {
    return Container(
        height: 148,
        decoration: BoxDecoration(
          color: const Color(0xff8d99ae),
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: CachedNetworkImageProvider(imagee),
            opacity: 0.19,
            fit: BoxFit.scaleDown,
          ),
        ),
        margin: const EdgeInsets.only(
          top: 16,
          right: 24,
          left: 24,
        ),
        child: Center(
          child: Text(
            name01,
            style: const TextStyle(
              fontFamily: 'AbrilFatface-Regular',
              fontSize: 42,
              color: Colors.black,
            ),
          ),
        ));
  }
}
