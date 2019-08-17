import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 1000,
            child: Stack(
              //fit: StackFit.expand,
              children: <Widget>[
                Container(
                  height: 200,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: ColorPainter(),
                  ),
                ),
                Positioned(
//            height: 500,
                  top: 140,
                  left: 20,
                  right: 20,
                  child: Material(
                    color: Colors.white,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, -2.0),
                              blurRadius: 2.0),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.0),
                              border:
                                  Border.all(color: Colors.black12, width: 1.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Container(
                                    child: Icon(
                                      FontAwesome.user_o,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            color: Colors.grey[400],
                                            width: 0.5),
                                      ),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 7),
                                  ),
                                  hintText: "name"),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.0),
                              border:
                                  Border.all(color: Colors.black12, width: 1.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Container(
                                    //padding: EdgeInsets.only(bottom: 8),
                                    child: Icon(
                                      Fontisto.email,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            color: Colors.grey[400],
                                            width: 0.5),
                                      ),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 7),
                                  ),
                                  hintText: "Email"),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                border: Border.all(
                                    color: Colors.black26, width: 1.0)),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    AntDesign.lock,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(fontStyle: FontStyle.normal)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                            margin: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                border: Border.all(
                                    color: Colors.black26, width: 1.0)),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    AntDesign.lock,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  hintText: "Comfirm Password",
                                  hintStyle:
                                      TextStyle(fontStyle: FontStyle.normal)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 10.0, 8.0, 10.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Already have an ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .body1
                                      .copyWith(fontSize: 18),
                                ),
                                Text("account.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body1
                                        .copyWith(
                                            color: Colors.green, fontSize: 18)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              width: 200,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {},
                                color: Colors.blue,
                                child: Text("Register",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body1
                                        .copyWith(
                                            color: Colors.white, fontSize: 18)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final height = size.height;
    final width = size.width;
    Paint paint = new Paint();

    paint.color = Colors.blue;
    canvas.drawRect(
        Rect.fromPoints(Offset.zero, Offset(width, height * 0.5)), paint);

    Path overPath = new Path();
    overPath.moveTo(0, height * 0.5);
    overPath.quadraticBezierTo(width * 0.5, height * 0.7, width, height * 0.5);
    overPath.lineTo(width, height * 0.5);
    overPath.close();

    paint.color = Colors.blue;
    canvas.drawPath(overPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
