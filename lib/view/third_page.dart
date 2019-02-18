import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_night/view/fourth_page.dart';
import 'package:movie_night/reveal/reveal_painter.dart';
import 'package:movie_night/utils/picker.dart';
import "package:nima/nima_actor.dart";

class ThirdPage extends StatefulWidget {
  ThirdPage({Key key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _animationName = "Idle";
  List<String> actorList = [
    'Leonardo Dicaprio',
    'Cameron Diaz',
    'Angelina Jolie',
    'Emma Watson',
    'Chole Grace',
    'Seth Rogan',
    'Daniel Radcliff',
    'Johny Depp',
    'Brad Pit',
    'Christian Bale',
    'Paul Walker',
    'Margot Robbie',
    'Tobie Maguire'
  ];
  FixedExtentScrollController scrollController;
  PageController _pageController;
  AnimationController _containerController;
  Animation<double> _animation;
  bool isRevealed = false;
  double _fraction = 0.0;
  int page;

  void initState() {
    super.initState();
    page = actorList.length ~/ 2;
    scrollController = FixedExtentScrollController(initialItem: page);
    _pageController = new PageController(
        initialPage: page, viewportFraction: 0.15, keepPage: true);
    _containerController = new AnimationController(
        duration: new Duration(milliseconds: 500), vsync: this)
      ..addListener(() {});
    _animation = Tween(begin: 0.0, end: 1.0).animate(_containerController)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      })
      ..addStatusListener((AnimationStatus state) {
        if (state == AnimationStatus.completed) {
          setState(() {
            reset();
          });
        }
      });
    _containerController.forward();
  }

  @override
  void deactivate() {
    reset();
    super.deactivate();
  }

  void reset() {
    _fraction = 0.0;
    isRevealed = true;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    Size screenSize = MediaQuery.of(context).size;

    return new Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        new Container(
          alignment: Alignment.bottomRight,
          child: CustomPaint(
            painter: new RevealPainter(_fraction, screenSize, Colors.redAccent),
            child: new SizedBox(),
          ),
        ),
        Opacity(
          opacity: _animation.value == 1 ? 1 : 0,
          child: new Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.pinkAccent,
            body: SafeArea(
              top: true,
              child: new Stack(
                children: <Widget>[
                  new AppBar(
                    leading: new SizedBox(),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    brightness: Brightness.dark,
                  ),
                  new Align(
                    heightFactor: 0.5,
                    child: Opacity(
                      opacity: 0.1,
                      child: new Transform.rotate(
                          angle: -25,
                          child: new NimaActor(
                            "assets/flare/milky_way.nma",
                            alignment: Alignment.topCenter,
                            fit: BoxFit.contain,
                            animation: _animationName,
                          )),
                    ),
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            padding: new EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            child: new Row(
                              children: <Widget>[
                                new Expanded(
                                    child: new Row(
                                  children: <Widget>[
                                    new Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      height: 10.0,
                                      width: 10.0,
                                    ),
                                    new Expanded(
                                        child: new Container(
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [Colors.white, Colors.white24],
                                        tileMode: TileMode
                                            .repeated, // repeats the gradient over the canvas
                                      )),
                                    ))
                                  ],
                                )),
                                new Expanded(
                                    child: new Row(
                                  children: <Widget>[
                                    new Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      height: 10.0,
                                      width: 10.0,
                                    ),
                                    new Expanded(
                                        child: new Container(
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [Colors.white, Colors.white24],
                                        tileMode: TileMode
                                            .repeated, // repeats the gradient over the canvas
                                      )),
                                    ))
                                  ],
                                )),
                                new Expanded(
                                    child: new Row(
                                  children: <Widget>[
                                    new Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      height: 10.0,
                                      width: 10.0,
                                    ),
                                    new Expanded(
                                        child: new Container(
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [Colors.white, Colors.white24],
                                        tileMode: TileMode
                                            .repeated, // repeats the gradient over the canvas
                                      )),
                                    ))
                                  ],
                                )),
                                new Expanded(
                                    child: new Row(
                                  children: <Widget>[
                                    new Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.5)),
                                      height: 10.0,
                                      width: 10.0,
                                    ),
                                    new Expanded(
                                        child: new Container(
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.white.withOpacity(0.5),
                                          Colors.white.withOpacity(0.2)
                                        ],
                                        tileMode: TileMode
                                            .repeated, // repeats the gradient over the canvas
                                      )),
                                    ))
                                  ],
                                )),
                                new Expanded(
                                    child: new Row(
                                  children: <Widget>[
                                    new Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.5)),
                                      height: 10.0,
                                      width: 10.0,
                                    ),
                                    new Expanded(
                                        child: new Container(
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.white.withOpacity(0.5),
                                          Colors.white.withOpacity(0.2)
                                        ],
                                        tileMode: TileMode
                                            .repeated, // repeats the gradient over the canvas
                                      )),
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                              new Text(
                                'ACTOR',
                                style: textTheme.display1.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30.0),
                              ),
                              new Icon(FontAwesomeIcons.search, color: Colors.white,)
                            ],),
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Container(
                            padding: new EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text(
                              'Select an actor',
                              style: textTheme.body1.copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      new SizedBox(
                        height: 50.0,
                      ),
                      new Expanded(
                          child: new Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new Container(
                            padding: new EdgeInsets.symmetric(horizontal: 20.0),
                            child: Theme(
                              data: new ThemeData(
                                dividerColor: Colors.transparent,
                              ),
                              child: new CupertinoPicker(
                                scrollController: scrollController,
                                itemExtent: 70.0,
                                magnification: 1.0,
                                diameterRatio: 2.0,
                                backgroundColor: Colors.transparent,
                                onSelectedItemChanged: (int index) {
                                  setState(() => page = index);
                                },
                                children: List<Widget>.generate(
                                    actorList.length, (int index) {
                                  double fontSize = 20.0;
                                  if (page == index) {
                                    fontSize = 30.0;
                                  } else if (page == index - 1 ||
                                      page == index + 1) {
                                    fontSize = 26.0;
                                  }
                                  return new Container(
                                    alignment: Alignment.center,
                                    child: new Text(
                                      actorList[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.display1.copyWith(
                                          color: Colors.white,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  );
                                }),
                              ),
                            ),
//                            child: new PageView.builder(
//                              controller: _pageController,
//                              scrollDirection: Axis.vertical,
//                              pageSnapping: true,
//                              itemCount: actorList.length,
//                              itemBuilder: (context, index) {
//                                double fontSize = 20.0;
//                                if (page == index) {
//                                  fontSize = 30.0;
//                                } else if (page == index - 1 ||
//                                    page == index + 1) {
//                                  fontSize = 26.0;
//                                } else if (page == index - 2 ||
//                                    page == index + 2) {
//                                  fontSize = 22.0;
//                                }
//                                return new Container(
//                                  alignment: Alignment.center,
//                                  child: new Text(
//                                    actorList[index],
//                                    style: textTheme.display1.copyWith(
//                                        color: Colors.white,
//                                        fontSize: fontSize,
//                                        fontWeight: FontWeight.w700),
//                                  ),
//                                );
//                              },
//                              onPageChanged: (int newPage) {
//                                setState(() {
//                                  page = newPage;
//                                });
//                              },
//                            ),
                          ),
                          new Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Material(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
                                        color: Colors.white, width: 3.0)),
                                color: Colors.transparent,
                                child: new Container(
                                  height: 80.0,
                                )),
                          ),
                        ],
                      )),
                      new SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: new Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: new Material(
                      elevation: 2.0,
                      color: Colors.pinkAccent,
                      shape: new CircleBorder(
                          side: new BorderSide(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: new Icon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  new FloatingActionButton(
                      elevation: 2.0,
                      heroTag: '4',
                      backgroundColor: Colors.white,
                      child: new Icon(
                        FontAwesomeIcons.arrowRight,
                        color: Colors.pinkAccent,
                        size: 20.0,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(new PageRouteBuilder(
                          transitionDuration: new Duration(milliseconds: 500),
                          barrierDismissible: true,
                          pageBuilder: (_, __, ___) =>
                          new FourthPage(key: new UniqueKey()),
                        ));
                      }),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
