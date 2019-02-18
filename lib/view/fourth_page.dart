import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_night/view/fifth_page.dart';
import 'package:movie_night/reveal/reveal_painter.dart';
import 'package:movie_night/utils/picker.dart';
import "package:nima/nima_actor.dart";

class FourthPage extends StatefulWidget {
  FourthPage({Key key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _animationName = "Idle";
  List<String> decadeList = [
    "40'",
    "50'",
    "60'",
    "70'",
    "80'",
    "90'",
    "20'",
    "21'",
  ];
  PageController _pageController;
  AnimationController _containerController;
  Animation<double> _animation;
  bool isRevealed = false;
  double _fraction = 0.0;
  int page;

  void initState() {
    super.initState();
    page = decadeList.length ~/ 2;
    _pageController = new PageController(
        initialPage: page, viewportFraction: 0.22, keepPage: true);
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
            painter: new RevealPainter(_fraction, screenSize, Colors.teal),
            child: new SizedBox(),
          ),
        ),
        Opacity(
          opacity: _animation.value == 1 ? 1 : 0,
          child: new Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.teal,
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
                              ],
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text(
                              'DECADE',
                              style: textTheme.display1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0),
                            ),
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Container(
                            padding: new EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text(
                              'Select your favourite decade',
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
                            child: new PageView.builder(
                              controller: _pageController,
                              pageSnapping: true,
                              itemCount: decadeList.length,
                              itemBuilder: (context, index) {
                                double fontSize = 20.0;
                                double opacity = 0.3;
                                if (page == index) {
                                  fontSize = 36.0;
                                  opacity = 1.0;
                                } else if (page == index - 1 ||
                                    page == index + 1) {
                                  fontSize = 28.0;
                                  opacity = 0.8;
                                }
                                return new Container(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: opacity,
                                    child: new Text(
                                      decadeList[index],
                                      style: textTheme.display1.copyWith(
                                          color: Colors.white,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                );
                              },
                              onPageChanged: (int newPage) {
                                setState(() {
                                  page = newPage;
                                });
                              },
                            ),
                          ),
                          new Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Material(
                                shape: new CircleBorder(
                                    side: BorderSide(
                                        color: Colors.white, width: 3.0)),
                                color: Colors.transparent,
                                child: new Container(
                                  height: 90.0,
                                  width: 90.0,
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
                      color: Colors.teal,
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
                        color: Colors.teal,
                        size: 20.0,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(new PageRouteBuilder(
                          transitionDuration: new Duration(milliseconds: 500),
                          barrierDismissible: true,
                          pageBuilder: (_, __, ___) =>
                          new FifthPage(key: new UniqueKey()),
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
