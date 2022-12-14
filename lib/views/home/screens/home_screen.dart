import 'package:flutter/material.dart';

import 'package:yoga_app/constants/widgets/text_style.dart';
import 'package:yoga_app/model/yoga_model.dart';
import 'package:yoga_app/services/yoga_database.dart';

import 'package:yoga_app/views/home/screens/startup_screen.dart';
import 'package:yoga_app/views/home/widgets/custom_appbar.dart';
import 'package:yoga_app/views/home/widgets/custom_drawer.dart';
import 'package:yoga_app/views/home/widgets/home_content.dart';
import 'package:yoga_app/views/home/widgets/yoga_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  Future makeYogaEntry(Yoga yoga, String TableName) async {
    await YogaDatabase.instance.insert(yoga, TableName);
  }

  Future makeYogaSumEntry(YogaSummary yogaSummary) async {
    await YogaDatabase.instance.insertYogaSummary(yogaSummary);
  }

  @override
  void initState() {
    // implement initState

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 0),
    );
    super.initState();
    makeYogaSumEntry(
      YogaSummary(
          YogaWorkOutName: YogaModel.YogaTable1,
          BackImg: "BACKIMGURL",
          TimeTaken: "36",
          TotalNoOfWork: "12"),
    );
    makeYogaEntry(
        Yoga(
            seconds: true,
            yogaTitle: "Anulom Vilom",
            yogaImgUrl: "DUMMYURL",
            secondsOrTimes: '30'),
        YogaModel.YogaTable1);
    makeYogaEntry(
        Yoga(
            seconds: true,
            yogaTitle: "Kapalbhati",
            yogaImgUrl: "DUMMYURL1",
            secondsOrTimes: '15'),
        YogaModel.YogaTable1);
    makeYogaEntry(
        Yoga(
            seconds: true,
            yogaTitle: "Pranam",
            yogaImgUrl: "DUMMYURL2",
            secondsOrTimes: '12'),
        YogaModel.YogaTable1);
    makeYogaEntry(
        Yoga(
            seconds: true,
            yogaTitle: "Shwasari",
            yogaImgUrl: "DUMMYURL3",
            secondsOrTimes: '16'),
        YogaModel.YogaTable1);
  }

  bool scrollListener(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
        onNotification: scrollListener,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            // home content
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 150, 50, 40),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  HomeContent(
                                    downText: 'Streak',
                                    upperText: '1',
                                  ),
                                  HomeContent(
                                    downText: 'kCal',
                                    upperText: '120',
                                  ),
                                  HomeContent(
                                    downText: 'Minutes',
                                    upperText: '26',
                                  ),
                                ],
                              ),
                            ),
                            // home content end
                            // yoga section
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // yoga for all title
                                  Container(
                                    padding: EdgeInsets.only(bottom: 6),
                                    width: size.width,
                                    child: Text(
                                      'Yoga For All',
                                      style: textStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  // yoga for all title end
                                  // yoga content
                                  InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StartUp(),
                                      ),
                                    ),
                                    child: YogaContent(
                                      image:
                                          'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80',
                                      yogaTitle: 'Yoga For Beginners',
                                      yogaSubtitle: 'Last Time : 2 Feb',
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  YogaContent(
                                      image:
                                          'https://images.unsplash.com/photo-1510894347713-fc3ed6fdf539?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                      yogaTitle: 'Weight Loss Yoga',
                                      yogaSubtitle: 'Last Time : 22 Jan'),
                                  SizedBox(height: 15),
                                  YogaContent(
                                      image:
                                          'https://images.unsplash.com/photo-1573590330099-d6c7355ec595?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                      yogaTitle: 'Suryanamaskar',
                                      yogaSubtitle: 'Last Time : Yesterday'),
                                  SizedBox(height: 20),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Choose Your Type',
                                      style: textStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  YogaContent(
                                      image:
                                          'https://images.unsplash.com/photo-1599901860904-17e6ed7083a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                      yogaTitle: 'Power Yoga',
                                      yogaSubtitle: 'Last Time : Yesterday'),
                                  SizedBox(height: 15),
                                  YogaContent(
                                    image:
                                        'https://media.istockphoto.com/photos/young-woman-in-yoga-pose-using-laptop-at-home-picture-id1334071264?b=1&k=20&m=1334071264&s=170667a&w=0&h=0wnQzJJJIA5NMo6dOmVepS6mXC0eqLjI26ADDlIK4Lg=',
                                    yogaTitle: 'Breathing Yoga',
                                    yogaSubtitle: 'Last Time : 29 Jan',
                                  ),
                                  SizedBox(height: 15),
                                  YogaContent(
                                    image:
                                        'https://images.unsplash.com/photo-1556816723-1ce827b9cfbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=792&q=80',
                                    yogaTitle: 'Increase Flexibility',
                                    yogaSubtitle: 'Last Time : 29 Jan',
                                  ),
                                  // yoga content end
                                ],
                              ),
                            ),

                            // yoga section end
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomAppBar(
                    animationController: _animationController,
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    colorsTween: _colorTween,
                    drawerTween: _drawerTween,
                    homeTween: _homeTween,
                    iconTween: _iconTween,
                    yogaTween: _yogaTween,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
