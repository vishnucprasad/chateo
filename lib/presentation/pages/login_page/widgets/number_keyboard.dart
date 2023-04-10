import 'package:chateo/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class NumberKeyboard extends StatelessWidget {
  final ValueChanged<String> onKeyPressed;

  const NumberKeyboard({super.key, required this.onKeyPressed});

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;

    return Container(
      color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey("1"),
              buildKey("2"),
              buildKey("3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey("4"),
              buildKey("5"),
              buildKey("6"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey("7"),
              buildKey("8"),
              buildKey("9"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(""),
              buildKey("0"),
              SizedBox(
                height: 75,
                width: 75,
                child: MaterialButton(
                  onPressed: () {
                    onKeyPressed("");
                  },
                  child: const Icon(
                    Icons.backspace_outlined,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildKey(String key) {
    return SizedBox(
      height: 75,
      width: 75,
      child: MaterialButton(
        onPressed: () {
          onKeyPressed(key);
        },
        child: Text(
          key,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
