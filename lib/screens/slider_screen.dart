import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Slider.adaptive(
                min: 50,
                max: 350,
                activeColor: AppTheme.primary,
                // divisions: 10,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? ((value) {
                        _sliderValue = value;
                        setState(() {});
                      })
                    : null),
            Text(_sliderValue.round().toString()),
            const SizedBox(height: 20),

            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   }
            // ),

            CheckboxListTile(
                value: _sliderEnabled,
                title: const Text('Habilitar slider'),
                activeColor: AppTheme.primary,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),

            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),

            const AboutListTile(
              
            ),


            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/esstarwars/images/e/e8/FOStormtrooper-Fathead.png/revision/latest?cb=20170805081327'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
