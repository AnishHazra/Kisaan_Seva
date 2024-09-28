import 'package:flutter/material.dart';
import 'package:kisaan_seva/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FarmControlPanelWidget extends StatefulWidget {
  const FarmControlPanelWidget({super.key});

  @override
  _FarmControlPanelWidgetState createState() => _FarmControlPanelWidgetState();
}

class _FarmControlPanelWidgetState extends State<FarmControlPanelWidget> {
  bool autoIrrigation = true;
  bool moistureAlert = false;
  bool nutrientAlert = true;

  Widget _buildControlPanel(
      {required String title, required List<Widget> children}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(title,
          //     style:
          //         const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          // const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }

  Widget _buildToggleSwitch(
      {required String label,
      required bool value,
      required Function(bool) onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Theme.of(context).lightGreen,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.5.h),
      child: Column(
        children: [
          const Text(
            "Irrigation Control",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          _buildControlPanel(
            title: 'IRRIGATION CONTROL',
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '68%',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Moisture Content',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('Alert level: 75%',
                          style: TextStyle(color: Colors.red, fontSize: 12)),
                    ],
                  ),
                ],
              ),
              _buildToggleSwitch(
                label: 'AUTO IRRIGATION',
                value: autoIrrigation,
                onChanged: (value) => setState(() => autoIrrigation = value),
              ),
              _buildToggleSwitch(
                label: 'MOISTURE ALERT',
                value: moistureAlert,
                onChanged: (value) => setState(() => moistureAlert = value),
              ),
            ],
          ),
          const Text(
            "Nutrient Control",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          _buildControlPanel(
            title: 'NUTRIENT CONTROL',
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text('6.8 : 6.8 : 6.8',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text(
                    'Nutrient Content',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "N P K",
                    style: TextStyle(
                      fontSize: 17.sp,
                      letterSpacing: 20,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Alert at max 9%',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              _buildToggleSwitch(
                label: 'NUTRIENT DEFICIENCY ALERT',
                value: nutrientAlert,
                onChanged: (value) => setState(() => nutrientAlert = value),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
