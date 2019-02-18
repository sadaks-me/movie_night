import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:movie_night/model/movie.dart';
import 'package:movie_night/reveal/reveal_painter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  _DetailsPageState createState() => _DetailsPageState(movie);
}

class _DetailsPageState extends State<DetailsPage> {
  _DetailsPageState(this.movie);

  final Movie movie;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black.withOpacity(0.5),
      body: new Container(
        color: Colors.black.withOpacity(0.5),
        child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Material(
              color: Colors.transparent,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        new SingleChildScrollView(
                          child: new Column(
                            children: <Widget>[
                              new Padding(
                                  padding: EdgeInsets.only(
                                    top: screenSize.height / 3.5,
                                  ),
                                  child: new GestureDetector(
                                    onTap: () {},
                                    child: new Material(
                                      color: Colors.transparent,
                                      child: new Stack(
                                        alignment: Alignment.topLeft,
                                        children: <Widget>[
                                          new Positioned.fill(
                                            top: 130.0,
                                            child: new Material(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30.0),
                                                  topRight:
                                                      Radius.circular(30.0)),
                                              color: Colors.black,
                                              child: new Container(
                                                height: 100.0,
                                              ),
                                            ),
                                          ),
                                          new Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: new Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                new Material(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  elevation: 5.0,
                                                  color: Colors.black87,
                                                  child: new ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: new Image.asset(
                                                      movie.image,
                                                      fit: BoxFit.cover,
                                                      height: 220.0,
                                                      width: 150.0,
                                                    ),
                                                  ),
                                                ),
                                                new Expanded(
                                                    child: Container(
                                                  height: 220.0,
                                                  padding: new EdgeInsets.only(
                                                      left: 20.0, bottom: 10.0),
                                                  child: new Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      new Text(
                                                        movie.year,
                                                        style: textTheme.title
                                                            .copyWith(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                      new SizedBox(
                                                        height: 5.0,
                                                      ),
                                                      new Text(
                                                        movie.rating,
                                                        style: textTheme.title
                                                            .copyWith(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      )
                                                    ],
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              new Material(
                                color: Colors.black,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      minHeight: screenSize.height / 3),
                                  child: new Container(
                                    padding: const EdgeInsets.only(
                                        top: 10.0,
                                        right: 20.0,
                                        left: 20.0,
                                        bottom: 80.0),
                                    child: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          movie.name,
                                          style: textTheme.display1.copyWith(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(
                                          movie.description,
                                          style: textTheme.subhead.copyWith(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        new Container(
                          padding: new EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          child: new RaisedButton(
                            onPressed: () {},
                            color: Colors.yellow,
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Container(
                              width: screenSize.width - 40,
                              height: 45.0,
                              alignment: Alignment.center,
                              child: new Text(
                                'BOOK NOW',
                                style: textTheme.subhead.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        new Positioned(
                          top: 0.0,
                          right: 0.0,
                          child: new SafeArea(
                          top: true,
                          child: new MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: new Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
