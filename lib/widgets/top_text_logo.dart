import 'package:flutter/cupertino.dart';

class TopTextLogo extends StatelessWidget {
  const TopTextLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: MediaQuery.of(context).size.width * 0.5,
      image: AssetImage('assets/images/logo_text.png'),
    );
  }
}
