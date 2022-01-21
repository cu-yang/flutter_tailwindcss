import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss/core/tw_font/logic.dart';

export 'package:flutter_tailwindcss/core/tw_font/logic.dart';

/// https://tailwindcss.com/docs/font-family
class TwText extends StatelessWidget {
  const TwText(this.text, {Key? key, required this.className})
      : super(key: key);

  final String text;

  final List<TwFont> className;

  TextStyle _getStyles() {
    TextStyle _style = const TextStyle();

    for (var element in className) {
      _style = _style.merge(element.style);
    }

    return _style;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyles(),
    );
  }
}
