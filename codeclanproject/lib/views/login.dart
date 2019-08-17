import 'package:flutter/material.dart';

import 'register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 1000,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 500,
                  child: CustomPaint(
                    painter: ColorPainter(),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Material(
                        elevation: 8,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          height: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 15.0),
                                    blurRadius: 15.0),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, -2.0),
                                    blurRadius: 2.0),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(12.0),
                                margin:
                                    EdgeInsets.fromLTRB(8.0, 35.0, 8.0, 20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.0),
                                  border: Border.all(
                                      color: Colors.black12, width: 1.0),
                                ),
                                child: TextField(
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Email"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(12.0),
                                margin:
                                    EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32.0),
                                    border: Border.all(
                                        color: Colors.black26, width: 1.0)),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          fontStyle: FontStyle.normal)),
                                ),
                              ),
//                        Padding(
//                          padding: const EdgeInsets.fromLTRB(16.0,16.0,16.0,16.0),
//                          child: Row(
//                            children: <Widget>[
//
//                              Text("Remember me",style: Theme.of(context).textTheme.body2.copyWith(color: Colors.green),),
//                              Text("Forgot Password?",style: Theme.of(context).textTheme.body2.copyWith(color: Colors.green)),
//                            ],
//                          ),
//                        ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    150.0, 8.0, 4.0, 8.0),
                                child: Text("Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 17)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SizedBox(
                                  width: 200,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    onPressed: () {},
                                    color: Colors.blue,
                                    child: Text("Login",
                                        style: Theme.of(context)
                                            .textTheme
                                            .body1
                                            .copyWith(color: Colors.white)),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30.0, 20.0, 30.0, 40.0),
                                    child: Text("or login with",
                                        style: Theme.of(context)
                                            .textTheme
                                            .body1
                                            .copyWith(color: Colors.green)),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
//                          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                                padding: EdgeInsets.all(0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
//                                padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 5.0),
                                      padding: EdgeInsets.only(right: 60),
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Container(
                                            color: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Image.asset(
                                                  'lib/assets/images/facebook.jpg'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Container(
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Image.asset(
                                                'lib/assets/images/google.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    64.0, 32.0, 32.0, 10.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Don't have an account? "),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Register()));
                                      },
                                      child: Text("Create here.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .body1
                                              .copyWith(
                                                  color: Colors.green,
                                                  fontSize: 15)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
