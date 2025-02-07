import 'package:flutter/material.dart';
import 'package:pure_aqua/components/colors.dart';
import 'package:pure_aqua/components/mycustomform.dart';
import 'package:pure_aqua/screens/create_account.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.fromLTRB(
              width * 0.05, height * 0.1, width * 0.05, height * 0.1),
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: width * 0.2,
                        height: height * 0.1,
                        child: const Icon(
                          Icons.water_drop_outlined,
                          size: 100,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                const Center(
                  child: SizedBox(
                    child: Text(
                      'Login ',
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
                SizedBox(
                  height: height * 0.08,
                ),
                MyCustomForm(
                  emailController: _emailController,
                  passwordController: _passwordController,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.02, height * 0.01, width * 0.02, 0),
                  child: SizedBox(
                    height: height * 0.05,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateAccount()));
                      },
                      child: Text(
                        'I dont have an account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(MyColors().white),
                          fontFamily: 'RobotoRegular',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.02, 0, width * 0.02, height * 0.02),
                ),
                Center(
                  child: SizedBox(
                    height: height * 0.07,
                    width: width * 0.5,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Color(MyColors().primary)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        print('You pressed Login');

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const HomePage(
                        //               userId: 1,
                        //             )));
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
                  height: height * 0.03,
                ),
                Center(
                  child: SizedBox(
                    height: height * 0.06,
                    width: width * 0.3,
                    child: TextButton.icon(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(
                            Color(MyColors().white)),
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: Text(
                        'Go back',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(MyColors().white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
