// ignore_for_file: file_name, file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class FlutterCourse extends StatefulWidget {
  const FlutterCourse({super.key});

  @override
  State<FlutterCourse> createState() => _FlutterCourseState();
}

class _FlutterCourseState extends State<FlutterCourse> {
  dynamic linkk;
  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(linkk))) {
      throw 'Could not launch ${Uri.parse(linkk)}';
    }
  }

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
            'Flutter Development',
            style: TextStyle(
              fontFamily: 'AbrilFatface-Regular',
              fontSize: 28,
            ),
          ),
        ),
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          newMethoditem001(
              'https://www.youtube.com/playlist?list=PL93xoMrxRJIsYc9L0XBSaiiuq01JTMQ_o',
              'Dart',
              'https://th.bing.com/th/id/R.6e59186bcba50235160fdb865f205656?rik=6zW6N6nU9HfxhQ&pid=ImgRaw&r=0'),
          newMethoditem001(
              'https://www.youtube.com/playlist?list=PL93xoMrxRJItdRumqolHX0UT-LHK8_39N',
              'Flutter',
              'https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_flutter_icon_130599.png'),
          newMethoditem001(
            'https://www.youtube.com/playlist?list=PL93xoMrxRJIve-GSKU61X6okh5pncG0sH',
            'Firebase',
            'https://4.bp.blogspot.com/-E4jSTev5hRQ/W4ueDh_vDDI/AAAAAAABcpg/2kFnCLk0E6sUz1eigQ5G8mJJvtRn3vy3wCLcBGAs/s1600/5847f40ecef1014c0b5e488a.png',
          ),
        ],
      )),
    );
  }

  GestureDetector newMethoditem001(String lin, String name01, String image01) {
    return GestureDetector(
      onTap: () {
        setState(() {
          linkk = lin;
          _launchUrl();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: CachedNetworkImageProvider(
              'https://acviss.com/wp-content/uploads/2021/03/Artboard-1ab.png',
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
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    CachedNetworkImage(
                      imageUrl: image01,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      name01,
                      style: const TextStyle(
                        fontFamily: 'AbrilFatface-Regular',
                        fontSize: 42,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Go to course..',
                  style: TextStyle(
                    fontFamily: 'AbrilFatface-Regular',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
