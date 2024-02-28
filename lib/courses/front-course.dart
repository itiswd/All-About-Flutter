// ignore_for_file: file_name, file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class FrontCourse extends StatefulWidget {
  const FrontCourse({super.key});

  @override
  State<FrontCourse> createState() => _FrontCourseState();
}

class _FrontCourseState extends State<FrontCourse> {
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
            'Front-End Development',
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
              'https://www.youtube.com/playlist?list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji',
              'HTML',
              'https://cdn-icons-png.flaticon.com/512/5968/5968267.png'),
          newMethoditem001(
              'https://www.youtube.com/playlist?list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe',
              'CSS',
              'https://cdn-icons-png.flaticon.com/128/5968/5968242.png'),
          newMethoditem001(
            'https://www.youtube.com/playlist?list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv',
            'JavaScript',
            'https://pluspng.com/img-png/logo-javascript-png-java-script-js-logo-format-ai-javascript-logo-vector-png-213.png',
          )
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
              'https://cdn-icons-png.flaticon.com/512/7991/7991055.png',
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
                      width: 8,
                    ),
                    CachedNetworkImage(
                      imageUrl: image01,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      width: 8,
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
