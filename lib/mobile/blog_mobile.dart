import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:profile_me/components.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  // List title = ["Who is Dash?", "Who is Dash 1?"];
  // List body = ["Well", "google it"];

  // void article() async {
  //   await FirebaseFirestore.instance
  //       .collection("articles")
  //       .get()
  //       .then((querySnapshot) {
  //     querySnapshot.docs.reversed.forEach((element) {
  //       // print(element.data()['title']);
  //     });
  //   });
  // }

  void streamArticle() async {
    var logger = Logger();
    await for (var snapshot
        in FirebaseFirestore.instance.collection("articles").snapshots()) {
      for (var title in snapshot.docs.reversed) {
        logger.d(title.data()['title']);
      }
    }
  }

  @override
  void initState() {
    streamArticle();
    // article();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset(
                    'assets/profile2-circle.png',
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              TabsMobile(text: "Home", route: '/'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blog", route: '/blog'),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  urlLauncher("assets/instagram.svg", "https://instagram.com"),
                  urlLauncher("assets/twitter.svg", "https://x.com"),
                  urlLauncher("github.svg", "https://github.com"),
                ],
              ),
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: AbelCustom(
                      text: "Welcome to my blog",
                      size: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Image.asset(
                    "assets/blog.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("articles")
                .orderBy("title", descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    DocumentSnapshot documentSnapshot =
                        snapshot.data!.docs[index];
                    return BlogPost(
                        title: documentSnapshot["title"],
                        body: documentSnapshot["body"],
                        left: 20.0,
                        right: 20.0,
                        top: 30.0,
                        padding: 10.0);
                  },
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
