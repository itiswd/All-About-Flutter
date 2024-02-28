import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterMap extends StatefulWidget {
  const FlutterMap({super.key});

  @override
  State<FlutterMap> createState() => _FlutterMapState();
}

class _FlutterMapState extends State<FlutterMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newMethodhead('Flutter Roadmap:'),
            newMethodtext(
              'Flutter is a cross-platform mobile app development framework. It is developed by Google.It is used to develop native apps for Android, iOS, Windows, Linux, Mac, Google Fuchsia, and the web from a single codebase. It is an open-source framework. It is used to develop high-performance and high-quality native apps.',
            ),
            newMethodhead('Advantages of Flutter:'),
            newMethodtext(
              '~ It is an open-source framework.\n\n~ It is used to develop high-performance and high-quality native apps.\n\n~ It is used to develop apps for Android, iOS, Windows, Linux, Mac, Google Fuchsia, and the web from a single codebase.',
            ),
            newMethodhead('Now let\'s see the roadmap:'),
            newMethodhead('Step 1: Learn Basic Dart:'),
            newMethodtext(
                'Solid understanding of Dart is required to build quality apps with flutter. So, first, you need to learn basic Dart.\n\nHere are some topics you need to learn:\n'),
            newMethodtext(
                'Basic Hello World Program.\n\n~ Variables and Constants.\n\n~ Conditions and Loops.\n\n~ Lists and methods of list.\n\n~ Methods and types.\n\n~ Object-Oriented Programming.\n\n~ Null Safety.\n\n~ Asynchronous Programming.'),
            newMethodhead('Step 2: Learn Basics of Flutter, Widgets:'),
            newMethodtext(
              'After learning basic Dart, you need to learn basics of Flutter. Learn about widgets. Start by learning widegts like MaterialApp AppBar, Text, TextField, Button, Image, Row, Column etc. Start creating simple apps. Also learn to use different fonts, colors, and images using Flutter.',
            ),
            newMethodhead('Step 3: Learn Navigation & Functionalities:'),
            newMethodtext(
                'After learning basics of Flutter, you need to learn about navigation and functionalities. Learn about navigation like Navigator.push, Navigator.pop, Navigator.pushNamed, etc. Create two text fields and implement functionalities like add, subtract.'),
            newMethodhead('Step 4: Learn Flutter Package:'),
            newMethodtext(
                'Flutter contains many packages that help you to build apps faster. Learn about packages like http, shared_preferences, sqflite, etc. Learn about how to use them.'),
            newMethodhead('Step 5: Learn to Use API:'),
            newMethodtext(
                'API is essential to build apps. Learn about how to use API. Learn about how to use API in flutter. Learn about how to use API in flutter using http package.'),
            newMethodhead('Step 6: Learn Shared Preferences & SQFLite:'),
            newMethodtext(
                'Shared Preferences and SQFLite are used to store data locally. Learn about how to use Shared Preferences and SQFLite.'),
            newMethodhead('Step 7: Learn State Management:'),
            newMethodtext(
                'State management is essential to build apps. Learn about how to use state management in flutter. Learn about how to use state management in flutter using Provider, Bloc, GetX, etc.'),
            newMethodhead('Step 8: Learn to Use Firebase:'),
            newMethodtext(
                'Firebase is a backend service. It is used to build apps faster. Learn about how to use Firebase in flutter. Learn about how to use Firebase in flutter using firebase_auth, firebase_core, firebase_storage, etc.'),
            newMethodhead('Step 9: Learn to Use Google Maps:'),
            newMethodtext(
                'Google Maps is used to build apps faster. Learn about how to use Google Maps in flutter. Learn about how to use Google Maps in flutter using google_maps_flutter, etc.'),
            newMethodhead('Step 10: Learn to Use CI/CD:'),
            newMethodtext(
                'CI/CD is used to build apps faster. Learn about how to use CI/CD in flutter. Learn about how to use CI/CD in flutter using GitHub Actions, etc.'),
            newMethodhead('Step 11: Learn Animations and Custom Painters:'),
            newMethodtext(
                'Animations and Custom Painters are used to build apps faster. Learn about how to use Animations and Custom Painters in flutter. Learn about how to use Animations and Custom Painters in flutter using AnimatedContainer, etc.'),
            newMethodhead('Roadmap Infographic:'),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'flutter-rp');
                });
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff2b2d42),
                  ),
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16),
                  child: Text(
                    'Click Here!',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  Padding newMethodtext(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Text(
        text,
        style: GoogleFonts.robotoCondensed(
          fontSize: 16,
        ),
      ),
    );
  }

  Padding newMethodhead(String head) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        head,
        style: GoogleFonts.robotoCondensed(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class RoadMapPhotoFlutter extends StatefulWidget {
  const RoadMapPhotoFlutter({super.key});

  @override
  State<RoadMapPhotoFlutter> createState() => _RoadMapPhotoFlutterState();
}

class _RoadMapPhotoFlutterState extends State<RoadMapPhotoFlutter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff2b2d42),
          toolbarHeight: 75,
          title: const Center(
            child: Text(
              'Roadmap Infographic',
              style: TextStyle(
                fontFamily: 'AbrilFatface-Regular',
                fontSize: 28,
              ),
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
        body: InteractiveViewer(
          maxScale: 15,
          child: Center(
            child: CachedNetworkImage(
              imageUrl:
                  'https://user-images.githubusercontent.com/26745548/143763624-8b33d260-bd4f-441b-879f-3a3ac20063b2.jpeg',
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Center(
                child: Icon(
                  Icons.error,
                  size: 100,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//flutter roadmap
//https://user-images.githubusercontent.com/26745548/143763624-8b33d260-bd4f-441b-879f-3a3ac20063b2.jpeg
