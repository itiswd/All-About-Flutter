// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrontEnd extends StatefulWidget {
  const FrontEnd({super.key});

  @override
  State<FrontEnd> createState() => _FrontEndState();
}

class _FrontEndState extends State<FrontEnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newMethodhead('Front-end Developer RoadMap:'),
            newMethodtext(
                'To be a successful front-end developer, you must have a strong understanding of HTML, CSS, and JavaScript. You should also be familiar with frameworks such as React or Angular and libraries such as jQuery.'),
            newMethodhead('Web Development Basics:'),
            newMethodtext(
                'If you want to become a web developer, it\'s pretty apparent that you should know the basics of HTML, CSS, and JavaScript. These are the three most important technologies for building web applications, and they\'re not going to go away anytime soon.'),
            newMethodtext(
                '\nThere\'s more to becoming a web developer than just knowing these technologies. You also need to be able to work with various tools and frameworks and have a good understanding of how the web works under the hood. But if you\'re starting, HTML, CSS, and JavaScript are the three things you should focus on first.'),
            newMethodhead('HTML and CSS:'),
            newMethodtext(
                'HTML and CSS are the basic building blocks of any website. These two languages are essential for any web developer to learn. Without these two languages, a website would be a bunch of unorganized text and images. But with HTML and CSS, you can control your site\'s layout, font, colors, and overall look.'),
            newMethodtext(
                '\nIf you\'re starting, don\'t worry about learning all the different tags and properties. Just focus on getting a basic understanding of how the two languages work together.'),
            newMethodhead('JavaScript:'),
            newMethodtext(
                'Object-oriented programming has four main pillars: abstraction, encapsulation, polymorphism, and inheritance. Each concept represents a different way of thinking about and approaching code.'),
            newMethodrichtext('\nAbstraction',
                ' is the process of hiding implementation details from the outside world. The goal is to make the code simpler to understand and work with by isolating its complexity. In many cases, this means creating interfaces that expose only the functionality needed by the principle that uses them.'),
            newMethodrichtext('\nEncapsulation',
                ' is the process of bundling together data and functionality into a single unit. This helps to reduce complexity by keeping related code together in one place. It also makes it easier to reuse code since all the necessary pieces are self-contained.'),
            newMethodrichtext('\nPolymorphism',
                ' is the ability of an object to take on different forms depending on the context in which it is used.'),
            newMethodrichtext('\nInheritance',
                ' and polymorphism are commonly used together to create a system that is modular, reusable, and extensible (i.e., the ability to add new functionality).'),
            newMethodhead('TypeScript:'),
            newMethodtext(
                'TypeScript is a typed superset of JavaScript that compiles to plain JavaScript. That means that any valid JavaScript code is also valid TypeScript code. But TypeScript adds some extra features that make it more powerful than JavaScript. For example, TypeScript supports classes and modules, which helps to organize code better. And because TypeScript is statically typed, it can catch errors at compile time instead of runtime.'),
            newMethodtext(
                '\nSo why isn\'t TypeScript more popular than JavaScript? One reason might be that it\'s not as well known'),
            newMethodhead('Angular:'),
            newMethodtext(
                'Most website development uses a combination of HTML, CSS, and JavaScript. However, this was not always the case. In the early days of the internet, most websites were built using only HTML and CSS. This was because JavaScript was not yet widely used and supported by web browsers.'),
            newMethodtext(
                '\nToday, JavaScript is one of the most popular programming languages in the world. Millions of developers use it to build interactive web applications. To be a web developer, you need to learn JavaScript.'),
            newMethodtext(
                '\nAngular is a popular front-end framework for web development. The framework is backed by Google, which means it is constantly updated with the latest web technologies. This makes Angular a good choice for any modern web developer.'),
            newMethodhead('React JS:'),
            newMethodtext(
                'Angular and React are both popular libraries for developing web applications. They both allow you to create dynamic and responsive user interfaces. Angular is a full-fledged framework, while React is a library. This means that Angular comes with more built-in features and functionality than React. However, React is generally easier to learn and use than Angular.'),
            newMethodtext(
                '\nReact is a popular JavaScript library for developing web applications. Like Angular, React allows you to create reusable components and manage the state of your application. React is typically used with a backend framework such as Node.js or Express.'),
            newMethodhead('Vue.js:'),
            newMethodtext(
                'The Vue.JS framework has gained popularity in the past year among web developers. This JavaScript framework is easy to learn and use and has a small footprint compared to other frameworks like AngularJS. Additionally, Vue.JS is capable of two-way data binding and can be used for front-end and back-end development. More people are recommending Vue.JS as an excellent option for web development projects with its growing popularity.'),
            newMethodtext(
                '\nI think part of the reason is that it is lightweight, easy to use, and simple to start with. Another great thing about it is that you can use it as a progressive framework, which means you can start using it on existing projects without having to rewrite everything from scratch. That makes adoption a lot easier for companies already using different frameworks.'),
            newMethodhead('Conclusion:'),
            newMethodtext(
                'In the End, There are many skills that you will need to learn. This roadmap provides a great starting point, but remember that learning is a never-ending process. Stay motivated and always be willing to learn new things, and you\'ll be well on your way to a successful front-end developer career.'),
            newMethodhead('Roadmap Infographic:'),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'front-rp');
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

  Padding newMethodrichtext(String bold, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: RichText(
        text: TextSpan(
            text: bold,
            style: GoogleFonts.robotoCondensed(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: text,
                style: GoogleFonts.robotoCondensed(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              )
            ]),
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

class RoadPhotoWeb extends StatefulWidget {
  const RoadPhotoWeb({super.key});

  @override
  State<RoadPhotoWeb> createState() => _RoadPhotoWebState();
}

class _RoadPhotoWebState extends State<RoadPhotoWeb> {
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
                  'https://ares.decipherzone.com/blog-manager/uploads/ckeditor_frontend-developer-roadmap.png',
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
