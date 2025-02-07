import 'package:flutter/material.dart';
import 'package:pure_aqua/components/big_button.dart';
import 'package:pure_aqua/components/colors.dart';
import 'package:pure_aqua/components/sensor_data.dart';

const double occupancyRate = 0.70;
const double paddingHorizontal = 0.06;
const double paddingVertical = 0.03;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ispotable = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0.05, 0.1, 0.05, 0.1),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: width * paddingHorizontal,
                    vertical: height * paddingVertical),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      ispotable = !ispotable;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        // border: Border.all(width: 5, color: Colors.yellow),
                        borderRadius: BorderRadius.circular(18),
                        color: Color(MyColors().grey).withOpacity(0.50)),
                    child: SizedBox(
                      height: height * occupancyRate,
                      width: width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigButton(
                            ispotable: ispotable,
                          ),
                          SensorDataScreen()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
