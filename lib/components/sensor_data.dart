import 'package:flutter/material.dart';
import 'package:pure_aqua/components/colors.dart';

class SensorDataScreen extends StatefulWidget {
  const SensorDataScreen({super.key});

  @override
  State<SensorDataScreen> createState() => _SensorDataScreenState();
}

class _SensorDataScreenState extends State<SensorDataScreen> {
  final Map<String, dynamic> sensorData = {
    "pH": 0,
    "dissolved_oxygen": 0,
    "turbidity": 0,
    "temperature": 0,
    "electrical_conductivity": 0,
    "dissolved_solids": 0,
    "nitrate": 0,
    "phosphate": 0,
    "potable": 0
  };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(MyColors().white),
          border: Border.all(color: Color(MyColors().primary), width: 2),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Sensor Data',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              height: 15,
              color: Color(MyColors().primary),
              thickness: 2,
            ),
            SizedBox(height: 16),
            ...sensorData.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  '${entry.key.replaceAll('_', ' ').toUpperCase()}: ${entry.value}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
