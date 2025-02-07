import 'package:flutter/material.dart';
import 'package:pure_aqua/components/colors.dart';

import 'package:pure_aqua/screens/login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _spokenController = TextEditingController();
  final _writtenController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phonenumController = TextEditingController();
  final _ogcountryController = TextEditingController();
  final _emailController = TextEditingController();
  final _postalcodeController = TextEditingController();
  final _privacyController = TextEditingController();

  // String? _selectedValue;

  @override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _spokenController.dispose();
    _writtenController.dispose();
    _passwordController.dispose();
    _phonenumController.dispose();
    _ogcountryController.dispose();
    _emailController.dispose();
    _postalcodeController.dispose();
    _privacyController.dispose();
    super.dispose();
  }

  Future<void> _callFastAPI() async {
    if (_formKey.currentState!.validate()) {
      if (_privacyController.text == '' ||
          _firstnameController.text == '' ||
          _lastnameController.text == '' ||
          _spokenController.text == '' ||
          _writtenController.text == '' ||
          _phonenumController.text == '' ||
          _emailController.text == '' ||
          _ogcountryController.text == '' ||
          _postalcodeController.text == '' ||
          _passwordController.text == '') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text(
              'Please fill in all of your information!',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            duration: Duration(seconds: 5),
          ),
        );
      } else {
        // Concatenate user info
        final reginfo =
            '${_firstnameController.text}:${_lastnameController.text}:${_spokenController.text}:${_writtenController.text}:${_passwordController.text}:${_phonenumController.text}:${_ogcountryController.text}:${_emailController.text}:${_postalcodeController.text}:${_privacyController.text}';

        Map<String, dynamic> reginfoJson = {
          'privacy': _privacyController.text,
          'firstname': _firstnameController.text,
          'lastname': _lastnameController.text,
          'spokenlan': _spokenController.text,
          'writtenlan': _writtenController.text,
          'phonenum': _phonenumController.text,
          'email': _emailController.text,
          'ogcountry': _ogcountryController.text,
          'postalcode': _postalcodeController.text,
          'password': _passwordController.text
        };
        print(
            "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        print(reginfoJson);

        // String jsonString = jsonEncode(reginfoJson);

        // String reginfo = 'hi';
        print("from callfastapi: $reginfo");

        // final response = await post(
        //   Uri.parse('http://10.0.255.83:8001/signup'),
        //   headers: {'Content-Type': 'application/json'},
        //   body: jsonString,
        // );

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.fromLTRB(
              width * 0.05, height * 0.1, width * 0.05, height * 0.05),
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
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                  child: SizedBox(
                    height: height * 0.08,
                    child: Text(
                      'Create your account ',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(MyColors().primary),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontFamily: 'RobotoRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                  child: SizedBox(
                    height: height * 0.04,
                    child: Text(
                      'Personal information',
                      style: TextStyle(
                        color: Color(MyColors().primary),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontFamily: 'RobotoRegular',
                      ),
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: TextField(
                        controller: _firstnameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "Firstname" ' *',
                          // hintStyle: TextStyle(color: Colors.red),
                          fillColor: Color(MyColors().white),
                          filled: true,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 0.02, 0, 0),
                  child: TextField(
                    controller: _lastnameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Lastname" ' *',
                      // hintStyle: TextStyle(color: Colors.red),
                      fillColor: Color(MyColors().white),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 0.02, 0, 0),
                  child: TextField(
                    controller: _spokenController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Email address" ' *',
                      // hintStyle: TextStyle(color: Colors.red),
                      fillColor: Color(MyColors().white),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, height * 0.02, 0, 0),
                    child: TextField(
                      controller: _phonenumController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Username",
                        // hintStyle: TextStyle(color: Colors.red),
                        fillColor: Color(MyColors().white),
                        filled: true,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, height * 0.02, 0, 0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      maxLength: 32,
                      decoration: InputDecoration(
                        // counterText: '',   //ama thelw na bgalw to counter gia max length
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Password",
                        fillColor: Color(MyColors().white),
                        filled: true,
                      ),
                    )),
                // ---------------------------------------------------------

                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.02, 0, width * 0.02, height * 0.01),
                  child: SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'I already have an account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(MyColors().white),
                          fontFamily: 'RobotoRegular',
                        ),
                      ),
                    ),
                  ),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const HomePage(
                        //               userId: 1,
                        //             )));
                      },
                      child: Text(
                        'Create account ',
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
          ),
        ),
      ),
    );
  }
}
