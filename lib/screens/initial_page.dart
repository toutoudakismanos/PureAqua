import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_aqua/components/colors.dart';
import 'package:pure_aqua/screens/create_account.dart';
import 'package:pure_aqua/screens/login.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(
            width * 0.03, height * 0.01, width * 0.03, height * 0.01),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(MyColors().gradientStart),
              Color(MyColors().gradientEnd),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height * 0.2,
            ),
            Center(
              child: Icon(
                Icons.water_drop_outlined,
                size: 100,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const Center(
              child: SizedBox(
                child: Text(
                  'Pure Aqua ',
                  style: TextStyle(
                    fontSize: 55.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontFamily: 'RobotoRegular',
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              children: [
                SizedBox(
                  height: height * 0.08,
                  width: width * 0.42,
                  child: Material(
                    borderRadius: BorderRadius.circular(18.0),
                    elevation: 10,
                    shadowColor: Color(MyColors().black),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Color(MyColors().primary)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Login ',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(MyColors().white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(MyColors().white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                  width: width * 0.42,
                  child: Material(
                    borderRadius: BorderRadius.circular(18),
                    elevation: 10,
                    shadowColor: Color(MyColors().black),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Color(MyColors().primary)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        print('You pressed Sign Up');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateAccount()));
                      },
                      child: Text(
                        'Sign Up ',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(MyColors().white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
