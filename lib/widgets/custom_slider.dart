import 'package:flutter/material.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({Key key}) : super(key: key);

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget>
    with SingleTickerProviderStateMixin {
  double _currentSliderValue = 0;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: Duration(seconds: 3),
    );
    _controller.forward();
    _controller.addListener(() {
      setState(() {
        _currentSliderValue = _controller.value;
        print(_currentSliderValue);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 5,
        child: SliderTheme(
          data: SliderThemeData(
              trackHeight: 0.001,
              activeTrackColor: Colors.orange,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
          // ignore: missing_required_param
          child: Slider(
            value: _currentSliderValue,
            min: 0,
            max: 1,
            divisions: 10,
          ),
        ),
      ),
    );
  }
}
