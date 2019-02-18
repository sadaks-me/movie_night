import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_night/model/movie.dart';
import 'package:movie_night/reveal/reveal_painter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_night/view/detail_page.dart';

class FifthPage extends StatefulWidget {
  FifthPage({Key key}) : super(key: key);

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  AnimationController _containerController;
  Animation<double> _animation, scrollerXTranslation, scrollerOpacity;
  bool isRevealed = false;
  double _fraction = 0.0;
  int page;

  void initState() {
    super.initState();
    _containerController =
        new AnimationController(duration: new Duration(seconds: 1), vsync: this)
          ..addListener(() {});
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _containerController,
        curve: Interval(
          0.0,
          0.5,
          curve: Curves.easeIn,
        ),
      ),
    )
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

    scrollerXTranslation = new Tween(begin: 100.0, end: 0.0).animate(
      new CurvedAnimation(
        parent: _containerController,
        curve: new Interval(
          0.5,
          1.0,
          curve: Curves.ease,
        ),
      ),
    );

    scrollerOpacity = new Tween(begin: 0.0, end: 1.0).animate(
      new CurvedAnimation(
        parent: _containerController,
        curve: new Interval(
          0.5,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
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
        _containerController.isCompleted
            ? new SizedBox()
            : new Container(
                alignment: Alignment.bottomRight,
                child: CustomPaint(
                  painter: new RevealPainter(
                      _fraction, screenSize, Colors.deepPurple),
                  child: new SizedBox(),
                ),
              ),
        Opacity(
          opacity: _animation.value == 1 ? 1 : 0,
          child: new Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.deepPurple,
            body: SafeArea(
              top: true,
              bottom: false,
              child: new Stack(
                children: <Widget>[
                  new AppBar(
                    leading: new SizedBox(),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    brightness: Brightness.dark,
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
                                          colors: [
                                            Colors.white,
                                            Colors.white24
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
                                          colors: [
                                            Colors.white,
                                            Colors.white24
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
                                          colors: [
                                            Colors.white,
                                            Colors.white24
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
                                          colors: [
                                            Colors.white,
                                            Colors.white24
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
                                          colors: [
                                            Colors.white,
                                            Colors.white24
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
                              padding:
                                  new EdgeInsets.symmetric(horizontal: 20.0),
                              child: new Text(
                                'MOVIES MATCHED',
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
                              padding:
                                  new EdgeInsets.symmetric(horizontal: 20.0),
                              child: new Text(
                                'Movies which suits both of you guys',
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
                        new Container(
                          padding: new EdgeInsets.symmetric(horizontal: 20.0),
                          child: new StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            physics: ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: moviesData.length,
                            itemBuilder: (context, index) {
                              Movie movie = moviesData[index];
                              return new Transform(
                                transform: new Matrix4.translationValues(
                                  0.0,
                                  scrollerXTranslation.value,
                                  0.0,
                                ),
                                child: new Opacity(
                                  opacity: scrollerOpacity.value,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(new PageRouteBuilder(
                                        transitionDuration:
                                            new Duration(milliseconds: 500),
                                        opaque: false,
                                        barrierDismissible: true,
                                        pageBuilder: (_, __, ___) =>
                                            new DetailsPage(
                                              key: new UniqueKey(),
                                              movie: movie,
                                            ),
                                      ));
                                    },
                                    child: new Material(
                                      borderRadius: BorderRadius.circular(30.0),
                                      elevation: 5.0,
                                      color: Colors.black87,
                                      child: new ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: new Image.asset(
                                          movie.image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            staggeredTileBuilder: (int index) =>
                                new StaggeredTile.extent(
                                    2, index.isEven ? 300 : 200),
                            mainAxisSpacing: 15.0,
                            crossAxisSpacing: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: new Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: new Material(
                      elevation: 2.0,
                      color: Colors.deepPurple,
                      shape: new CircleBorder(
                          side: BorderSide(color: Colors.white)),
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
                  new SizedBox(width: 20.0),
                  GestureDetector(
                    child: new Material(
                      elevation: 2.0,
                      color: Colors.deepPurple,
                      shape: new CircleBorder(
                          side: BorderSide(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new Icon(
                          Icons.sync,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
