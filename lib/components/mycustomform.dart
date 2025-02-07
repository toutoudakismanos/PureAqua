import 'package:flutter/material.dart';
import 'package:pure_aqua/components/colors.dart';

// EDW EXOYME THN FORMA GIA TO LOGIN TOU XRHSTH SE 3EXWRISTO ARXEIO

class MyCustomForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const MyCustomForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(
              width * 0.01, height * 0.01, width * 0.01, height * 0.01),
          child: TextField(
            controller: widget.emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Username',
              fillColor: Color(MyColors().white),
              filled: true,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(
                width * 0.01, height * 0.01, width * 0.01, height * 0.01),
            child: TextField(
              controller: widget.passwordController,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              maxLength: 32,
              decoration: InputDecoration(
                // counterText: '',   ama thelw na bgalw to counter gia max length
                border: OutlineInputBorder(
                  // borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Password",
                fillColor: Color(MyColors().white),
                filled: true,
              ),
            )),
      ],
    );
  }
}
