import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(1.8.h),
      color: Colors.lightBlue[50],
      child: Padding(
        padding: EdgeInsets.all(2.5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      'Palakkad IN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '29°',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Icon(Icons.wb_sunny, size: 6.h, color: Colors.yellow),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Sunny',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.water_drop, size: 16, color: Colors.blue),
                    Text('62%'),
                    SizedBox(width: 8),
                    Icon(Icons.air, size: 16, color: Colors.grey),
                    Text('5km/h'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
