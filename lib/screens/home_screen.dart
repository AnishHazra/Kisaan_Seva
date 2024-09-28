import 'package:flutter/material.dart';
import 'package:kisaan_seva/main.dart';
import 'package:kisaan_seva/widgets/agri_service_widget.dart';
import 'package:kisaan_seva/widgets/farm_control_panel_widget.dart';
import 'package:kisaan_seva/widgets/weather_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).darkGreen,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WeatherWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Text(
                    'Agri Service',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AgriServiceWidget(
                        icon: Icons.science, label: 'Soil Testing'),
                    AgriServiceWidget(
                        icon: Icons.agriculture, label: 'Machinery'),
                    AgriServiceWidget(
                        icon: Icons.water_drop, label: 'Water Testing'),
                    AgriServiceWidget(icon: Icons.build, label: 'Tubewell'),
                  ],
                ),
              ],
            ),
            const FarmControlPanelWidget(),
          ],
        ),
      ),
    );
  }
}
