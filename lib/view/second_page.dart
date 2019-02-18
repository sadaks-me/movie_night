import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_night/reveal/reveal_painter.dart';
import 'package:movie_night/view/third_page.dart';
import "package:nima/nima_actor.dart";

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _animationName = "Idle";
  List<String> selected = new List();

  AnimationController _containerController;
  Animation<double> _animation;
  bool isRevealed = false;
  double _fraction = 0.0;

  void initState() {
    super.initState();
    _containerController =
    new AnimationController(duration: new Duration(milliseconds: 500), vsync: this)
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
          painter: new RevealPainter(
              _fraction, screenSize, Colors.indigo),
          child: new SizedBox(),
        ),
      ),
      Opacity(
        opacity: _animation.value == 1 ? 1 : 0,
        child: new Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.indigo,
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
                new SingleChildScrollView(
                  child: new Column(
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
                          new Container(
                            padding: new EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text(
                              'MOVIE NIGHT',
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
                              'Select the movie theme',
                              style: textTheme.body1.copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      new SizedBox(
                        height: 40.0,
                      ),
                      new Container(
                        height: 450.0,
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Material(
                                            color: selected.contains('Action') ? Colors.white : Colors.white.withOpacity(0.5),
                                            elevation: selected.contains('Action') ? 2.0 : 0.0,
                                            shape: new CircleBorder(),
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: new Icon(
                                                FontAwesomeIcons.fistRaised,
                                                color:  selected.contains('Action') ? Colors.indigo : Colors.white,
                                                size: 28.0,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if(selected.contains('Action')){
                                                selected.remove('Action');
                                              } else {
                                                selected.add('Action');
                                              }
                                            });
                                          },
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          'Action',
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Material(
                                            color: selected.contains('Comedy') ? Colors.white : Colors.white.withOpacity(0.5),
                                            elevation: selected.contains('Comedy') ? 2.0 : 0.0,
                                            shape: new CircleBorder(),
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: new Icon(
                                                FontAwesomeIcons.grinSquintTears,
                                                color:  selected.contains('Comedy') ? Colors.indigo : Colors.white,
                                                size: 28.0,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if(selected.contains('Comedy')){
                                                selected.remove('Comedy');
                                              } else {
                                                selected.add('Comedy');
                                              }
                                            });
                                          },
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          'Comedy',
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Material(
                                            color: selected.contains('Drama') ? Colors.white : Colors.white.withOpacity(0.5),
                                            elevation: selected.contains('Drama') ? 2.0 : 0.0,
                                            shape: new CircleBorder(),
                                            child: Padding(
                                              padding: const EdgeInsets.all(22.0),
                                              child: new Icon(
                                                FontAwesomeIcons.video,
                                                color:  selected.contains('Drama') ? Colors.indigo : Colors.white,
                                                size: 25.0,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if(selected.contains('Drama')){
                                                selected.remove('Drama');
                                              } else {
                                                selected.add('Drama');
                                              }
                                            });
                                          },
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          'Drama',
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            new Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 60.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          GestureDetector(
                                            child: new Material(
                                              color: selected.contains('Adventure') ? Colors.white : Colors.white.withOpacity(0.5),
                                              elevation: selected.contains('Adventure') ? 2.0 : 0.0,
                                              shape: new CircleBorder(),
                                              child: Container(
                                                padding: new EdgeInsets.all(7.0),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 20.0, left: 15.0, top: 15.0, bottom: 20.0),
                                                  child: new Icon(
                                                    FontAwesomeIcons.mountain,
                                                    color:  selected.contains('Adventure') ? Colors.indigo : Colors.white,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                if(selected.contains('Adventure')){
                                                  selected.remove('Adventure');
                                                } else {
                                                  selected.add('Adventure');
                                                }
                                              });
                                            },
                                          ),
                                          new SizedBox(
                                            height: 5.0,
                                          ),
                                          new Text(
                                            'Adventure',
                                            style: textTheme.subhead.copyWith(
                                                color: Colors.white70,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          GestureDetector(
                                            child: new Material(
                                              color: selected.contains('Crime') ? Colors.white : Colors.white.withOpacity(0.5),
                                              elevation: selected.contains('Crime') ? 2.0 : 0.0,
                                              shape: new CircleBorder(),
                                              child: Padding(
                                                padding: const EdgeInsets.all(20.0),
                                                child: new Icon(
                                                  FontAwesomeIcons.binoculars,
                                                  color:  selected.contains('Crime') ? Colors.indigo : Colors.white,
                                                  size: 28.0,
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                if(selected.contains('Crime')){
                                                  selected.remove('Crime');
                                                } else {
                                                  selected.add('Crime');
                                                }
                                              });
                                            },
                                          ),
                                          new SizedBox(
                                            height: 5.0,
                                          ),
                                          new Text(
                                            'Crime',
                                            style: textTheme.subhead.copyWith(
                                                color: Colors.white70,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                            new Expanded(
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Material(
                                            color: selected.contains('Animation') ? Colors.white : Colors.white.withOpacity(0.5),
                                            elevation: selected.contains('Animation') ? 2.0 : 0.0,
                                            shape: new CircleBorder(),
                                            child: Container(
                                              padding: new EdgeInsets.all(6.0),
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 20.0, left: 15.0, top: 15.0, bottom: 20.0),
                                                child: new Icon(
                                                  FontAwesomeIcons.autoprefixer,
                                                  color:  selected.contains('Adventure') ? Colors.indigo : Colors.white,
                                                  size: 22.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if(selected.contains('Animation')){
                                                selected.remove('Animation');
                                              } else {
                                                selected.add('Animation');
                                              }
                                            });
                                          },
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          'Animation',
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Material(
                                            color: selected.contains('Documentary') ? Colors.white : Colors.white.withOpacity(0.5),
                                            elevation: selected.contains('Documentary') ? 2.0 : 0.0,
                                            shape: new CircleBorder(),
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: new Icon(
                                                FontAwesomeIcons.solidFileVideo,
                                                color:  selected.contains('Documentary') ? Colors.indigo : Colors.white,
                                                size: 28.0,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if(selected.contains('Documentary')){
                                                selected.remove('Documentary');
                                              } else {
                                                selected.add('Documentary');
                                              }
                                            });
                                          },
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          'Documentary',
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Material(
                                            color: selected.contains('Romance') ? Colors.white : Colors.white.withOpacity(0.5),
                                            elevation: selected.contains('Romance') ? 2.0 : 0.0,
                                            shape: new CircleBorder(),
                                            child: Padding(
                                              padding: const EdgeInsets.all(22.0),
                                              child: new Icon(
                                                FontAwesomeIcons.solidHeart,
                                                color:  selected.contains('Romance') ? Colors.indigo : Colors.white,
                                                size: 25.0,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if(selected.contains('Romance')){
                                                selected.remove('Romance');
                                              } else {
                                                selected.add('Romance');
                                              }
                                            });
                                          },
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          'Romance',
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      new SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: new Material(
                    elevation: 2.0,
                    color: Colors.indigo,
                    shape:
                    new CircleBorder(side: new BorderSide(color: Colors.white)),
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
                    heroTag: '3',
                    backgroundColor: Colors.white,
                    child: new Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.indigo,
                      size: 20.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(new PageRouteBuilder(
                        transitionDuration: new Duration(milliseconds: 500),
                        barrierDismissible: true,
                        pageBuilder: (_, __, ___) =>
                        new ThirdPage(key: new UniqueKey()),
                      ));
                    }),
              ],
            ),
          ),
        ),
      )
    ],);
  }
}
