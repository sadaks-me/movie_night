import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_night/view/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.pink,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
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
                      'Sunday, 16 December 2018',
                      style: textTheme.body1.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Container(
                    padding: new EdgeInsets.symmetric(horizontal: 20.0),
                    child: new Text(
                      'Find a best movie to watch on your date',
                      style: textTheme.body1.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 500.0,
                child: new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    new Positioned(
                      top: 30.0,
                      left: 20.0,
                      child: new Column(
                        children: <Widget>[
                          new Material(
                            shape: new CircleBorder(
                                side: BorderSide(color: Colors.white30)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.transparent,
                            child: new Container(
                              padding: new EdgeInsets.all(30.0),
                              child: Row(
                                children: <Widget>[
                                  new Image.asset(
                                    'assets/icons/boy.png',
                                    height: 50.0,
                                    fit: BoxFit.contain,
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new Row(
                                        children: <Widget>[
                                          new Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            height: 7.0,
                                            width: 7.0,
                                          ),
                                          new SizedBox(
                                            width: 2.0,
                                          ),
                                          new Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            height: 7.0,
                                            width: 7.0,
                                          ),
                                          new SizedBox(
                                            width: 2.0,
                                          ),
                                          new Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            height: 7.0,
                                            width: 7.0,
                                          ),
                                        ],
                                      ),
                                      new SizedBox(
                                        height: 10.0,
                                      ),
                                      new Text(
                                        'You',
                                        style: textTheme.body2
                                            .copyWith(color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          new SizedBox(
                            height: 20.0,
                          ),
                          Material(
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Colors.white24,
                            child: new Container(
                              padding: new EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              child: new Text(
                                'Questions',
                                style: textTheme.body2.copyWith(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    new Positioned(
                      right: 20.0,
                      child: new Column(
                        children: <Widget>[
                          new Material(
                            shape: new CircleBorder(
                                side: BorderSide(color: Colors.white30)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.transparent,
                            child: new Container(
                              padding: new EdgeInsets.all(30.0),
                              child: new Row(
                                children: <Widget>[
                                  new Image.asset(
                                    'assets/icons/girl.png',
                                    height: 50.0,
                                    fit: BoxFit.contain,
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new Icon(
                                        Icons.done,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                      new SizedBox(
                                        height: 10.0,
                                      ),
                                      new Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color: Colors.white,
                                        size: 15.0,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          new SizedBox(
                            height: 20.0,
                          ),
                          new Material(
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Colors.white24,
                            child: new Container(
                              padding: new EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              child: new Text(
                                'Questions',
                                style: textTheme.body2.copyWith(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Positioned(
                      bottom: 100.0,
                      child: new Container(
                        padding: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: new Text(
                          'Please, both of you have complete\nthe questions',
                          textAlign: TextAlign.center,
                          style: textTheme.body1.copyWith(
                            color: Colors.white70,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
//      floatingActionButton: new Row(
//        mainAxisAlignment: MainAxisAlignment.end,
//        children: <Widget>[
//          new FloatingActionButton(
//              elevation: 2.0,
//              heroTag: '0',
//              backgroundColor: Colors.white54,
//              child: new Icon(
//                Icons.directions_boat,
//                color: Colors.white,
//              ),
//              onPressed: () {}),
//          new SizedBox(
//            width: 15.0,
//          ),
//          new FloatingActionButton(
//              elevation: 2.0,
//              heroTag: '1',
//              backgroundColor: Colors.white54,
//              child: new Icon(
//                Icons.settings,
//                color: Colors.white,
//              ),
//              onPressed: () {}),
//        ],
//      ),
      bottomNavigationBar: new Container(
        padding: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new PageRouteBuilder(
              transitionDuration: new Duration(milliseconds: 500),
              barrierDismissible: true,
              pageBuilder: (_, __, ___) => new SecondPage(key: new UniqueKey()),
            ));
          },
          color: Colors.yellow,
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 13.0,
            ),
            child: new Text(
              'ANSWER QUESTIONS',
              style: textTheme.subhead
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
