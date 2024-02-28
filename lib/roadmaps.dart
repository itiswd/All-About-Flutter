import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class RoadMaps extends StatefulWidget {
  const RoadMaps({super.key});

  @override
  State<RoadMaps> createState() => _RoadMapsState();
}

class _RoadMapsState extends State<RoadMaps> {
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
        title: const Text(
          'Road Maps',
          style: TextStyle(
            fontFamily: 'AbrilFatface-Regular',
            fontSize: 32,
          ),
        ),
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.maybePop(context);
              });
            },
            child: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('front-r');
              });
            },
            child: newMethod002(
              'Front-End\nDevelopment',
              'https://cdn-icons-png.flaticon.com/512/2620/2620971.png',
              'https://cdn-icons-png.flaticon.com/512/5112/5112637.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('flutter-r');
              });
            },
            child: newMethod002(
              'Flutter\nDevelopment',
              'https://startupinstitute.pk/wp-content/uploads/2021/01/flutter-500x500.png',
              'https://cdn-icons-png.flaticon.com/512/5112/5112637.png',
            ),
          ),
          // newMethod002(
          //   'Cyber\nSecurity',
          //   'https://cdn-icons-png.flaticon.com/512/4744/4744315.png',
          //   'https://cdn-icons-png.flaticon.com/512/5112/5112637.png',
          // ),
          // newMethod002(
          //   'Ui/Ux\nDesign',
          //   'https://cdn-icons-png.flaticon.com/512/1260/1260206.png',
          //   'https://cdn-icons-png.flaticon.com/512/5112/5112637.png',
          // ),
        ],
      ),
    );
  }

  Container newMethod002(String name01, String imagee, String image01) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              image01,
            ),
            alignment: Alignment.topRight,
            opacity: 0.19,
            fit: BoxFit.fitHeight,
          ),
          color: const Color(0xff8d99ae),
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.only(
          right: 24,
          left: 24,
          top: 12,
          bottom: 12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imagee,
                  width: 75,
                  height: 75,
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  name01,
                  style: const TextStyle(
                    fontFamily: 'AbrilFatface-Regular',
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
