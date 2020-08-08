import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:sa_v1_migration/sa_v1_migration.dart';
import 'package:flutter/foundation.dart';
import 'package:online_khabar/main.dart';

class homepage extends StatelessWidget {
  bool hello = true;
  @override
  Widget build(BuildContext context) {
    double _scrnwdth = MediaQuery.of(context).size.width;
    // if (_scrnwdth < 425) {
    //   hello = false;
    // }
    return Scaffold(
        drawer: Drawer(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "HOME",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            //Logo and Advertisement starts
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Image(
                        image: NetworkImage(
                            "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png"),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: false,
                    child: Expanded(
                      flex: 2,
                      child: Image(
                        image: NetworkImage(
                            "https://www.onlinekhabar.com/wp-content/uploads/2020/07/700x80-AffiliateDESK.gif"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Logo and Advertisement ends

            //Nav Bar starts
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[900],
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:

                    //For Desktops

                    Visibility(
                  visible: hello,
                  child: Row(
                    children: [
                      Builder(
                        builder: (context) {
                          return IconButton(
                              icon: Icon(
                                Icons.dehaze,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              });
                        },
                      ),
                      FlatButton(
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              1.0,
                              Text(
                                "HOME",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          hoverColor: Color.fromRGBO(0, 0, 80, 100),
                          color: Color.fromRGBO(0, 0, 80, 100)),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              1.3,
                              Text(
                                "NEWS",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              1.6,
                              Text(
                                "BUSINESS",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              1.9,
                              Text(
                                "LIFESTYLE",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              2.2,
                              Text(
                                "ICT",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              2.5,
                              Text(
                                "ENTERTAINMENT",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              2.8,
                              Text(
                                "HOROSCOPE",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                      FlatButton(
                        child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: FadeIn(
                              3.1,
                              Text(
                                "SPORTS",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        onPressed: () {},
                        hoverColor: Color.fromRGBO(0, 0, 80, 100),
                      ),
                    ],
                  ),
                ),
                //for Desktops

                //for Mobile Phones
              ),
            ),

            //Nav Bar Ends
          ],
        ));
  }
}

// Sample Fade in
class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}
