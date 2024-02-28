import 'package:allaboutt/courses.dart';
import 'package:allaboutt/courses/flutter-course.dart';
import 'package:allaboutt/courses/front-course.dart';
import 'package:allaboutt/home.dart';
import 'package:allaboutt/maps/flutter_map.dart';
import 'package:allaboutt/maps/front-end.dart';
import 'package:allaboutt/roadmaps.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Home(),
      routes: {
        'rm': (context) {
          return const RoadMaps();
        },
        'cc': (context) {
          return const Courses();
        },
        'front-r': (context) {
          return const FrontEnd();
        },
        'front-c': (context) {
          return const FrontCourse();
        },
        'front-rp': (context) {
          return const RoadPhotoWeb();
        },
        'flutter-r': (context) {
          return const FlutterMap();
        },
        'flutter-rp': (context) {
          return const RoadMapPhotoFlutter();
        },
        'flutter-c': (context) {
          return const FlutterCourse();
        }
      },
    );
  }
}
