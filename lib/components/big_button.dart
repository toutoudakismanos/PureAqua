import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pure_aqua/components/colors.dart';

class BigButton extends StatefulWidget {
  final bool ispotable;
  const BigButton({super.key, required this.ispotable});

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1000,
                  color: widget.ispotable
                      ? Color(MyColors().green)
                      : Color(MyColors().red),
                  spreadRadius: 10,
                )
              ],
            ),
            child: AvatarGlow(
              glowRadiusFactor: 0.3,
              glowColor: widget.ispotable
                  ? Color(MyColors().green)
                  : Color(MyColors().red),
              child: SizedBox.fromSize(
                size: Size(height * 0.20, height * 0.20),
                child: ClipOval(
                  child: Material(
                      color: widget.ispotable
                          ? Color(MyColors().green)
                          : Color(MyColors().red),
                      child: InkWell(
                        splashColor: Color(MyColors().white),
                        onTap: () {
                          HapticFeedback.vibrate();
                          print('object');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              widget.ispotable
                                  ? Icons.check
                                  : Icons.not_interested,
                              size: 60,
                              color: Color(MyColors().white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.ispotable ? 'Potable' : 'Non Potable',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(MyColors().white)),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            )),
      ],
    );
  }
}
